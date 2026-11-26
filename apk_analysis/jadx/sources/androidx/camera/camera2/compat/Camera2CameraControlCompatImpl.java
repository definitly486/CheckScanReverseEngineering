package androidx.camera.camera2.compat;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.ComboRequestListenerKt;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.CameraControl;
import androidx.camera.core.impl.Config;
import defpackage.j59;
import defpackage.mk2;
import defpackage.xp1;
import defpackage.yp1;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class Camera2CameraControlCompatImpl implements Camera2CameraControlCompat {
    private xp1<Void> pendingSignal;
    private xp1<Void> updateSignal;
    private final Object lock = new Object();
    private final Object updateSignalLock = new Object();
    private Camera2ImplConfig.Builder configBuilder = new Camera2ImplConfig.Builder();

    private final xp1<Void> cancelSignal(xp1<Void> xp1Var, String str) {
        xp1Var.e(new CameraControl.OperationCanceledException(str));
        return xp1Var;
    }

    public static /* synthetic */ xp1 cancelSignal$default(Camera2CameraControlCompatImpl camera2CameraControlCompatImpl, xp1 xp1Var, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "Camera2CameraControl was updated with new options.";
        }
        return camera2CameraControlCompatImpl.cancelSignal(xp1Var, str);
    }

    @Override // androidx.camera.camera2.compat.Camera2CameraControlCompat
    public void addRequestOption(CaptureRequestOptions captureRequestOptions) {
        captureRequestOptions.getClass();
        synchronized (this.lock) {
            try {
                for (Config.Option<?> option : captureRequestOptions.listOptions()) {
                    option.getClass();
                    this.configBuilder.getMutableConfig().insertOption(option, Config.OptionPriority.ALWAYS_OVERRIDE, captureRequestOptions.retrieveOption(option));
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.compat.Camera2CameraControlCompat
    public mk2<Void> applyAsync(UseCaseCameraRequestControl useCaseCameraRequestControl, boolean z) {
        Camera2ImplConfig camera2ImplConfigBuild;
        yp1 yp1Var = new yp1();
        synchronized (this.lock) {
            camera2ImplConfigBuild = this.configBuilder.build();
        }
        synchronized (this.updateSignalLock) {
            try {
                if (useCaseCameraRequestControl != null) {
                    xp1<Void> xp1Var = this.updateSignal;
                    if (z) {
                        if (xp1Var != null) {
                            cancelSignal$default(this, xp1Var, null, 1, null);
                        }
                    } else if (xp1Var != null) {
                        CoroutineAdaptersKt.propagateTo(yp1Var, xp1Var);
                    }
                    this.updateSignal = yp1Var;
                    Map<String, ? extends Object> mapSingletonMap = Collections.singletonMap("Camera2CameraControl.tag", Integer.valueOf(yp1Var.hashCode()));
                    mapSingletonMap.getClass();
                    useCaseCameraRequestControl.updateCamera2ConfigAsync(camera2ImplConfigBuild, mapSingletonMap);
                } else {
                    xp1<Void> xp1Var2 = this.pendingSignal;
                    if (xp1Var2 != null) {
                        cancelSignal$default(this, xp1Var2, null, 1, null);
                    }
                    this.pendingSignal = yp1Var;
                    j59 j59Var = j59.a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return yp1Var;
    }

    @Override // androidx.camera.camera2.compat.Camera2CameraControlCompat
    public void cancelCurrentTask() {
        synchronized (this.updateSignalLock) {
            try {
                xp1<Void> xp1Var = this.updateSignal;
                if (xp1Var != null) {
                    this.updateSignal = null;
                    cancelSignal(xp1Var, "The camera control has became inactive.");
                }
                xp1<Void> xp1Var2 = this.pendingSignal;
                if (xp1Var2 != null) {
                    this.pendingSignal = null;
                    cancelSignal(xp1Var2, "The camera control has became inactive.");
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.compat.Camera2CameraControlCompat
    public void clearRequestOption() {
        synchronized (this.lock) {
            this.configBuilder = new Camera2ImplConfig.Builder();
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.camera.camera2.compat.Camera2CameraControlCompat
    public CaptureRequestOptions getRequestOption() {
        CaptureRequestOptions captureRequestOptionsBuild;
        synchronized (this.lock) {
            captureRequestOptionsBuild = CaptureRequestOptions.Builder.Companion.from(this.configBuilder.build()).build();
        }
        return captureRequestOptionsBuild;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onComplete-CcXjc1I */
    public void mo9onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        requestMetadata.getClass();
        frameInfo.getClass();
        synchronized (this.updateSignalLock) {
            try {
                xp1<Void> xp1Var = this.updateSignal;
                if (xp1Var != null && ComboRequestListenerKt.containsTag(requestMetadata, "Camera2CameraControl.tag", Integer.valueOf(xp1Var.hashCode()))) {
                    xp1Var.f(null);
                    this.updateSignal = null;
                    xp1<Void> xp1Var2 = this.pendingSignal;
                    if (xp1Var2 != null) {
                        xp1Var2.f(null);
                        this.pendingSignal = null;
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
