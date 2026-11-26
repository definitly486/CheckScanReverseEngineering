package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class bc4 implements ub4 {
    public final gc4 a;
    public final by3 b;
    public final cc4 c;

    public bc4(gc4 gc4Var, by3 by3Var, cc4 cc4Var) {
        this.a = gc4Var;
        this.b = by3Var;
        this.c = cc4Var;
    }

    @Override // yads.ub4
    public final void a() {
        gc4 gc4Var = this.a;
        cc4 cc4Var = this.c;
        if (cc4Var.a && (cc4Var.b.t() instanceof defpackage.no5)) {
            cc4Var.b.resumeWith(j59.a);
        }
    }

    @Override // yads.ub4
    public final void b() {
        cc4 cc4Var = this.c;
        if (cc4Var.a && (cc4Var.b.t() instanceof defpackage.no5)) {
            cc4Var.b.resumeWith(j59.a);
        }
    }
}
