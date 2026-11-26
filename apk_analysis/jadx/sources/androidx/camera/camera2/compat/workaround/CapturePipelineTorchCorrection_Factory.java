package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.CapturePipelineImpl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.UseCaseThreads;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CapturePipelineTorchCorrection_Factory implements xs6 {
    private final xs6<CameraProperties> cameraPropertiesProvider;
    private final xs6<CapturePipelineImpl> capturePipelineImplProvider;
    private final xs6<UseCaseThreads> threadsProvider;
    private final xs6<TorchControl> torchControlProvider;

    private CapturePipelineTorchCorrection_Factory(xs6<CameraProperties> xs6Var, xs6<CapturePipelineImpl> xs6Var2, xs6<UseCaseThreads> xs6Var3, xs6<TorchControl> xs6Var4) {
        this.cameraPropertiesProvider = xs6Var;
        this.capturePipelineImplProvider = xs6Var2;
        this.threadsProvider = xs6Var3;
        this.torchControlProvider = xs6Var4;
    }

    public static CapturePipelineTorchCorrection_Factory create(xs6<CameraProperties> xs6Var, xs6<CapturePipelineImpl> xs6Var2, xs6<UseCaseThreads> xs6Var3, xs6<TorchControl> xs6Var4) {
        return new CapturePipelineTorchCorrection_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4);
    }

    public static CapturePipelineTorchCorrection newInstance(CameraProperties cameraProperties, ws6<CapturePipelineImpl> ws6Var, UseCaseThreads useCaseThreads, TorchControl torchControl) {
        return new CapturePipelineTorchCorrection(cameraProperties, ws6Var, useCaseThreads, torchControl);
    }

    @Override // defpackage.ws6
    public CapturePipelineTorchCorrection get() {
        return newInstance(this.cameraPropertiesProvider.get(), this.capturePipelineImplProvider, this.threadsProvider.get(), this.torchControlProvider.get());
    }
}
