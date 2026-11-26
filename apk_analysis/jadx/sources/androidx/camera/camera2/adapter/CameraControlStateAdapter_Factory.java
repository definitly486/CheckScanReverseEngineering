package androidx.camera.camera2.adapter;

import androidx.camera.camera2.impl.EvCompControl;
import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.ZoomControl;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraControlStateAdapter_Factory implements xs6 {
    private final xs6<EvCompControl> evCompControlProvider;
    private final xs6<LowLightBoostControl> lowLightBoostControlProvider;
    private final xs6<TorchControl> torchControlProvider;
    private final xs6<ZoomControl> zoomControlProvider;

    private CameraControlStateAdapter_Factory(xs6<ZoomControl> xs6Var, xs6<EvCompControl> xs6Var2, xs6<TorchControl> xs6Var3, xs6<LowLightBoostControl> xs6Var4) {
        this.zoomControlProvider = xs6Var;
        this.evCompControlProvider = xs6Var2;
        this.torchControlProvider = xs6Var3;
        this.lowLightBoostControlProvider = xs6Var4;
    }

    public static CameraControlStateAdapter_Factory create(xs6<ZoomControl> xs6Var, xs6<EvCompControl> xs6Var2, xs6<TorchControl> xs6Var3, xs6<LowLightBoostControl> xs6Var4) {
        return new CameraControlStateAdapter_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4);
    }

    public static CameraControlStateAdapter newInstance(ZoomControl zoomControl, EvCompControl evCompControl, TorchControl torchControl, LowLightBoostControl lowLightBoostControl) {
        return new CameraControlStateAdapter(zoomControl, evCompControl, torchControl, lowLightBoostControl);
    }

    @Override // defpackage.ws6
    public CameraControlStateAdapter get() {
        return newInstance(this.zoomControlProvider.get(), this.evCompControlProvider.get(), this.torchControlProvider.get(), this.lowLightBoostControlProvider.get());
    }
}
