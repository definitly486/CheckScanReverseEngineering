package androidx.camera.camera2.impl;

import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.compat.workaround.MeteringRegionCorrection;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class FocusMeteringControl_Factory implements xs6 {
    private final xs6<CameraProperties> cameraPropertiesProvider;
    private final xs6<MeteringRegionCorrection> meteringRegionCorrectionProvider;
    private final xs6<State3AControl> state3AControlProvider;
    private final xs6<UseCaseThreads> threadsProvider;
    private final xs6<ZoomCompat> zoomCompatProvider;

    private FocusMeteringControl_Factory(xs6<CameraProperties> xs6Var, xs6<MeteringRegionCorrection> xs6Var2, xs6<State3AControl> xs6Var3, xs6<UseCaseThreads> xs6Var4, xs6<ZoomCompat> xs6Var5) {
        this.cameraPropertiesProvider = xs6Var;
        this.meteringRegionCorrectionProvider = xs6Var2;
        this.state3AControlProvider = xs6Var3;
        this.threadsProvider = xs6Var4;
        this.zoomCompatProvider = xs6Var5;
    }

    public static FocusMeteringControl_Factory create(xs6<CameraProperties> xs6Var, xs6<MeteringRegionCorrection> xs6Var2, xs6<State3AControl> xs6Var3, xs6<UseCaseThreads> xs6Var4, xs6<ZoomCompat> xs6Var5) {
        return new FocusMeteringControl_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5);
    }

    public static FocusMeteringControl newInstance(CameraProperties cameraProperties, MeteringRegionCorrection meteringRegionCorrection, State3AControl state3AControl, UseCaseThreads useCaseThreads, ZoomCompat zoomCompat) {
        return new FocusMeteringControl(cameraProperties, meteringRegionCorrection, state3AControl, useCaseThreads, zoomCompat);
    }

    @Override // defpackage.ws6
    public FocusMeteringControl get() {
        return newInstance(this.cameraPropertiesProvider.get(), this.meteringRegionCorrectionProvider.get(), this.state3AControlProvider.get(), this.threadsProvider.get(), this.zoomCompatProvider.get());
    }
}
