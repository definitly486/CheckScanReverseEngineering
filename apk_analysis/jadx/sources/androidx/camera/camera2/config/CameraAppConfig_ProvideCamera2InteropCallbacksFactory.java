package androidx.camera.camera2.config;

import androidx.camera.camera2.impl.CameraInteropStateCallbackRepository;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraAppConfig_ProvideCamera2InteropCallbacksFactory implements xs6 {
    private final CameraAppConfig module;

    private CameraAppConfig_ProvideCamera2InteropCallbacksFactory(CameraAppConfig cameraAppConfig) {
        this.module = cameraAppConfig;
    }

    public static CameraAppConfig_ProvideCamera2InteropCallbacksFactory create(CameraAppConfig cameraAppConfig) {
        return new CameraAppConfig_ProvideCamera2InteropCallbacksFactory(cameraAppConfig);
    }

    public static CameraInteropStateCallbackRepository provideCamera2InteropCallbacks(CameraAppConfig cameraAppConfig) {
        CameraInteropStateCallbackRepository cameraInteropStateCallbackRepositoryProvideCamera2InteropCallbacks = cameraAppConfig.provideCamera2InteropCallbacks();
        te6.b(cameraInteropStateCallbackRepositoryProvideCamera2InteropCallbacks);
        return cameraInteropStateCallbackRepositoryProvideCamera2InteropCallbacks;
    }

    @Override // defpackage.ws6
    public CameraInteropStateCallbackRepository get() {
        return provideCamera2InteropCallbacks(this.module);
    }
}
