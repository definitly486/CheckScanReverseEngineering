package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.adapter.CaptureConfigAdapter;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.TorchIsClosedAfterImageCapturingQuirk;
import androidx.camera.camera2.config.UseCaseCameraScope;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.CapturePipeline;
import androidx.camera.camera2.impl.CapturePipelineImpl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.cl4;
import defpackage.e02;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.mk2;
import defpackage.o31;
import defpackage.p31;
import defpackage.r57;
import defpackage.ws6;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@UseCaseCameraScope
public final class CapturePipelineTorchCorrection implements CapturePipeline {
    public static final Companion Companion = new Companion(null);
    private static final boolean isEnabled;
    private final cl4 capturePipelineImpl$delegate;
    private final ws6<CapturePipelineImpl> capturePipelineImplProvider;
    private final cl4 isLegacyDevice$delegate;
    private int template;
    private final UseCaseThreads threads;
    private final TorchControl torchControl;

    static {
        isEnabled = DeviceQuirks.INSTANCE.get(TorchIsClosedAfterImageCapturingQuirk.class) != null;
    }

    public CapturePipelineTorchCorrection(CameraProperties cameraProperties, ws6<CapturePipelineImpl> ws6Var, UseCaseThreads useCaseThreads, TorchControl torchControl) {
        cameraProperties.getClass();
        ws6Var.getClass();
        useCaseThreads.getClass();
        torchControl.getClass();
        this.capturePipelineImplProvider = ws6Var;
        this.threads = useCaseThreads;
        this.torchControl = torchControl;
        int i = 0;
        this.isLegacyDevice$delegate = new fh8(new o31(cameraProperties, i));
        this.capturePipelineImpl$delegate = new fh8(new p31(this, i));
        this.template = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CapturePipelineImpl capturePipelineImpl_delegate$lambda$0(CapturePipelineTorchCorrection capturePipelineTorchCorrection) {
        return capturePipelineTorchCorrection.capturePipelineImplProvider.get();
    }

    private final CapturePipelineImpl getCapturePipelineImpl() {
        return (CapturePipelineImpl) this.capturePipelineImpl$delegate.getValue();
    }

    /* JADX INFO: renamed from: isCorrectionRequired-0UCm73U, reason: not valid java name */
    private final boolean m31isCorrectionRequired0UCm73U(List<CaptureConfig> list, int i) {
        List<CaptureConfig> list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return false;
        }
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            if (CaptureConfigAdapter.Companion.m8getStillCaptureTemplateCMLptTo$camera_camera2((CaptureConfig) it.next(), i, isLegacyDevice()) == 2) {
                return isTorchOn();
            }
        }
        return false;
    }

    private final boolean isLegacyDevice() {
        return ((Boolean) this.isLegacyDevice$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isLegacyDevice_delegate$lambda$0(CameraProperties cameraProperties) {
        return CameraMetadata.Companion.isHardwareLevelLegacy(cameraProperties.getMetadata());
    }

    private final boolean isTorchOn() {
        Integer value = this.torchControl.getTorchStateLiveData().getValue();
        return value != null && value.intValue() == 1;
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    public Object getCameraCapturePipeline(int i, int i2, int i3, e02<? super CameraCapturePipeline> e02Var) {
        return getCapturePipelineImpl().getCameraCapturePipeline(i, i2, i3, e02Var);
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    public int getTemplate() {
        return this.template;
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    public void setTemplate(int i) {
        getCapturePipelineImpl().setTemplate(i);
        this.template = i;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    @Override // androidx.camera.camera2.impl.CapturePipeline
    /* JADX INFO: renamed from: submitStillCaptures-BvXKQx0, reason: not valid java name */
    public Object mo32submitStillCapturesBvXKQx0(List<CaptureConfig> list, int i, Config config, int i2, int i3, int i4, e02<? super List<? extends mk2<Void>>> e02Var) {
        CapturePipelineTorchCorrection$submitStillCaptures$1 capturePipelineTorchCorrection$submitStillCaptures$1;
        boolean z;
        if (e02Var instanceof CapturePipelineTorchCorrection$submitStillCaptures$1) {
            capturePipelineTorchCorrection$submitStillCaptures$1 = (CapturePipelineTorchCorrection$submitStillCaptures$1) e02Var;
            int i5 = capturePipelineTorchCorrection$submitStillCaptures$1.label;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                capturePipelineTorchCorrection$submitStillCaptures$1.label = i5 - Integer.MIN_VALUE;
            } else {
                capturePipelineTorchCorrection$submitStillCaptures$1 = new CapturePipelineTorchCorrection$submitStillCaptures$1(this, e02Var);
            }
        } else {
            capturePipelineTorchCorrection$submitStillCaptures$1 = new CapturePipelineTorchCorrection$submitStillCaptures$1(this, e02Var);
        }
        CapturePipelineTorchCorrection$submitStillCaptures$1 capturePipelineTorchCorrection$submitStillCaptures$2 = capturePipelineTorchCorrection$submitStillCaptures$1;
        Object obj = capturePipelineTorchCorrection$submitStillCaptures$2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i6 = capturePipelineTorchCorrection$submitStillCaptures$2.label;
        if (i6 == 0) {
            r57.b(obj);
            boolean zM31isCorrectionRequired0UCm73U = m31isCorrectionRequired0UCm73U(list, i);
            CapturePipelineImpl capturePipelineImpl = getCapturePipelineImpl();
            capturePipelineTorchCorrection$submitStillCaptures$2.Z$0 = zM31isCorrectionRequired0UCm73U;
            capturePipelineTorchCorrection$submitStillCaptures$2.label = 1;
            Object objMo32submitStillCapturesBvXKQx0 = capturePipelineImpl.mo32submitStillCapturesBvXKQx0(list, i, config, i2, i3, i4, capturePipelineTorchCorrection$submitStillCaptures$2);
            if (objMo32submitStillCapturesBvXKQx0 == a32Var) {
                return a32Var;
            }
            obj = objMo32submitStillCapturesBvXKQx0;
            z = zM31isCorrectionRequired0UCm73U;
        } else {
            if (i6 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = capturePipelineTorchCorrection$submitStillCaptures$2.Z$0;
            r57.b(obj);
        }
        List list2 = (List) obj;
        if (z) {
            av0.c(this.threads.getSequentialScope(), null, null, new CapturePipelineTorchCorrection$submitStillCaptures$2(list2, this, null), 3);
        }
        return list2;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final boolean isEnabled() {
            return CapturePipelineTorchCorrection.isEnabled;
        }

        private Companion() {
        }
    }
}
