package androidx.compose.ui.scrollcapture;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ag;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$scrollTracker$1", f = "ComposeScrollCaptureCallback.android.kt", l = {TsExtractor.TS_STREAM_TYPE_DVBSUBS}, m = "invokeSuspend", v = 1)
public final class ComposeScrollCaptureCallback$scrollTracker$1 extends pg8 implements bm3<Float, e02<? super Float>, Object> {
    /* synthetic */ float F$0;
    boolean Z$0;
    int label;
    final /* synthetic */ ComposeScrollCaptureCallback this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeScrollCaptureCallback$scrollTracker$1(ComposeScrollCaptureCallback composeScrollCaptureCallback, e02<? super ComposeScrollCaptureCallback$scrollTracker$1> e02Var) {
        super(2, e02Var);
        this.this$0 = composeScrollCaptureCallback;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ComposeScrollCaptureCallback$scrollTracker$1 composeScrollCaptureCallback$scrollTracker$1 = new ComposeScrollCaptureCallback$scrollTracker$1(this.this$0, e02Var);
        composeScrollCaptureCallback$scrollTracker$1.F$0 = ((Number) obj).floatValue();
        return composeScrollCaptureCallback$scrollTracker$1;
    }

    public final Object invoke(float f, e02<? super Float> e02Var) {
        return ((ComposeScrollCaptureCallback$scrollTracker$1) create(Float.valueOf(f), e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        boolean z;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            float f = this.F$0;
            bm3<Offset, e02<? super Offset>, Object> scrollCaptureScrollByAction = ScrollCapture_androidKt.getScrollCaptureScrollByAction(this.this$0.node);
            if (scrollCaptureScrollByAction == null) {
                throw ag.e("Required value was null.");
            }
            boolean reverseScrolling = ((ScrollAxisRange) this.this$0.node.getUnmergedConfig$ui().get(SemanticsProperties.INSTANCE.getVerticalScrollAxisRange())).getReverseScrolling();
            if (reverseScrolling) {
                f = -f;
            }
            Offset offsetM5976boximpl = Offset.m5976boximpl(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            this.Z$0 = reverseScrolling;
            this.label = 1;
            obj = scrollCaptureScrollByAction.invoke(offsetM5976boximpl, this);
            if (obj == a32Var) {
                return a32Var;
            }
            z = reverseScrolling;
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = this.Z$0;
            r57.b(obj);
        }
        long jM5997unboximpl = ((Offset) obj).m5997unboximpl();
        return new Float(z ? -Float.intBitsToFloat((int) (jM5997unboximpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) : Float.intBitsToFloat((int) (jM5997unboximpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(Float f, e02<? super Float> e02Var) {
        return invoke(f.floatValue(), e02Var);
    }
}
