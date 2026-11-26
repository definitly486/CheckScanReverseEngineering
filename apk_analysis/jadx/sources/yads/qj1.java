package yads;

import defpackage.us2;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class qj1 {
    public static final xr2 a = wr2.a(16768096);
    public static final xr2 b = wr2.a(Double.valueOf(1.3d));
    public static final xr2 c = wr2.a(Double.valueOf(1.0d));
    public static final xr2 d;
    public static final w02 e;
    public static final xr2 f;
    public static final xr2 g;
    public static final e02 h;
    public static final af1 i;
    public static final xr2 j;
    public static final v02 k;
    public static final m36 l;
    public static final m36 m;
    public static final m36 n;
    public static final m36 o;
    public static final l66 p;
    public static final l66 q;
    public static final l66 r;
    public static final l66 s;
    public static final l66 t;
    public static final st3 u;

    static {
        aj1 aj1Var = aj1.SCALE;
        d = wr2.a(aj1Var);
        e = new w02(new ej2());
        f = wr2.a(865180853);
        g = wr2.a(Double.valueOf(0.5d));
        h = new e02(new gy1(null, gy1.f, gy1.g, gy1.h, null));
        i = new af1(wr2.a(15L));
        ri2 ri2Var = ri2.VISIBLE;
        j = wr2.a(ri2Var);
        k = new v02(new pp1());
        l = new m36(new defpackage.hf(7), yr.I(f11.values()));
        m = new m36(new defpackage.ay(5), yr.I(h11.values()));
        n = new m36(new us2(8), aj1Var);
        o = new m36(new defpackage.uf0(6), ri2Var);
        p = new defpackage.h2(9);
        q = new defpackage.i2(8);
        r = new defpackage.j2(6);
        s = new defpackage.k2(7);
        t = new defpackage.l2(7);
        u = new defpackage.m2(8);
    }

    public static final boolean a(double d2) {
        return d2 > 0.0d;
    }

    public static final boolean b(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean c(double d2) {
        return d2 > 0.0d;
    }

    public static final boolean d(Object obj) {
        return obj instanceof ri2;
    }

    public static final boolean a(long j2) {
        return j2 >= 0;
    }

    public static final boolean c(Object obj) {
        return obj instanceof aj1;
    }

    public static final boolean a(Object obj) {
        return obj instanceof f11;
    }

    public static final boolean a(List list) {
        return list.size() >= 1;
    }

    public static final boolean b(long j2) {
        return j2 >= 0;
    }

    public static final boolean b(Object obj) {
        return obj instanceof h11;
    }
}
