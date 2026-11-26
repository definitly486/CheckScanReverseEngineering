package androidx.camera.lifecycle;

import androidx.camera.core.Camera;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.RotationProvider;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.camera.lifecycle.LifecycleCamera;
import androidx.core.util.Preconditions;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LifecycleCamera implements LifecycleObserver, Camera {
    private final CameraUseCaseAdapter mCameraUseCaseAdapter;
    private final LifecycleOwner mLifecycleOwner;
    private final RotationProvider mRotationProvider;
    private final Object mLock = new Object();
    private volatile boolean mIsActive = false;
    private boolean mSuspended = false;
    private boolean mReleased = false;
    private SessionConfig mBoundSessionConfig = null;

    public LifecycleCamera(LifecycleOwner lifecycleOwner, CameraUseCaseAdapter cameraUseCaseAdapter, RotationProvider rotationProvider) {
        this.mLifecycleOwner = lifecycleOwner;
        this.mCameraUseCaseAdapter = cameraUseCaseAdapter;
        this.mRotationProvider = rotationProvider;
        if (lifecycleOwner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            cameraUseCaseAdapter.attachUseCases();
        } else {
            cameraUseCaseAdapter.detachUseCases();
        }
        lifecycleOwner.getLifecycle().addObserver(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$bind$0(ResolvedFeatureGroup resolvedFeatureGroup, SessionConfig sessionConfig) {
        HashSet hashSet = new HashSet();
        if (resolvedFeatureGroup != null) {
            hashSet.addAll(resolvedFeatureGroup.getFeatures());
        }
        sessionConfig.getFeatureSelectionListener().accept(hashSet);
    }

    private void updateUseCasesRotationProvider(List<UseCase> list, RotationProvider rotationProvider) {
        for (UseCase useCase : list) {
            if (useCase.isAutoRotationSupported()) {
                useCase.setRotationProvider(rotationProvider);
            }
        }
    }

    public void bind(final SessionConfig sessionConfig) {
        synchronized (this.mLock) {
            try {
                if (this.mBoundSessionConfig == null) {
                    this.mBoundSessionConfig = sessionConfig;
                } else {
                    boolean zIsLegacy = sessionConfig.isLegacy();
                    SessionConfig sessionConfig2 = this.mBoundSessionConfig;
                    if (zIsLegacy) {
                        if (!sessionConfig2.isLegacy()) {
                            throw new IllegalStateException("Cannot bind use cases when a SessionConfig is already bound to this LifecycleOwner. Please unbind first");
                        }
                        ArrayList arrayList = new ArrayList(this.mBoundSessionConfig.getUseCases());
                        arrayList.addAll(sessionConfig.getUseCases());
                        this.mBoundSessionConfig = new LegacySessionConfig(arrayList, sessionConfig.getViewPort(), sessionConfig.getEffects());
                    } else {
                        if (sessionConfig2.isLegacy()) {
                            throw new IllegalStateException("Cannot bind the SessionConfig when use cases are bound to this LifecycleOwner already. Please unbind first");
                        }
                        this.mBoundSessionConfig = sessionConfig;
                        CameraUseCaseAdapter cameraUseCaseAdapter = this.mCameraUseCaseAdapter;
                        cameraUseCaseAdapter.removeUseCases(cameraUseCaseAdapter.getUseCases());
                    }
                }
                this.mCameraUseCaseAdapter.setViewPort(sessionConfig.getViewPort());
                this.mCameraUseCaseAdapter.setEffects(sessionConfig.getEffects());
                this.mCameraUseCaseAdapter.setSessionType(sessionConfig.getSessionType());
                this.mCameraUseCaseAdapter.setFrameRate(sessionConfig.getFrameRateRange());
                if (sessionConfig.isAutoRotationEnabled()) {
                    updateUseCasesRotationProvider(sessionConfig.getUseCases(), this.mRotationProvider);
                }
                final ResolvedFeatureGroup resolvedFeatureGroupResolveFeatureGroup = ResolvedFeatureGroup.resolveFeatureGroup(sessionConfig, (CameraInfoInternal) getCameraInfo());
                sessionConfig.getFeatureSelectionListenerExecutor().execute(new Runnable() { // from class: zo4
                    @Override // java.lang.Runnable
                    public final void run() {
                        LifecycleCamera.lambda$bind$0(resolvedFeatureGroupResolveFeatureGroup, sessionConfig);
                    }
                });
                this.mCameraUseCaseAdapter.addUseCases(sessionConfig.getUseCases(), resolvedFeatureGroupResolveFeatureGroup);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public SessionConfig getBoundSessionConfig() {
        SessionConfig sessionConfig;
        synchronized (this.mLock) {
            sessionConfig = this.mBoundSessionConfig;
        }
        return sessionConfig;
    }

    @Override // androidx.camera.core.Camera
    public CameraControl getCameraControl() {
        return this.mCameraUseCaseAdapter.getCameraControl();
    }

    @Override // androidx.camera.core.Camera
    public CameraInfo getCameraInfo() {
        return this.mCameraUseCaseAdapter.getCameraInfo();
    }

    public CameraUseCaseAdapter getCameraUseCaseAdapter() {
        return this.mCameraUseCaseAdapter;
    }

    @Override // androidx.camera.core.Camera
    public CameraConfig getExtendedConfig() {
        return this.mCameraUseCaseAdapter.getExtendedConfig();
    }

    public LifecycleOwner getLifecycleOwner() {
        LifecycleOwner lifecycleOwner;
        synchronized (this.mLock) {
            lifecycleOwner = this.mLifecycleOwner;
        }
        return lifecycleOwner;
    }

    public CameraInfo getSecondaryCameraInfo() {
        return this.mCameraUseCaseAdapter.getSecondaryCameraInfo();
    }

    public List<UseCase> getUseCases() {
        List<UseCase> listUnmodifiableList;
        synchronized (this.mLock) {
            listUnmodifiableList = Collections.unmodifiableList(this.mCameraUseCaseAdapter.getUseCases());
        }
        return listUnmodifiableList;
    }

    public boolean isActive() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mIsActive;
        }
        return z;
    }

    public boolean isBound(SessionConfig sessionConfig) {
        boolean z = true;
        Preconditions.checkState(!sessionConfig.isLegacy());
        synchronized (this.mLock) {
            if (this.mBoundSessionConfig != sessionConfig) {
                z = false;
            }
        }
        return z;
    }

    public boolean isLegacySessionConfigBound() {
        boolean zIsLegacy;
        synchronized (this.mLock) {
            SessionConfig sessionConfig = this.mBoundSessionConfig;
            zIsLegacy = sessionConfig == null ? false : sessionConfig.isLegacy();
        }
        return zIsLegacy;
    }

    @Override // androidx.camera.core.Camera
    public boolean isUseCasesCombinationSupported(boolean z, UseCase... useCaseArr) {
        return this.mCameraUseCaseAdapter.isUseCasesCombinationSupported(z, useCaseArr);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            CameraUseCaseAdapter cameraUseCaseAdapter = this.mCameraUseCaseAdapter;
            cameraUseCaseAdapter.removeUseCases(cameraUseCaseAdapter.getUseCases());
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause(LifecycleOwner lifecycleOwner) {
        this.mCameraUseCaseAdapter.setActiveResumingMode(false);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume(LifecycleOwner lifecycleOwner) {
        this.mCameraUseCaseAdapter.setActiveResumingMode(true);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                if (!this.mSuspended && !this.mReleased) {
                    this.mCameraUseCaseAdapter.attachUseCases();
                    this.mIsActive = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop(LifecycleOwner lifecycleOwner) {
        synchronized (this.mLock) {
            try {
                if (!this.mSuspended && !this.mReleased) {
                    this.mCameraUseCaseAdapter.detachUseCases();
                    this.mIsActive = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void release() {
        synchronized (this.mLock) {
            this.mReleased = true;
            this.mIsActive = false;
            this.mLifecycleOwner.getLifecycle().removeObserver(this);
        }
    }

    public void suspend() {
        synchronized (this.mLock) {
            try {
                if (this.mSuspended) {
                    return;
                }
                onStop(this.mLifecycleOwner);
                this.mSuspended = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unbind(SessionConfig sessionConfig) {
        synchronized (this.mLock) {
            try {
                SessionConfig sessionConfig2 = this.mBoundSessionConfig;
                if (sessionConfig2 != null && sessionConfig2.isLegacy() == sessionConfig.isLegacy()) {
                    if (this.mBoundSessionConfig.isLegacy() || sessionConfig.isLegacy()) {
                        if (this.mBoundSessionConfig.isLegacy() && sessionConfig.isLegacy()) {
                            ArrayList arrayList = new ArrayList(this.mBoundSessionConfig.getUseCases());
                            arrayList.removeAll(sessionConfig.getUseCases());
                            this.mBoundSessionConfig = arrayList.isEmpty() ? null : new LegacySessionConfig(arrayList, this.mBoundSessionConfig.getViewPort(), this.mBoundSessionConfig.getEffects());
                        }
                    } else if (this.mBoundSessionConfig != sessionConfig) {
                        return;
                    } else {
                        this.mBoundSessionConfig = null;
                    }
                    ArrayList arrayList2 = new ArrayList(sessionConfig.getUseCases());
                    arrayList2.retainAll(this.mCameraUseCaseAdapter.getUseCases());
                    this.mCameraUseCaseAdapter.removeUseCases(arrayList2);
                    updateUseCasesRotationProvider(arrayList2, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unbindAll() {
        synchronized (this.mLock) {
            List<UseCase> useCases = this.mCameraUseCaseAdapter.getUseCases();
            this.mCameraUseCaseAdapter.removeUseCases(useCases);
            updateUseCasesRotationProvider(useCases, null);
            this.mBoundSessionConfig = null;
        }
    }

    public void unsuspend() {
        synchronized (this.mLock) {
            try {
                if (this.mSuspended) {
                    this.mSuspended = false;
                    if (this.mLifecycleOwner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
                        onStart(this.mLifecycleOwner);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isBound(UseCase useCase) {
        boolean zContains;
        synchronized (this.mLock) {
            zContains = this.mCameraUseCaseAdapter.getUseCases().contains(useCase);
        }
        return zContains;
    }
}
