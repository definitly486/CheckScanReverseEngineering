package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class o81 extends gh4 implements nl3 {
    public final /* synthetic */ j81 b;
    public final /* synthetic */ fs2 c;
    public final /* synthetic */ op1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o81(j81 j81Var, fs2 fs2Var, op1 op1Var) {
        super(1);
        this.b = j81Var;
        this.c = fs2Var;
        this.d = op1Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        Object objA = this.b.o.a(this.c);
        this.d.setGravity(jf2.a((m91) objA, (o91) this.b.p.a(this.c)));
        return j59.a;
    }
}
