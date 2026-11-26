package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class b60 extends zr {
    public final int o;
    public final long p;
    public final ez q;
    public long r;
    public volatile boolean s;
    public boolean t;

    public b60(wc0 wc0Var, bd0 bd0Var, vz2 vz2Var, int i, Object obj, long j, long j2, long j3, long j4, long j5, int i2, long j6, ez ezVar) {
        super(wc0Var, bd0Var, vz2Var, i, obj, j, j2, j3, j4, j5);
        this.o = i2;
        this.p = j6;
        this.q = ezVar;
    }

    @Override // yads.nu3
    public final void a() {
        int iA;
        if (this.r == 0) {
            bs bsVar = this.m;
            if (bsVar == null) {
                defpackage.ud.g();
                return;
            }
            long j = this.p;
            for (lc5 lc5Var : bsVar.b) {
                if (lc5Var.E != j) {
                    lc5Var.E = j;
                    lc5Var.z = true;
                }
            }
            ez ezVar = this.q;
            long j2 = this.k;
            long j3 = C.TIME_UNSET;
            long j4 = j2 == C.TIME_UNSET ? -9223372036854775807L : j2 - this.p;
            long j5 = this.l;
            if (j5 != C.TIME_UNSET) {
                j3 = j5 - this.p;
            }
            ((nv) ezVar).a(bsVar, j4, j3);
        }
        try {
            bd0 bd0Var = this.b;
            long j6 = this.r;
            long j7 = bd0Var.g;
            long j8 = -1;
            if (j7 != -1) {
                j8 = j7 - j6;
            }
            bd0 bd0VarA = bd0Var.a(j6, j8);
            rq5 rq5Var = this.i;
            wk0 wk0Var = new wk0(rq5Var, bd0VarA.f, rq5Var.a(bd0VarA));
            do {
                try {
                    if (this.s) {
                        break;
                    }
                    iA = ((nv) this.q).b.a(wk0Var, nv.l);
                    if (iA == 1) {
                        throw new IllegalStateException();
                    }
                } catch (Throwable th) {
                    this.r = wk0Var.d - this.b.f;
                    throw th;
                }
            } while (iA == 0);
            this.r = wk0Var.d - this.b.f;
            zc0.a(this.i);
            this.t = !this.s;
        } catch (Throwable th2) {
            zc0.a(this.i);
            throw th2;
        }
    }

    @Override // yads.nu3
    public final void b() {
        this.s = true;
    }

    @Override // yads.zr
    public final long c() {
        return this.j + ((long) this.o);
    }

    @Override // yads.zr
    public final boolean d() {
        return this.t;
    }
}
