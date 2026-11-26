package yads;

import android.net.Uri;
import android.os.Looper;
import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class y15 extends cs {
    public final p04 h;
    public final k04 i;
    public final vc0 j;
    public final q15 k;
    public final xl2 l;
    public final ll0 m;
    public final int n;
    public boolean o;
    public long p;
    public boolean q;
    public boolean r;
    public p16 s;

    public y15(p04 p04Var, vc0 vc0Var, q15 q15Var, xl2 xl2Var, ll0 ll0Var, int i) {
        k04 k04Var = p04Var.c;
        k04Var.getClass();
        this.i = k04Var;
        this.h = p04Var;
        this.j = vc0Var;
        this.k = q15Var;
        this.l = xl2Var;
        this.m = ll0Var;
        this.n = i;
        this.o = true;
        this.p = C.TIME_UNSET;
    }

    @Override // yads.cs
    public final z04 a(h14 h14Var, aj0 aj0Var, long j) {
        wc0 wc0VarA = this.j.a();
        p16 p16Var = this.s;
        if (p16Var != null) {
            wc0VarA.a(p16Var);
        }
        Uri uri = this.i.a;
        q15 q15Var = this.k;
        rw4 rw4Var = this.g;
        if (rw4Var != null) {
            return new v15(uri, wc0VarA, x15.a((bt2) ((defpackage.vp0) q15Var).c, rw4Var), this.l, new tl2(this.d.c, 0, h14Var), this.m, new k14(this.c.c, 0, h14Var, 0L), this, aj0Var, this.i.c, this.n);
        }
        defpackage.ud.g();
        return null;
    }

    @Override // yads.cs
    public final p04 c() {
        return this.h;
    }

    @Override // yads.cs
    public final void d() {
    }

    @Override // yads.cs
    public final void e() {
        this.l.release();
    }

    @Override // yads.cs
    public final void a(p16 p16Var) {
        kx5 w15Var;
        this.s = p16Var;
        this.l.prepare();
        xl2 xl2Var = this.l;
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        rw4 rw4Var = this.g;
        if (rw4Var != null) {
            xl2Var.a(looperMyLooper, rw4Var);
            jl5 jl5Var = new jl5(this.p, this.q, this.r, this.h);
            if (this.o) {
                w15Var = jl5Var;
                w15Var = new w15(jl5Var);
            }
            w15Var = jl5Var;
            a(w15Var);
            return;
        }
        defpackage.ud.g();
    }

    @Override // yads.cs
    public final void a(z04 z04Var) {
        v15 v15Var = (v15) z04Var;
        if (v15Var.w) {
            for (lc5 lc5Var : v15Var.t) {
                lc5Var.a();
                lc5Var.d();
            }
        }
        v15Var.l.a(v15Var);
        v15Var.q.removeCallbacksAndMessages(null);
        v15Var.r = null;
        v15Var.M = true;
    }
}
