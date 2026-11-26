package yads;

import defpackage.kv2;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class gl1 {
    public static final l66 A;
    public static final l66 B;
    public static final l66 C;
    public static final l66 D;
    public static final l66 E;
    public static final l66 F;
    public static final l66 G;
    public static final l66 H;
    public static final st3 I;
    public static final xr2 a = wr2.a(Double.valueOf(1.0d));
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
    public static final v02 p;
    public static final m36 q;
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
        yj1 yj1Var = yj1.AUTO;
        b = wr2.a(yj1Var);
        ak1 ak1Var = ak1.DEFAULT;
        c = wr2.a(ak1Var);
        d = wr2.a(12L);
        g12 g12Var = g12.SP;
        e = wr2.a(g12Var);
        f = new w02(new ej2());
        g = wr2.a(1929379840);
        h = wr2.a(Boolean.TRUE);
        ck1 ck1Var = ck1.MULTI_LINE_TEXT;
        i = wr2.a(ck1Var);
        j = wr2.a(Double.valueOf(0.0d));
        k = wr2.a(Boolean.FALSE);
        f11 f11Var = f11.START;
        l = wr2.a(f11Var);
        h11 h11Var = h11.CENTER;
        m = wr2.a(h11Var);
        n = wr2.a(-16777216);
        ri2 ri2Var = ri2.VISIBLE;
        o = wr2.a(ri2Var);
        p = new v02(new pp1());
        q = new m36(new defpackage.yt1(4), yr.I(f11.values()));
        r = new m36(new defpackage.br2(3), yr.I(h11.values()));
        s = new m36(new defpackage.qy2(7), yj1Var);
        t = new m36(new defpackage.et0(7), ak1Var);
        u = new m36(new defpackage.w82(7), g12Var);
        v = new m36(new defpackage.sy2(7), yr.I(tf1.values()));
        w = new m36(new defpackage.ty2(7), ck1Var);
        x = new m36(new defpackage.uy2(4), f11Var);
        y = new m36(new defpackage.vy2(7), h11Var);
        z = new m36(new defpackage.ii5(4), ri2Var);
        A = new defpackage.rz0(7);
        B = new defpackage.hm(7);
        C = new defpackage.cc(10);
        D = new defpackage.dc(5);
        E = new defpackage.d92(6);
        F = new kv2(6);
        G = new defpackage.ki0(7);
        H = new defpackage.ni0(5);
        I = new defpackage.fe0(3);
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
        return j2 > 0;
    }

    public static final boolean f(long j2) {
        return j2 > 0;
    }

    public static final boolean g(long j2) {
        return j2 >= 0;
    }

    public static final boolean h(Object obj) {
        return obj instanceof f11;
    }

    public static final boolean i(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean j(Object obj) {
        return obj instanceof ri2;
    }

    public static final boolean b(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean c(Object obj) {
        return obj instanceof yj1;
    }

    public static final boolean d(Object obj) {
        return obj instanceof ak1;
    }

    public static final boolean e(Object obj) {
        return obj instanceof g12;
    }

    public static final boolean f(Object obj) {
        return obj instanceof tf1;
    }

    public static final boolean g(Object obj) {
        return obj instanceof ck1;
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
