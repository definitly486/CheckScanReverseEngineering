package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class u00 extends c03 {
    public final long d;
    public final long e;
    public final long f;
    public final boolean g;

    public u00(kx5 kx5Var, long j, long j2) throws v00 {
        super(kx5Var);
        boolean z = false;
        if (kx5Var.a() != 1) {
            throw new v00(0);
        }
        jx5 jx5VarA = kx5Var.a(0, new jx5(), 0L);
        long jMax = Math.max(0L, j);
        if (!jx5VarA.m && jMax != 0 && !jx5VarA.i) {
            throw new v00(1);
        }
        long jMax2 = j2 == Long.MIN_VALUE ? jx5VarA.o : Math.max(0L, j2);
        long j3 = jx5VarA.o;
        long j4 = C.TIME_UNSET;
        if (j3 != C.TIME_UNSET) {
            jMax2 = jMax2 > j3 ? j3 : jMax2;
            if (jMax > jMax2) {
                throw new v00(2);
            }
        }
        this.d = jMax;
        this.e = jMax2;
        this.f = jMax2 != C.TIME_UNSET ? jMax2 - jMax : j4;
        if (jx5VarA.j && (jMax2 == C.TIME_UNSET || (j3 != C.TIME_UNSET && jMax2 == j3))) {
            z = true;
        }
        this.g = z;
    }

    @Override // yads.c03, yads.kx5
    public final jx5 a(int i, jx5 jx5Var, long j) {
        this.c.a(0, jx5Var, 0L);
        long j2 = jx5Var.r;
        long j3 = this.d;
        jx5Var.r = j2 + j3;
        jx5Var.o = this.f;
        jx5Var.j = this.g;
        long j4 = jx5Var.n;
        if (j4 != C.TIME_UNSET) {
            long jMax = Math.max(j4, j3);
            jx5Var.n = jMax;
            long j5 = this.e;
            if (j5 != C.TIME_UNSET) {
                jMax = Math.min(jMax, j5);
            }
            j3 = this.d;
            jx5Var.n = jMax - j3;
        }
        long jB = u56.b(j3);
        long j6 = jx5Var.f;
        if (j6 != C.TIME_UNSET) {
            jx5Var.f = j6 + jB;
        }
        long j7 = jx5Var.g;
        if (j7 != C.TIME_UNSET) {
            jx5Var.g = j7 + jB;
        }
        return jx5Var;
    }

    @Override // yads.kx5
    public final hx5 a(int i, hx5 hx5Var, boolean z) {
        this.c.a(0, hx5Var, z);
        long j = hx5Var.f - this.d;
        long j2 = this.f;
        long j3 = C.TIME_UNSET;
        if (j2 != C.TIME_UNSET) {
            j3 = j2 - j;
        }
        return hx5Var.a(hx5Var.b, hx5Var.c, 0, j3, j, a6.g, false);
    }
}
