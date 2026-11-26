package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class RetryingCameraStateOpenerImpl_Factory implements xs6 {
    private final xs6<AudioRestrictionController> audioRestrictionControllerProvider;
    private final xs6<CameraAvailabilityMonitor> cameraAvailabilityMonitorProvider;
    private final xs6<CameraErrorListener> cameraErrorListenerProvider;
    private final xs6<CameraPipe.CameraInteropConfig> cameraInteropConfigProvider;
    private final xs6<CameraStateOpener> cameraStateOpenerProvider;
    private final xs6<DevicePolicyManagerWrapper> devicePolicyManagerProvider;
    private final xs6<Threads> threadsProvider;
    private final xs6<TimeSource> timeSourceProvider;

    private RetryingCameraStateOpenerImpl_Factory(xs6<CameraStateOpener> xs6Var, xs6<CameraErrorListener> xs6Var2, xs6<CameraAvailabilityMonitor> xs6Var3, xs6<TimeSource> xs6Var4, xs6<DevicePolicyManagerWrapper> xs6Var5, xs6<AudioRestrictionController> xs6Var6, xs6<CameraPipe.CameraInteropConfig> xs6Var7, xs6<Threads> xs6Var8) {
        this.cameraStateOpenerProvider = xs6Var;
        this.cameraErrorListenerProvider = xs6Var2;
        this.cameraAvailabilityMonitorProvider = xs6Var3;
        this.timeSourceProvider = xs6Var4;
        this.devicePolicyManagerProvider = xs6Var5;
        this.audioRestrictionControllerProvider = xs6Var6;
        this.cameraInteropConfigProvider = xs6Var7;
        this.threadsProvider = xs6Var8;
    }

    public static RetryingCameraStateOpenerImpl_Factory create(xs6<CameraStateOpener> xs6Var, xs6<CameraErrorListener> xs6Var2, xs6<CameraAvailabilityMonitor> xs6Var3, xs6<TimeSource> xs6Var4, xs6<DevicePolicyManagerWrapper> xs6Var5, xs6<AudioRestrictionController> xs6Var6, xs6<CameraPipe.CameraInteropConfig> xs6Var7, xs6<Threads> xs6Var8) {
        return new RetryingCameraStateOpenerImpl_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7, xs6Var8);
    }

    public static RetryingCameraStateOpenerImpl newInstance(CameraStateOpener cameraStateOpener, CameraErrorListener cameraErrorListener, CameraAvailabilityMonitor cameraAvailabilityMonitor, TimeSource timeSource, DevicePolicyManagerWrapper devicePolicyManagerWrapper, AudioRestrictionController audioRestrictionController, CameraPipe.CameraInteropConfig cameraInteropConfig, Threads threads) {
        return new RetryingCameraStateOpenerImpl(cameraStateOpener, cameraErrorListener, cameraAvailabilityMonitor, timeSource, devicePolicyManagerWrapper, audioRestrictionController, cameraInteropConfig, threads);
    }

    @Override // defpackage.ws6
    public RetryingCameraStateOpenerImpl get() {
        return newInstance(this.cameraStateOpenerProvider.get(), this.cameraErrorListenerProvider.get(), this.cameraAvailabilityMonitorProvider.get(), this.timeSourceProvider.get(), this.devicePolicyManagerProvider.get(), this.audioRestrictionControllerProvider.get(), this.cameraInteropConfigProvider.get(), this.threadsProvider.get());
    }
}
