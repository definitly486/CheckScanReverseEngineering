package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class tt4 {
    public final defpackage.y22 a;
    public final ax5 b;
    public rt4 c = rt4.INVALIDATED;
    public ut4 d;
    public tx5 e;
    public long f;
    public long g;
    public long h;
    public defpackage.mb4 i;

    public tt4(defpackage.y22 y22Var, ax5 ax5Var) {
        this.a = y22Var;
        this.b = ax5Var;
    }

    public final void a() {
        rt4 rt4Var = this.c;
        rt4 rt4Var2 = rt4.INVALIDATED;
        if (rt4Var != rt4Var2) {
            this.c = rt4Var2;
            this.d = null;
            defpackage.mb4 mb4Var = this.i;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.i = null;
        }
    }

    public final void b() {
        if (rt4.ACTIVE == this.c) {
            this.c = rt4.PAUSED;
            defpackage.mb4 mb4Var = this.i;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.i = null;
            ((defpackage.cg) this.b).getClass();
            long jMax = Math.max(0L, this.f - (qt4.a() - this.h));
            this.f = jMax;
            tx5 tx5Var = this.e;
            if (tx5Var != null) {
                tx5Var.a(jMax, this.g - jMax);
            }
        }
    }

    public final void c() {
        if (rt4.PAUSED == this.c) {
            d();
        }
    }

    public final void d() {
        this.c = rt4.ACTIVE;
        if (this.f > 0) {
            this.i = defpackage.av0.c(this.a, null, null, new st4(this, null), 3);
            return;
        }
        ut4 ut4Var = this.d;
        if (ut4Var != null) {
            ut4Var.mo9532a();
        }
        a();
    }

    public final void a(long j, ut4 ut4Var) {
        a();
        this.d = ut4Var;
        this.f = j;
        this.g = j;
        d();
    }
}
