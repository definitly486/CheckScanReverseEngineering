package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1", f = "UseCaseCameraRequestControl.kt", l = {530}, m = "invokeSuspend", v = 1)
public final class UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1 extends pg8 implements nl3<e02<? super List<? extends mk2<? extends Void>>>, Object> {
    final /* synthetic */ int $captureMode;
    final /* synthetic */ List<CaptureConfig> $captureSequence;
    final /* synthetic */ int $flashMode;
    final /* synthetic */ int $flashType;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, List<CaptureConfig> list, int i, int i2, int i3, e02<? super UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1> e02Var) {
        super(1, e02Var);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$captureSequence = list;
        this.$captureMode = i;
        this.$flashType = i2;
        this.$flashMode = i3;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1(this.this$0, this.$captureSequence, this.$captureMode, this.$flashType, this.$flashMode, e02Var);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(e02<? super List<? extends mk2<Void>>> e02Var) {
        return ((UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#issueSingleCaptureAsync");
            }
            if (this.this$0.hasInvalidSurface(this.$captureSequence)) {
                this.this$0.failedResults(this.$captureSequence.size(), "Capture request failed due to invalid surface");
            }
            UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
            UseCaseCameraRequestControlImpl.InfoBundle infoBundleMerge = useCaseCameraRequestControlImpl.merge(useCaseCameraRequestControlImpl.infoBundleMap);
            UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl2 = this.this$0;
            List<CaptureConfig> list = this.$captureSequence;
            int i2 = this.$captureMode;
            int i3 = this.$flashType;
            int i4 = this.$flashMode;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControl: Submitting still captures to capture pipeline");
            }
            CapturePipeline capturePipeline = useCaseCameraRequestControlImpl2.getCapturePipeline();
            RequestTemplate requestTemplateM98getTemplateejQnlcg = infoBundleMerge.m98getTemplateejQnlcg();
            requestTemplateM98getTemplateejQnlcg.getClass();
            int iM653unboximpl = requestTemplateM98getTemplateejQnlcg.m653unboximpl();
            Camera2ImplConfig camera2ImplConfigBuild = infoBundleMerge.getOptions().build();
            this.label = 1;
            obj = capturePipeline.mo32submitStillCapturesBvXKQx0(list, iM653unboximpl, camera2ImplConfigBuild, i2, i3, i4, this);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return (List) obj;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Object invoke(e02<? super List<? extends mk2<? extends Void>>> e02Var) {
        return invoke2((e02<? super List<? extends mk2<Void>>>) e02Var);
    }
}
