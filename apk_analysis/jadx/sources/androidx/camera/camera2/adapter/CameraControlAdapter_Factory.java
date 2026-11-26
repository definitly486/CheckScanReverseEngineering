package androidx.camera.camera2.adapter;

import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.EvCompControl;
import androidx.camera.camera2.impl.FlashControl;
import androidx.camera.camera2.impl.FocusMeteringControl;
import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.impl.VideoUsageControl;
import androidx.camera.camera2.impl.ZoomControl;
import androidx.camera.camera2.interop.Camera2CameraControl;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraControlAdapter_Factory implements xs6 {
    private final xs6<Camera2CameraControl> camera2cameraControlProvider;
    private final xs6<CameraProperties> cameraPropertiesProvider;
    private final xs6<EvCompControl> evCompControlProvider;
    private final xs6<FlashControl> flashControlProvider;
    private final xs6<FocusMeteringControl> focusMeteringControlProvider;
    private final xs6<LowLightBoostControl> lowLightBoostControlProvider;
    private final xs6<StillCaptureRequestControl> stillCaptureRequestControlProvider;
    private final xs6<UseCaseThreads> threadsProvider;
    private final xs6<TorchControl> torchControlProvider;
    private final xs6<UseCaseManager> useCaseManagerProvider;
    private final xs6<VideoUsageControl> videoUsageControlProvider;
    private final xs6<ZoomControl> zoomControlProvider;
    private final xs6<ZslControl> zslControlProvider;

    private CameraControlAdapter_Factory(xs6<CameraProperties> xs6Var, xs6<EvCompControl> xs6Var2, xs6<FlashControl> xs6Var3, xs6<FocusMeteringControl> xs6Var4, xs6<StillCaptureRequestControl> xs6Var5, xs6<TorchControl> xs6Var6, xs6<LowLightBoostControl> xs6Var7, xs6<ZoomControl> xs6Var8, xs6<ZslControl> xs6Var9, xs6<Camera2CameraControl> xs6Var10, xs6<UseCaseManager> xs6Var11, xs6<UseCaseThreads> xs6Var12, xs6<VideoUsageControl> xs6Var13) {
        this.cameraPropertiesProvider = xs6Var;
        this.evCompControlProvider = xs6Var2;
        this.flashControlProvider = xs6Var3;
        this.focusMeteringControlProvider = xs6Var4;
        this.stillCaptureRequestControlProvider = xs6Var5;
        this.torchControlProvider = xs6Var6;
        this.lowLightBoostControlProvider = xs6Var7;
        this.zoomControlProvider = xs6Var8;
        this.zslControlProvider = xs6Var9;
        this.camera2cameraControlProvider = xs6Var10;
        this.useCaseManagerProvider = xs6Var11;
        this.threadsProvider = xs6Var12;
        this.videoUsageControlProvider = xs6Var13;
    }

    public static CameraControlAdapter_Factory create(xs6<CameraProperties> xs6Var, xs6<EvCompControl> xs6Var2, xs6<FlashControl> xs6Var3, xs6<FocusMeteringControl> xs6Var4, xs6<StillCaptureRequestControl> xs6Var5, xs6<TorchControl> xs6Var6, xs6<LowLightBoostControl> xs6Var7, xs6<ZoomControl> xs6Var8, xs6<ZslControl> xs6Var9, xs6<Camera2CameraControl> xs6Var10, xs6<UseCaseManager> xs6Var11, xs6<UseCaseThreads> xs6Var12, xs6<VideoUsageControl> xs6Var13) {
        return new CameraControlAdapter_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7, xs6Var8, xs6Var9, xs6Var10, xs6Var11, xs6Var12, xs6Var13);
    }

    public static CameraControlAdapter newInstance(CameraProperties cameraProperties, EvCompControl evCompControl, FlashControl flashControl, FocusMeteringControl focusMeteringControl, StillCaptureRequestControl stillCaptureRequestControl, TorchControl torchControl, LowLightBoostControl lowLightBoostControl, ZoomControl zoomControl, ZslControl zslControl, Camera2CameraControl camera2CameraControl, UseCaseManager useCaseManager, UseCaseThreads useCaseThreads, VideoUsageControl videoUsageControl) {
        return new CameraControlAdapter(cameraProperties, evCompControl, flashControl, focusMeteringControl, stillCaptureRequestControl, torchControl, lowLightBoostControl, zoomControl, zslControl, camera2CameraControl, useCaseManager, useCaseThreads, videoUsageControl);
    }

    @Override // defpackage.ws6
    public CameraControlAdapter get() {
        return newInstance(this.cameraPropertiesProvider.get(), this.evCompControlProvider.get(), this.flashControlProvider.get(), this.focusMeteringControlProvider.get(), this.stillCaptureRequestControlProvider.get(), this.torchControlProvider.get(), this.lowLightBoostControlProvider.get(), this.zoomControlProvider.get(), this.zslControlProvider.get(), this.camera2cameraControlProvider.get(), this.useCaseManagerProvider.get(), this.threadsProvider.get(), this.videoUsageControlProvider.get());
    }
}
