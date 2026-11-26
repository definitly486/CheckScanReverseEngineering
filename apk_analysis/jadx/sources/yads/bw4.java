package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class bw4 {
    public static final h14 s = new h14(new Object());
    public final kx5 a;
    public final h14 b;
    public final long c;
    public final long d;
    public final int e;
    public final up2 f;
    public final boolean g;
    public final g06 h;
    public final q06 i;
    public final List j;
    public final h14 k;
    public final boolean l;
    public final int m;
    public final dw4 n;
    public final boolean o;
    public volatile long p;
    public volatile long q;
    public volatile long r;

    public bw4(kx5 kx5Var, h14 h14Var, long j, long j2, int i, up2 up2Var, boolean z, g06 g06Var, q06 q06Var, List list, h14 h14Var2, boolean z2, int i2, dw4 dw4Var, long j3, long j4, long j5, boolean z3) {
        this.a = kx5Var;
        this.b = h14Var;
        this.c = j;
        this.d = j2;
        this.e = i;
        this.f = up2Var;
        this.g = z;
        this.h = g06Var;
        this.i = q06Var;
        this.j = list;
        this.k = h14Var2;
        this.l = z2;
        this.m = i2;
        this.n = dw4Var;
        this.p = j3;
        this.q = j4;
        this.r = j5;
        this.o = z3;
    }

    public final bw4 a(h14 h14Var) {
        return new bw4(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, h14Var, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }

    public final bw4 a(kx5 kx5Var) {
        return new bw4(kx5Var, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }

    public final bw4 a(int i) {
        return new bw4(this.a, this.b, this.c, this.d, i, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }

    public final bw4 a(up2 up2Var) {
        return new bw4(this.a, this.b, this.c, this.d, this.e, up2Var, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }

    public final bw4 a(h14 h14Var, long j, long j2, long j3, long j4, g06 g06Var, q06 q06Var, List list) {
        return new bw4(this.a, h14Var, j2, j3, this.e, this.f, this.g, g06Var, q06Var, list, this.k, this.l, this.m, this.n, this.p, j4, j, this.o);
    }
}
