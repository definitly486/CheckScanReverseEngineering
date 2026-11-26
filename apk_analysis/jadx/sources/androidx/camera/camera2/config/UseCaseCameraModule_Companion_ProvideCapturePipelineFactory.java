package androidx.camera.camera2.config;

import androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection;
import androidx.camera.camera2.impl.CapturePipeline;
import androidx.camera.camera2.impl.CapturePipelineImpl;
import defpackage.te6;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseCameraModule_Companion_ProvideCapturePipelineFactory implements xs6 {
    private final xs6<CapturePipelineImpl> capturePipelineImplProvider;
    private final xs6<CapturePipelineTorchCorrection> capturePipelineTorchCorrectionProvider;

    private UseCaseCameraModule_Companion_ProvideCapturePipelineFactory(xs6<CapturePipelineImpl> xs6Var, xs6<CapturePipelineTorchCorrection> xs6Var2) {
        this.capturePipelineImplProvider = xs6Var;
        this.capturePipelineTorchCorrectionProvider = xs6Var2;
    }

    public static UseCaseCameraModule_Companion_ProvideCapturePipelineFactory create(xs6<CapturePipelineImpl> xs6Var, xs6<CapturePipelineTorchCorrection> xs6Var2) {
        return new UseCaseCameraModule_Companion_ProvideCapturePipelineFactory(xs6Var, xs6Var2);
    }

    public static CapturePipeline provideCapturePipeline(ws6<CapturePipelineImpl> ws6Var, ws6<CapturePipelineTorchCorrection> ws6Var2) {
        CapturePipeline capturePipelineProvideCapturePipeline = UseCaseCameraModule.Companion.provideCapturePipeline(ws6Var, ws6Var2);
        te6.b(capturePipelineProvideCapturePipeline);
        return capturePipelineProvideCapturePipeline;
    }

    @Override // defpackage.ws6
    public CapturePipeline get() {
        return provideCapturePipeline(this.capturePipelineImplProvider, this.capturePipelineTorchCorrectionProvider);
    }
}
