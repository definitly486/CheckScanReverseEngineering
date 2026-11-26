package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class y81 extends gh4 implements nl3 {
    public final /* synthetic */ i81 b;
    public final /* synthetic */ op1 c;
    public final /* synthetic */ fs2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y81(i81 i81Var, fs2 fs2Var, op1 op1Var, fs2 fs2Var2) {
        super(1);
        this.b = i81Var;
        this.c = op1Var;
        this.d = fs2Var2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        i81 i81Var = this.b;
        tc1 tc1Var = i81Var != null ? i81Var.e : null;
        op1 op1Var = this.c;
        op1Var.setDividerDrawable(tc1Var != null ? jf2.a(tc1Var, op1Var.getResources().getDisplayMetrics(), this.d) : null);
        return j59.a;
    }
}
