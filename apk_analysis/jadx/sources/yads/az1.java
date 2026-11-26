package yads;

import defpackage.h7;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class az1 {
    public static final xr2 a = wr2.a(Double.valueOf(1.0d));
    public static final xr2 b = wr2.a(12L);
    public static final xr2 c;
    public static final w02 d;
    public static final xr2 e;
    public static final xr2 f;
    public static final xr2 g;
    public static final xr2 h;
    public static final v02 i;
    public static final m36 j;
    public static final m36 k;
    public static final m36 l;
    public static final m36 m;
    public static final m36 n;
    public static final l66 o;
    public static final l66 p;
    public static final l66 q;
    public static final l66 r;
    public static final l66 s;
    public static final st3 t;
    public static final l66 u;
    public static final st3 v;

    static {
        g12 g12Var = g12.SP;
        c = wr2.a(g12Var);
        d = new w02(new ej2());
        e = wr2.a(1929379840);
        f = wr2.a(Double.valueOf(0.0d));
        g = wr2.a(-16777216);
        ri2 ri2Var = ri2.VISIBLE;
        h = wr2.a(ri2Var);
        i = new v02(new pp1());
        j = new m36(new defpackage.ji(3), yr.I(f11.values()));
        k = new m36(new defpackage.eg1(3), yr.I(h11.values()));
        l = new m36(new h7(2), g12Var);
        m = new m36(new defpackage.gg1(5), yr.I(tf1.values()));
        n = new m36(new defpackage.ti2(1), ri2Var);
        o = new defpackage.i01(4);
        p = new defpackage.zc5();
        q = new defpackage.fe0(2);
        r = new defpackage.mi2();
        s = new defpackage.me0(7);
        t = new defpackage.ti0(5);
        u = new defpackage.d(4);
        v = new defpackage.yq(3);
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
        return obj instanceof ri2;
    }

    public static final boolean b(List list) {
        return list.size() >= 1;
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
