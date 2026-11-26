package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class n81 extends gh4 implements nl3 {
    public final /* synthetic */ i81 b;
    public final /* synthetic */ jj2 c;
    public final /* synthetic */ fs2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n81(i81 i81Var, fs2 fs2Var, jj2 jj2Var, fs2 fs2Var2) {
        super(1);
        this.b = i81Var;
        this.c = jj2Var;
        this.d = fs2Var2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        i81 i81Var = this.b;
        tc1 tc1Var = i81Var != null ? i81Var.e : null;
        jj2 jj2Var = this.c;
        jj2Var.setLineSeparatorDrawable(tc1Var != null ? jf2.a(tc1Var, jj2Var.getResources().getDisplayMetrics(), this.d) : null);
        return j59.a;
    }
}
