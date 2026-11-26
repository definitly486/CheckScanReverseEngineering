package androidx.activity.compose;

import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ReportDrawnComposition$checkReporter$1 extends qm3 implements nl3<ll3<? extends Boolean>, j59> {
    public ReportDrawnComposition$checkReporter$1(Object obj) {
        super(1, obj, ReportDrawnComposition.class, "observeReporter", "observeReporter(Lkotlin/jvm/functions/Function0;)V", 0);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(ll3<? extends Boolean> ll3Var) {
        invoke2((ll3<Boolean>) ll3Var);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ll3<Boolean> ll3Var) {
        ((ReportDrawnComposition) this.receiver).observeReporter(ll3Var);
    }
}
