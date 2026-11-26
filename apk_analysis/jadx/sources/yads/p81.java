package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class p81 extends gh4 implements nl3 {
    public final /* synthetic */ j81 b;
    public final /* synthetic */ fs2 c;
    public final /* synthetic */ jj2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p81(j81 j81Var, fs2 fs2Var, jj2 jj2Var) {
        super(1);
        this.b = j81Var;
        this.c = fs2Var;
        this.d = jj2Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        Object objA = this.b.o.a(this.c);
        this.d.setGravity(jf2.a((m91) objA, (o91) this.b.p.a(this.c)));
        return j59.a;
    }
}
