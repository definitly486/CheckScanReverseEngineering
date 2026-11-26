package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class q81 extends gh4 implements nl3 {
    public final /* synthetic */ op1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q81(op1 op1Var) {
        super(1);
        this.b = op1Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        this.b.setItemSpacing(uq.a(Long.valueOf(((Number) obj).longValue()), this.b.getResources().getDisplayMetrics()));
        return j59.a;
    }
}
