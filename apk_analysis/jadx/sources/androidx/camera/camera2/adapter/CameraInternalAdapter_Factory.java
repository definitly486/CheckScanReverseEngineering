package androidx.camera.camera2.adapter;

import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraInternalAdapter_Factory implements xs6 {
    private final xs6<CameraControlInternal> cameraControllerProvider;
    private final xs6<CameraInfoInternal> cameraInfoProvider;
    private final xs6<CameraStateAdapter> cameraStateAdapterProvider;
    private final xs6<CameraConfig> configProvider;
    private final xs6<UseCaseThreads> threadsProvider;
    private final xs6<UseCaseManager> useCaseManagerProvider;

    private CameraInternalAdapter_Factory(xs6<CameraConfig> xs6Var, xs6<UseCaseManager> xs6Var2, xs6<CameraInfoInternal> xs6Var3, xs6<CameraControlInternal> xs6Var4, xs6<UseCaseThreads> xs6Var5, xs6<CameraStateAdapter> xs6Var6) {
        this.configProvider = xs6Var;
        this.useCaseManagerProvider = xs6Var2;
        this.cameraInfoProvider = xs6Var3;
        this.cameraControllerProvider = xs6Var4;
        this.threadsProvider = xs6Var5;
        this.cameraStateAdapterProvider = xs6Var6;
    }

    public static CameraInternalAdapter_Factory create(xs6<CameraConfig> xs6Var, xs6<UseCaseManager> xs6Var2, xs6<CameraInfoInternal> xs6Var3, xs6<CameraControlInternal> xs6Var4, xs6<UseCaseThreads> xs6Var5, xs6<CameraStateAdapter> xs6Var6) {
        return new CameraInternalAdapter_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6);
    }

    public static CameraInternalAdapter newInstance(CameraConfig cameraConfig, UseCaseManager useCaseManager, CameraInfoInternal cameraInfoInternal, CameraControlInternal cameraControlInternal, UseCaseThreads useCaseThreads, CameraStateAdapter cameraStateAdapter) {
        return new CameraInternalAdapter(cameraConfig, useCaseManager, cameraInfoInternal, cameraControlInternal, useCaseThreads, cameraStateAdapter);
    }

    @Override // defpackage.ws6
    public CameraInternalAdapter get() {
        return newInstance(this.configProvider.get(), this.useCaseManagerProvider.get(), this.cameraInfoProvider.get(), this.cameraControllerProvider.get(), this.threadsProvider.get(), this.cameraStateAdapterProvider.get());
    }
}
