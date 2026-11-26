package androidx.camera.camera2.adapter;

import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.SessionProcessor;
import androidx.media3.muxer.WebmConstants;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.ht;
import defpackage.j59;
import defpackage.kt;
import defpackage.l2;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class CameraInternalAdapter implements CameraInternal {
    private final CameraControlInternal cameraController;
    private final String cameraId;
    private final CameraInfoInternal cameraInfo;
    private final CameraStateAdapter cameraStateAdapter;
    private CameraConfig coreCameraConfig;
    private final int debugId;
    private final ht isRemoved;
    private SessionProcessor sessionProcessor;
    private final UseCaseThreads threads;
    private final UseCaseManager useCaseManager;

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CameraInternalAdapter$onRemoved$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.adapter.CameraInternalAdapter$onRemoved$2", f = "CameraInternalAdapter.kt", l = {WebmConstants.MkvEbmlElement.BLOCK}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CameraInternalAdapter.this.new AnonymousClass2(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                CameraInternalAdapter.this.cameraStateAdapter.onRemoved();
                UseCaseManager useCaseManager = CameraInternalAdapter.this.useCaseManager;
                this.label = 1;
                if (useCaseManager.close(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.CameraInternalAdapter$release$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.adapter.CameraInternalAdapter$release$1", f = "CameraInternalAdapter.kt", l = {96}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CameraInternalAdapter.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                UseCaseManager useCaseManager = CameraInternalAdapter.this.useCaseManager;
                this.label = 1;
                if (useCaseManager.close(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            z22.b(CameraInternalAdapter.this.threads.getScope(), null);
            return j59.a;
        }
    }

    public CameraInternalAdapter(androidx.camera.camera2.config.CameraConfig cameraConfig, UseCaseManager useCaseManager, CameraInfoInternal cameraInfoInternal, CameraControlInternal cameraControlInternal, UseCaseThreads useCaseThreads, CameraStateAdapter cameraStateAdapter) {
        cameraConfig.getClass();
        useCaseManager.getClass();
        cameraInfoInternal.getClass();
        cameraControlInternal.getClass();
        useCaseThreads.getClass();
        cameraStateAdapter.getClass();
        this.useCaseManager = useCaseManager;
        this.cameraInfo = cameraInfoInternal;
        this.cameraController = cameraControlInternal;
        this.threads = useCaseThreads;
        this.cameraStateAdapter = cameraStateAdapter;
        this.cameraId = cameraConfig.m39getCameraIdDz_R5H8();
        CameraConfig cameraConfigDefaultConfig = CameraConfigs.defaultConfig();
        cameraConfigDefaultConfig.getClass();
        this.coreCameraConfig = cameraConfigDefaultConfig;
        this.debugId = CameraInternalAdapterKt.getCameraAdapterIds().b();
        this.isRemoved = kt.a(false);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Created " + this + " for " + ((Object) CameraId.m357toStringimpl(this.cameraId)));
        }
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void attachUseCases(Collection<UseCase> collection) {
        collection.getClass();
        this.useCaseManager.attach(qn1.t0(collection));
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void close() {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, this + "#close");
        }
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void detachUseCases(Collection<UseCase> collection) {
        collection.getClass();
        this.useCaseManager.detach(qn1.t0(collection));
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public CameraControlInternal getCameraControlInternal() {
        return this.cameraController;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public CameraInfoInternal getCameraInfoInternal() {
        return this.cameraInfo;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public Observable<CameraInternal.State> getCameraState() {
        return this.cameraStateAdapter.getCameraInternalState$camera_camera2();
    }

    public final CameraGraph.Config getDeferredCameraGraphConfig$camera_camera2() {
        return this.useCaseManager.getDeferredCameraGraphConfig$camera_camera2();
    }

    @Override // androidx.camera.core.impl.CameraInternal, androidx.camera.core.Camera
    public CameraConfig getExtendedConfig() {
        return this.coreCameraConfig;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public boolean isRemoved() {
        return this.isRemoved.b();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void onRemoved() {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, this + " received removed signal. Cleaning up.");
        }
        if (this.isRemoved.a()) {
            av0.c(this.threads.getScope(), null, null, new AnonymousClass2(null), 3);
        }
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseActive(UseCase useCase) {
        useCase.getClass();
        this.useCaseManager.activate(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseInactive(UseCase useCase) {
        useCase.getClass();
        this.useCaseManager.deactivate(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseReset(UseCase useCase) {
        useCase.getClass();
        this.useCaseManager.reset(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseUpdated(UseCase useCase) {
        useCase.getClass();
        this.useCaseManager.update(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void open() {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, this + "#open");
        }
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public ListenableFuture<Void> release() {
        return CoroutineAdaptersKt.asListenableFuture$default(av0.c(this.threads.getScope(), null, null, new AnonymousClass1(null), 3), (Object) null, 1, (Object) null);
    }

    public final void resumeDeferredCameraGraphCreation$camera_camera2(CameraGraph cameraGraph) {
        cameraGraph.getClass();
        this.useCaseManager.resumeDeferredComponentCreation$camera_camera2(cameraGraph);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setActiveResumingMode(boolean z) {
        this.useCaseManager.setActiveResumeMode(z);
    }

    public final void setCameraGraphCreationMode$camera_camera2(boolean z) {
        this.useCaseManager.setCameraGraphCreationMode$camera_camera2(z);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setExtendedConfig(CameraConfig cameraConfig) {
        CameraConfig cameraConfigDefaultConfig;
        if (cameraConfig == null) {
            cameraConfigDefaultConfig = CameraConfigs.defaultConfig();
            cameraConfigDefaultConfig.getClass();
        } else {
            cameraConfigDefaultConfig = cameraConfig;
        }
        this.coreCameraConfig = cameraConfigDefaultConfig;
        SessionProcessor sessionProcessor = cameraConfig != null ? cameraConfig.getSessionProcessor(null) : null;
        this.sessionProcessor = sessionProcessor;
        this.useCaseManager.setSessionProcessor$camera_camera2(sessionProcessor);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setPrimary(boolean z) {
        this.useCaseManager.setPrimary(z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CameraInternalAdapter<");
        sb.append((Object) CameraId.m357toStringimpl(this.cameraId));
        sb.append('(');
        return l2.e(sb, ")>", this.debugId);
    }
}
