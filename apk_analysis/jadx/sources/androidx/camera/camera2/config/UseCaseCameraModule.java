package androidx.camera.camera2.config;

import androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection;
import androidx.camera.camera2.impl.CapturePipeline;
import androidx.camera.camera2.impl.CapturePipelineImpl;
import defpackage.jh2;
import defpackage.ws6;

/* JADX INFO: loaded from: classes.dex */
public abstract class UseCaseCameraModule {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        @UseCaseCameraScope
        public final CapturePipeline provideCapturePipeline(ws6<CapturePipelineImpl> ws6Var, ws6<CapturePipelineTorchCorrection> ws6Var2) {
            ws6Var.getClass();
            ws6Var2.getClass();
            if (CapturePipelineTorchCorrection.Companion.isEnabled()) {
                CapturePipelineTorchCorrection capturePipelineTorchCorrection = ws6Var2.get();
                capturePipelineTorchCorrection.getClass();
                return capturePipelineTorchCorrection;
            }
            CapturePipelineImpl capturePipelineImpl = ws6Var.get();
            capturePipelineImpl.getClass();
            return capturePipelineImpl;
        }

        private Companion() {
        }
    }
}
