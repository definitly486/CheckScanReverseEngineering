package com.monetization.ads.exo.source.dash;

import androidx.media3.common.C;
import defpackage.ud;
import yads.a6;
import yads.au4;
import yads.eb;
import yads.hx5;
import yads.j04;
import yads.jx5;
import yads.kc0;
import yads.kx5;
import yads.o75;
import yads.p04;
import yads.qc0;
import yads.u56;
import yads.zj;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends kx5 {
    public final long c;
    public final long d;
    public final long e;
    public final int f;
    public final long g;
    public final long h;
    public final long i;
    public final kc0 j;
    public final p04 k;
    public final j04 l;

    public b(long j, long j2, long j3, int i, long j4, long j5, long j6, kc0 kc0Var, p04 p04Var, j04 j04Var) {
        if (kc0Var.d != (j04Var != null)) {
            ud.g();
            throw null;
        }
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = i;
        this.g = j4;
        this.h = j5;
        this.i = j6;
        this.j = kc0Var;
        this.k = p04Var;
        this.l = j04Var;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00e3  */
    @Override // yads.kx5
    public final jx5 a(int i, jx5 jx5Var, long j) {
        boolean z;
        long j2;
        long j3;
        kc0 kc0Var;
        boolean z2;
        qc0 qc0VarD;
        zj.a(i, 1);
        long jA = this.i;
        kc0 kc0Var2 = this.j;
        boolean z3 = kc0Var2.d;
        long j4 = C.TIME_UNSET;
        if (z3 && kc0Var2.e != C.TIME_UNSET && kc0Var2.b == C.TIME_UNSET) {
            if (j > 0) {
                jA += j;
                if (jA > this.h) {
                    z = true;
                    j2 = -9223372036854775807L;
                    j3 = -9223372036854775807L;
                }
                Object obj = jx5.s;
                p04 p04Var = this.k;
                kc0Var = this.j;
                long j5 = this.c;
                long j6 = this.d;
                long j7 = this.e;
                if (kc0Var.d || kc0Var.e == j2 || kc0Var.b != j2) {
                    z2 = false;
                } else {
                    z2 = z;
                }
                return jx5Var.a(obj, p04Var, kc0Var, j5, j6, j7, true, z2, this.l, j3, this.h, 0, a() - 1, this.g);
            }
            long j8 = this.g + jA;
            long jA2 = u56.a(kc0Var2.a(0));
            int i2 = 0;
            while (i2 < this.j.m.size() - 1 && j8 >= jA2) {
                j8 -= jA2;
                i2++;
                jA2 = u56.a(this.j.a(i2));
            }
            au4 au4Var = (au4) this.j.m.get(i2);
            int size = au4Var.c.size();
            z = true;
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    j2 = j4;
                    i3 = -1;
                    break;
                }
                j2 = j4;
                if (((eb) au4Var.c.get(i3)).b == 2) {
                    break;
                }
                i3++;
                j4 = j2;
            }
            if (i3 != -1 && (qc0VarD = ((o75) ((eb) au4Var.c.get(i3)).c.get(0)).d()) != null && qc0VarD.c(jA2) != 0) {
                jA = (qc0VarD.a(qc0VarD.a(j8, jA2)) + jA) - j8;
            }
        } else {
            z = true;
            j2 = -9223372036854775807L;
        }
        j3 = jA;
        Object obj2 = jx5.s;
        p04 p04Var2 = this.k;
        kc0Var = this.j;
        long j9 = this.c;
        long j10 = this.d;
        long j11 = this.e;
        if (kc0Var.d) {
            z2 = false;
        } else {
            z2 = false;
        }
        return jx5Var.a(obj2, p04Var2, kc0Var, j9, j10, j11, true, z2, this.l, j3, this.h, 0, a() - 1, this.g);
    }

    @Override // yads.kx5
    public final int b() {
        return 1;
    }

    @Override // yads.kx5
    public final hx5 a(int i, hx5 hx5Var, boolean z) {
        zj.a(i, a());
        String str = z ? ((au4) this.j.m.get(i)).a : null;
        Integer numValueOf = z ? Integer.valueOf(this.f + i) : null;
        long jA = u56.a(this.j.a(i));
        long jA2 = u56.a(((au4) this.j.m.get(i)).b - ((au4) this.j.m.get(0)).b) - this.g;
        hx5Var.getClass();
        return hx5Var.a(str, numValueOf, 0, jA, jA2, a6.g, false);
    }

    @Override // yads.kx5
    public final int a() {
        return this.j.m.size();
    }

    @Override // yads.kx5
    public final int a(Object obj) {
        int iIntValue;
        if ((obj instanceof Integer) && (iIntValue = ((Integer) obj).intValue() - this.f) >= 0 && iIntValue < a()) {
            return iIntValue;
        }
        return -1;
    }

    @Override // yads.kx5
    public final Object a(int i) {
        zj.a(i, a());
        return Integer.valueOf(this.f + i);
    }
}
