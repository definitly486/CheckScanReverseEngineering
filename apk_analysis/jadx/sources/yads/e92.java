package yads;

import defpackage.kv2;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e92 {
    public static final m36 A;
    public static final l66 B;
    public static final l66 C;
    public static final l66 D;
    public static final l66 E;
    public static final l66 F;
    public static final l66 G;
    public static final l66 H;
    public static final l66 I;
    public static final st3 J;
    public static final k11 a;
    public static final xr2 b;
    public static final xr2 c;
    public static final xr2 d;
    public static final xr2 e;
    public static final w02 f;
    public static final xr2 g;
    public static final xr2 h;
    public static final xr2 i;
    public static final xr2 j;
    public static final xr2 k;
    public static final xr2 l;
    public static final xr2 m;
    public static final xr2 n;
    public static final xr2 o;
    public static final xr2 p;
    public static final v02 q;
    public static final m36 r;
    public static final m36 s;
    public static final m36 t;
    public static final m36 u;
    public static final m36 v;
    public static final m36 w;
    public static final m36 x;
    public static final m36 y;
    public static final m36 z;

    static {
        xr2 xr2VarA = wr2.a(100L);
        xr2 xr2VarA2 = wr2.a(Double.valueOf(0.6d));
        xr2 xr2VarA3 = wr2.a(j11.FADE);
        Double dValueOf = Double.valueOf(1.0d);
        a = new k11(xr2VarA, xr2VarA2, xr2VarA3, wr2.a(dValueOf));
        b = wr2.a(dValueOf);
        c = wr2.a(Boolean.TRUE);
        d = wr2.a(12L);
        g12 g12Var = g12.SP;
        e = wr2.a(g12Var);
        f = new w02(new ej2());
        g = wr2.a(Double.valueOf(0.0d));
        Boolean bool = Boolean.FALSE;
        h = wr2.a(bool);
        bp1 bp1Var = bp1.NONE;
        i = wr2.a(bp1Var);
        f11 f11Var = f11.START;
        j = wr2.a(f11Var);
        h11 h11Var = h11.TOP;
        k = wr2.a(h11Var);
        l = wr2.a(-16777216);
        m = wr2.a(bool);
        a82 a82Var = a82.END;
        n = wr2.a(a82Var);
        o = wr2.a(bp1Var);
        ri2 ri2Var = ri2.VISIBLE;
        p = wr2.a(ri2Var);
        q = new v02(new pp1());
        r = new m36(new defpackage.oy2(2), yr.I(f11.values()));
        s = new m36(new defpackage.yt1(3), yr.I(h11.values()));
        t = new m36(new defpackage.br2(2), g12Var);
        u = new m36(new defpackage.qy2(6), yr.I(tf1.values()));
        v = new m36(new defpackage.et0(5), bp1Var);
        w = new m36(new defpackage.w82(6), f11Var);
        x = new m36(new defpackage.sy2(6), h11Var);
        y = new m36(new defpackage.ty2(6), a82Var);
        z = new m36(new defpackage.uy2(3), bp1Var);
        A = new m36(new defpackage.vy2(6), ri2Var);
        B = new defpackage.qz0(7);
        C = new defpackage.rz0(5);
        D = new defpackage.hm(6);
        E = new defpackage.cc(8);
        F = new defpackage.dc(4);
        G = new defpackage.d92(5);
        H = new kv2(5);
        I = new defpackage.ki0(6);
        J = new defpackage.ni0(4);
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean b(long j2) {
        return j2 >= 0;
    }

    public static final boolean c(long j2) {
        return j2 > 0;
    }

    public static final boolean d(long j2) {
        return j2 >= 0;
    }

    public static final boolean e(long j2) {
        return j2 >= 0;
    }

    public static final boolean f(long j2) {
        return j2 >= 0;
    }

    public static final boolean g(long j2) {
        return j2 >= 0;
    }

    public static final boolean h(Object obj) {
        return obj instanceof a82;
    }

    public static final boolean i(Object obj) {
        return obj instanceof bp1;
    }

    public static final boolean j(Object obj) {
        return obj instanceof ri2;
    }

    public static final boolean b(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean c(Object obj) {
        return obj instanceof g12;
    }

    public static final boolean d(Object obj) {
        return obj instanceof tf1;
    }

    public static final boolean e(Object obj) {
        return obj instanceof bp1;
    }

    public static final boolean f(Object obj) {
        return obj instanceof f11;
    }

    public static final boolean g(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean a(long j2) {
        return j2 >= 0;
    }

    public static final boolean a(Object obj) {
        return obj instanceof f11;
    }

    public static final boolean a(List list) {
        return list.size() >= 1;
    }
}
