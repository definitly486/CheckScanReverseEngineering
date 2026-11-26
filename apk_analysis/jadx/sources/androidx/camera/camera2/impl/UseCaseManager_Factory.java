package androidx.camera.camera2.impl;

import android.content.Context;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.config.UseCaseCameraComponent;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import defpackage.ws6;
import defpackage.xs6;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseManager_Factory implements xs6 {
    private final xs6<UseCaseCameraComponent.Builder> builderProvider;
    private final xs6<Camera2CameraControl> camera2CameraControlProvider;
    private final xs6<CameraCoordinator> cameraCoordinatorProvider;
    private final xs6<CameraGraphConfigProvider> cameraGraphConfigProvider;
    private final xs6<CameraInfoInternal> cameraInfoInternalProvider;
    private final xs6<CameraInternal> cameraInternalProvider;
    private final xs6<CameraPipe> cameraPipeProvider;
    private final xs6<CameraProperties> cameraPropertiesProvider;
    private final xs6<CameraStateAdapter> cameraStateAdapterProvider;
    private final xs6<CameraXConfig> cameraXConfigProvider;
    private final xs6<Context> contextProvider;
    private final xs6<Set<UseCaseCameraControl>> controlsProvider;
    private final xs6<DisplayInfoManager> displayInfoManagerProvider;
    private final xs6<EncoderProfilesProvider> encoderProfilesProvider;
    private final xs6<LowLightBoostControl> lowLightBoostControlProvider;
    private final xs6<UseCaseThreads> useCaseThreadsProvider;
    private final xs6<ZslControl> zslControlProvider;

    private UseCaseManager_Factory(xs6<CameraPipe> xs6Var, xs6<CameraCoordinator> xs6Var2, xs6<UseCaseCameraComponent.Builder> xs6Var3, xs6<ZslControl> xs6Var4, xs6<LowLightBoostControl> xs6Var5, xs6<Set<UseCaseCameraControl>> xs6Var6, xs6<Camera2CameraControl> xs6Var7, xs6<CameraStateAdapter> xs6Var8, xs6<CameraInternal> xs6Var9, xs6<UseCaseThreads> xs6Var10, xs6<CameraInfoInternal> xs6Var11, xs6<EncoderProfilesProvider> xs6Var12, xs6<CameraProperties> xs6Var13, xs6<CameraXConfig> xs6Var14, xs6<CameraGraphConfigProvider> xs6Var15, xs6<Context> xs6Var16, xs6<DisplayInfoManager> xs6Var17) {
        this.cameraPipeProvider = xs6Var;
        this.cameraCoordinatorProvider = xs6Var2;
        this.builderProvider = xs6Var3;
        this.zslControlProvider = xs6Var4;
        this.lowLightBoostControlProvider = xs6Var5;
        this.controlsProvider = xs6Var6;
        this.camera2CameraControlProvider = xs6Var7;
        this.cameraStateAdapterProvider = xs6Var8;
        this.cameraInternalProvider = xs6Var9;
        this.useCaseThreadsProvider = xs6Var10;
        this.cameraInfoInternalProvider = xs6Var11;
        this.encoderProfilesProvider = xs6Var12;
        this.cameraPropertiesProvider = xs6Var13;
        this.cameraXConfigProvider = xs6Var14;
        this.cameraGraphConfigProvider = xs6Var15;
        this.contextProvider = xs6Var16;
        this.displayInfoManagerProvider = xs6Var17;
    }

    public static UseCaseManager_Factory create(xs6<CameraPipe> xs6Var, xs6<CameraCoordinator> xs6Var2, xs6<UseCaseCameraComponent.Builder> xs6Var3, xs6<ZslControl> xs6Var4, xs6<LowLightBoostControl> xs6Var5, xs6<Set<UseCaseCameraControl>> xs6Var6, xs6<Camera2CameraControl> xs6Var7, xs6<CameraStateAdapter> xs6Var8, xs6<CameraInternal> xs6Var9, xs6<UseCaseThreads> xs6Var10, xs6<CameraInfoInternal> xs6Var11, xs6<EncoderProfilesProvider> xs6Var12, xs6<CameraProperties> xs6Var13, xs6<CameraXConfig> xs6Var14, xs6<CameraGraphConfigProvider> xs6Var15, xs6<Context> xs6Var16, xs6<DisplayInfoManager> xs6Var17) {
        return new UseCaseManager_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7, xs6Var8, xs6Var9, xs6Var10, xs6Var11, xs6Var12, xs6Var13, xs6Var14, xs6Var15, xs6Var16, xs6Var17);
    }

    public static UseCaseManager newInstance(CameraPipe cameraPipe, CameraCoordinator cameraCoordinator, UseCaseCameraComponent.Builder builder, ZslControl zslControl, LowLightBoostControl lowLightBoostControl, Set<UseCaseCameraControl> set, Camera2CameraControl camera2CameraControl, CameraStateAdapter cameraStateAdapter, ws6<CameraInternal> ws6Var, ws6<UseCaseThreads> ws6Var2, ws6<CameraInfoInternal> ws6Var3, EncoderProfilesProvider encoderProfilesProvider, CameraProperties cameraProperties, CameraXConfig cameraXConfig, CameraGraphConfigProvider cameraGraphConfigProvider, Context context, DisplayInfoManager displayInfoManager) {
        return new UseCaseManager(cameraPipe, cameraCoordinator, builder, zslControl, lowLightBoostControl, set, camera2CameraControl, cameraStateAdapter, ws6Var, ws6Var2, ws6Var3, encoderProfilesProvider, cameraProperties, cameraXConfig, cameraGraphConfigProvider, context, displayInfoManager);
    }

    @Override // defpackage.ws6
    public UseCaseManager get() {
        return newInstance(this.cameraPipeProvider.get(), this.cameraCoordinatorProvider.get(), this.builderProvider.get(), this.zslControlProvider.get(), this.lowLightBoostControlProvider.get(), this.controlsProvider.get(), this.camera2CameraControlProvider.get(), this.cameraStateAdapterProvider.get(), this.cameraInternalProvider, this.useCaseThreadsProvider, this.cameraInfoInternalProvider, this.encoderProfilesProvider.get(), this.cameraPropertiesProvider.get(), this.cameraXConfigProvider.get(), this.cameraGraphConfigProvider.get(), this.contextProvider.get(), this.displayInfoManagerProvider.get());
    }
}
