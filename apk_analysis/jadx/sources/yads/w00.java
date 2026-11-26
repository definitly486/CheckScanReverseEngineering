package yads;

import android.os.Handler;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class w00 extends h50 {
    public final cs k;
    public final long l;
    public final long m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final ArrayList q;
    public final jx5 r;
    public u00 s;
    public v00 t;
    public long u;
    public long v;

    public w00(cs csVar, long j, long j2, boolean z, boolean z2, boolean z3) {
        if (j < 0) {
            defpackage.mi2.b();
            throw null;
        }
        csVar.getClass();
        this.k = csVar;
        this.l = j;
        this.m = j2;
        this.n = z;
        this.o = z2;
        this.p = z3;
        this.q = new ArrayList();
        this.r = new jx5();
    }

    @Override // yads.cs
    public final void a(z04 z04Var) {
        if (!this.q.remove(z04Var)) {
            defpackage.ud.g();
            return;
        }
        this.k.a(((t00) z04Var).b);
        if (!this.q.isEmpty() || this.o) {
            return;
        }
        u00 u00Var = this.s;
        u00Var.getClass();
        b(u00Var.c);
    }

    public final void b(kx5 kx5Var) {
        long j;
        long j2;
        long j3;
        kx5Var.a(0, this.r, 0L);
        long j4 = this.r.r;
        if (this.s == null || this.q.isEmpty() || this.o) {
            long j5 = this.l;
            long j6 = this.m;
            if (this.p) {
                long j7 = this.r.n;
                j5 += j7;
                j = j7 + j6;
            } else {
                j = j6;
            }
            this.u = j4 + j5;
            this.v = j6 != Long.MIN_VALUE ? j4 + j : Long.MIN_VALUE;
            int size = this.q.size();
            for (int i = 0; i < size; i++) {
                t00 t00Var = (t00) this.q.get(i);
                long j8 = this.u;
                long j9 = this.v;
                t00Var.f = j8;
                t00Var.g = j9;
            }
            j2 = j5;
            j3 = j;
        } else {
            long j10 = this.u - j4;
            j3 = this.m != Long.MIN_VALUE ? this.v - j4 : Long.MIN_VALUE;
            j2 = j10;
        }
        try {
            u00 u00Var = new u00(kx5Var, j2, j3);
            this.s = u00Var;
            a(u00Var);
        } catch (v00 e) {
            this.t = e;
            for (int i2 = 0; i2 < this.q.size(); i2++) {
                ((t00) this.q.get(i2)).h = this.t;
            }
        }
    }

    @Override // yads.cs
    public final p04 c() {
        return this.k.c();
    }

    @Override // yads.h50, yads.cs
    public final void d() throws v00 {
        v00 v00Var = this.t;
        if (v00Var != null) {
            throw v00Var;
        }
        super.d();
    }

    @Override // yads.h50, yads.cs
    public final void e() {
        super.e();
        this.t = null;
        this.s = null;
    }

    @Override // yads.cs
    public final z04 a(h14 h14Var, aj0 aj0Var, long j) {
        t00 t00Var = new t00(this.k.a(h14Var, aj0Var, j), this.n, this.u, this.v);
        this.q.add(t00Var);
        return t00Var;
    }

    @Override // yads.cs
    public final void a(p16 p16Var) {
        this.j = p16Var;
        this.i = u56.a((Handler.Callback) null);
        a((Object) null, this.k);
    }

    @Override // yads.h50
    /* JADX INFO: renamed from: b */
    public final void a(Object obj, cs csVar, kx5 kx5Var) {
        if (this.t != null) {
            return;
        }
        b(kx5Var);
    }
}
