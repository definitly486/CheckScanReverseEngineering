package yads;

import defpackage.rm9;

/* JADX INFO: loaded from: classes6.dex */
public final class rb6 {
    public final eb6 a;
    public final ob6 b;
    public final defpackage.y22 c;
    public boolean d;
    public defpackage.mb4 e;

    public rb6(eb6 eb6Var, ob6 ob6Var) {
        defpackage.y22 y22VarA = xn.a(rm9.b(), new i90());
        this.a = eb6Var;
        this.b = ob6Var;
        this.c = y22VarA;
    }

    public final void a() {
        if (this.d) {
            return;
        }
        this.d = true;
        this.b.a();
        defpackage.y22 y22Var = this.c;
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        this.e = defpackage.av0.c(y22Var, defpackage.uy4.a, null, new qb6(this, null), 2);
    }

    public final void b() {
        if (this.d) {
            this.b.b();
            defpackage.mb4 mb4Var = this.e;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.e = null;
            this.d = false;
        }
    }
}
