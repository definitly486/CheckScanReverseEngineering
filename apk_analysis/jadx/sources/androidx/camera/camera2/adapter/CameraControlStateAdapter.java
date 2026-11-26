package androidx.camera.camera2.adapter;

import androidx.camera.camera2.config.CameraScope;
import androidx.camera.camera2.impl.EvCompControl;
import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.ZoomControl;
import androidx.camera.core.ExposureState;
import androidx.camera.core.ZoomState;
import androidx.lifecycle.LiveData;

/* JADX INFO: loaded from: classes.dex */
@CameraScope
public final class CameraControlStateAdapter {
    private final EvCompControl evCompControl;
    private final LowLightBoostControl lowLightBoostControl;
    private final TorchControl torchControl;
    private final ZoomControl zoomControl;

    public CameraControlStateAdapter(ZoomControl zoomControl, EvCompControl evCompControl, TorchControl torchControl, LowLightBoostControl lowLightBoostControl) {
        zoomControl.getClass();
        evCompControl.getClass();
        torchControl.getClass();
        lowLightBoostControl.getClass();
        this.zoomControl = zoomControl;
        this.evCompControl = evCompControl;
        this.torchControl = torchControl;
        this.lowLightBoostControl = lowLightBoostControl;
    }

    public final ExposureState getExposureState() {
        return this.evCompControl.getExposureState();
    }

    public final LiveData<Integer> getLowLightBoostState() {
        return this.lowLightBoostControl.getLowLightBoostStateLiveData();
    }

    public final LiveData<Integer> getTorchStateLiveData() {
        return this.torchControl.getTorchStateLiveData();
    }

    public final LiveData<Integer> getTorchStrengthLiveData() {
        return this.torchControl.getTorchStrengthLiveData();
    }

    public final LiveData<ZoomState> getZoomStateLiveData() {
        return this.zoomControl.getZoomStateLiveData();
    }
}
