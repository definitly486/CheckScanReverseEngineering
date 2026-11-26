package androidx.activity.compose;

import androidx.activity.FullyDrawnReporter;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.activity.compose.ReportDrawnKt$ReportDrawnAfter$1$1", f = "ReportDrawn.kt", l = {WebmConstants.MkvEbmlElement.CHANNELS}, m = "invokeSuspend", v = 1)
public final class ReportDrawnKt$ReportDrawnAfter$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ nl3<e02<? super j59>, Object> $block;
    final /* synthetic */ FullyDrawnReporter $fullyDrawnReporter;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ReportDrawnKt$ReportDrawnAfter$1$1(FullyDrawnReporter fullyDrawnReporter, nl3<? super e02<? super j59>, ? extends Object> nl3Var, e02<? super ReportDrawnKt$ReportDrawnAfter$1$1> e02Var) {
        super(2, e02Var);
        this.$fullyDrawnReporter = fullyDrawnReporter;
        this.$block = nl3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new ReportDrawnKt$ReportDrawnAfter$1$1(this.$fullyDrawnReporter, this.$block, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((ReportDrawnKt$ReportDrawnAfter$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        Throwable th;
        FullyDrawnReporter fullyDrawnReporter;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            FullyDrawnReporter fullyDrawnReporter2 = this.$fullyDrawnReporter;
            nl3<e02<? super j59>, Object> nl3Var = this.$block;
            fullyDrawnReporter2.addReporter();
            if (!fullyDrawnReporter2.isFullyDrawnReported()) {
                try {
                    this.L$0 = fullyDrawnReporter2;
                    this.label = 1;
                    if (nl3Var.invoke(this) == a32Var) {
                        return a32Var;
                    }
                    fullyDrawnReporter = fullyDrawnReporter2;
                    fullyDrawnReporter.removeReporter();
                } catch (Throwable th2) {
                    th = th2;
                    fullyDrawnReporter = fullyDrawnReporter2;
                    fullyDrawnReporter.removeReporter();
                    throw th;
                }
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            fullyDrawnReporter = (FullyDrawnReporter) this.L$0;
            try {
                r57.b(obj);
                fullyDrawnReporter.removeReporter();
            } catch (Throwable th3) {
                th = th3;
                fullyDrawnReporter.removeReporter();
                throw th;
            }
        }
        return j59.a;
    }
}
