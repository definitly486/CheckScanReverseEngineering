package yads;

import android.os.Handler;
import android.util.Pair;
import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class hx3 extends h50 {
    public final cs k;
    public final boolean l;
    public final jx5 m;
    public final hx5 n;
    public fx3 o;
    public ex3 p;
    public boolean q;
    public boolean r;
    public boolean s;

    public hx3(cs csVar, boolean z) {
        boolean z2;
        this.k = csVar;
        if (z) {
            csVar.getClass();
            z2 = true;
        } else {
            z2 = false;
        }
        this.l = z2;
        this.m = new jx5();
        this.n = new hx5();
        csVar.getClass();
        this.o = new fx3(new gx3(csVar.c()), jx5.s, fx3.f);
    }

    public final void a(long j) {
        ex3 ex3Var = this.p;
        int iA = this.o.a(ex3Var.b.a);
        if (iA == -1) {
            return;
        }
        long j2 = this.o.a(iA, this.n, false).e;
        if (j2 != C.TIME_UNSET && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        ex3Var.i = j;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x007e  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // yads.h50
    /* JADX INFO: renamed from: b */
    public final void a(Object obj, cs csVar, kx5 kx5Var) {
        long j;
        fx3 fx3Var;
        h14 h14VarA;
        fx3 fx3Var2;
        if (this.r) {
            fx3 fx3Var3 = this.o;
            this.o = new fx3(kx5Var, fx3Var3.d, fx3Var3.e);
            ex3 ex3Var = this.p;
            if (ex3Var != null) {
                a(ex3Var.i);
            }
        } else {
            if (!kx5Var.c()) {
                kx5Var.a(0, this.m, 0L);
                jx5 jx5Var = this.m;
                long j2 = jx5Var.n;
                Object obj2 = jx5Var.b;
                ex3 ex3Var2 = this.p;
                if (ex3Var2 != null) {
                    long j3 = ex3Var2.c;
                    fx3 fx3Var4 = this.o;
                    Object obj3 = ex3Var2.b.a;
                    fx3Var4.a(fx3Var4.a(obj3), this.n, true);
                    long j4 = this.n.f + j3;
                    if (j4 != this.o.a(0, this.m, 0L).n) {
                        j = j4;
                    } else {
                        j = j2;
                    }
                } else {
                    j = j2;
                }
                Pair pairA = kx5Var.a(this.m, this.n, 0, j);
                Object obj4 = pairA.first;
                long jLongValue = ((Long) pairA.second).longValue();
                if (this.s) {
                    fx3 fx3Var5 = this.o;
                    fx3Var = new fx3(kx5Var, fx3Var5.d, fx3Var5.e);
                } else {
                    fx3Var = new fx3(kx5Var, obj2, obj4);
                }
                this.o = fx3Var;
                ex3 ex3Var3 = this.p;
                if (ex3Var3 != null) {
                    a(jLongValue);
                    h14 h14Var = ex3Var3.b;
                    Object obj5 = h14Var.a;
                    if (this.o.e != null && obj5.equals(fx3.f)) {
                        obj5 = this.o.e;
                    }
                    h14VarA = h14Var.a(obj5);
                }
                this.s = true;
                this.r = true;
                a(this.o);
                if (h14VarA != null) {
                    ex3 ex3Var4 = this.p;
                    ex3Var4.getClass();
                    ex3Var4.a(h14VarA);
                }
            }
            if (this.s) {
                fx3 fx3Var6 = this.o;
                fx3Var2 = new fx3(kx5Var, fx3Var6.d, fx3Var6.e);
            } else {
                fx3Var2 = new fx3(kx5Var, jx5.s, fx3.f);
            }
            this.o = fx3Var2;
        }
        h14VarA = null;
        this.s = true;
        this.r = true;
        a(this.o);
        if (h14VarA != null) {
            ex3 ex3Var5 = this.p;
            ex3Var5.getClass();
            ex3Var5.a(h14VarA);
        }
    }

    @Override // yads.cs
    public final p04 c() {
        return this.k.c();
    }

    @Override // yads.h50, yads.cs
    public final void d() {
    }

    @Override // yads.h50, yads.cs
    public final void e() {
        this.r = false;
        this.q = false;
        super.e();
    }

    @Override // yads.h50
    public final h14 a(Object obj, h14 h14Var) {
        Object obj2 = h14Var.a;
        Object obj3 = this.o.e;
        if (obj3 != null && obj3.equals(obj2)) {
            obj2 = fx3.f;
        }
        return h14Var.a(obj2);
    }

    @Override // yads.cs
    public final void a(p16 p16Var) {
        this.j = p16Var;
        this.i = u56.a((Handler.Callback) null);
        if (this.l) {
            return;
        }
        this.q = true;
        a((Object) null, this.k);
    }

    @Override // yads.cs
    public final void a(z04 z04Var) {
        ex3 ex3Var = (ex3) z04Var;
        if (ex3Var.f != null) {
            cs csVar = ex3Var.e;
            csVar.getClass();
            csVar.a(ex3Var.f);
        }
        if (z04Var == this.p) {
            this.p = null;
        }
    }

    @Override // yads.cs
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ex3 a(h14 h14Var, aj0 aj0Var, long j) {
        ex3 ex3Var = new ex3(h14Var, aj0Var, j);
        cs csVar = this.k;
        if (ex3Var.e == null) {
            ex3Var.e = csVar;
            if (this.r) {
                Object obj = h14Var.a;
                if (this.o.e != null && obj.equals(fx3.f)) {
                    obj = this.o.e;
                }
                ex3Var.a(h14Var.a(obj));
                return ex3Var;
            }
            this.p = ex3Var;
            if (!this.q) {
                this.q = true;
                a((Object) null, csVar);
            }
            return ex3Var;
        }
        defpackage.ud.g();
        return null;
    }
}
