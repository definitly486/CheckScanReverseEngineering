package yads;

import defpackage.g7;
import defpackage.ik3;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zg1 {
    public static final xr2 a = wr2.a(Double.valueOf(1.0d));
    public static final xr2 b;
    public static final xr2 c;
    public static final w02 d;
    public static final xr2 e;
    public static final xr2 f;
    public static final xr2 g;
    public static final xr2 h;
    public static final xr2 i;
    public static final xr2 j;
    public static final v02 k;
    public static final m36 l;
    public static final m36 m;
    public static final m36 n;
    public static final m36 o;
    public static final m36 p;
    public static final m36 q;
    public static final m36 r;
    public static final l66 s;
    public static final l66 t;
    public static final l66 u;
    public static final l66 v;
    public static final l66 w;
    public static final l66 x;
    public static final l66 y;
    public static final st3 z;

    static {
        hg1 hg1Var = hg1.START;
        b = wr2.a(hg1Var);
        c = wr2.a(0L);
        d = new w02(new ej2());
        e = wr2.a(8L);
        jg1 jg1Var = jg1.HORIZONTAL;
        f = wr2.a(jg1Var);
        g = wr2.a(Boolean.FALSE);
        lg1 lg1Var = lg1.DEFAULT;
        h = wr2.a(lg1Var);
        ng1 ng1Var = ng1.NONE;
        i = wr2.a(ng1Var);
        ri2 ri2Var = ri2.VISIBLE;
        j = wr2.a(ri2Var);
        k = new v02(new pp1());
        int i2 = 3;
        l = new m36(new ik3(i2), yr.I(f11.values()));
        m = new m36(new defpackage.xr2(6), yr.I(h11.values()));
        n = new m36(new defpackage.yr2(i2), hg1Var);
        int i3 = 4;
        o = new m36(new defpackage.gf0(i3), jg1Var);
        p = new m36(new defpackage.te(2), lg1Var);
        q = new m36(new defpackage.au0(i3), ng1Var);
        int i4 = 9;
        r = new m36(new defpackage.mi(i4), ri2Var);
        int i5 = 10;
        s = new defpackage.ti0(i5);
        t = new defpackage.d(11);
        u = new defpackage.yq(i5);
        int i6 = 7;
        v = new g7(i6);
        w = new defpackage.y83(i6);
        x = new defpackage.ej0();
        y = new defpackage.k(7);
        z = new defpackage.i01(i4);
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean b(long j2) {
        return j2 >= 0;
    }

    public static final boolean c(long j2) {
        return j2 >= 0;
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

    public static final boolean g(Object obj) {
        return obj instanceof ri2;
    }

    public static final boolean b(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean c(Object obj) {
        return obj instanceof hg1;
    }

    public static final boolean d(Object obj) {
        return obj instanceof jg1;
    }

    public static final boolean e(Object obj) {
        return obj instanceof ng1;
    }

    public static final boolean f(Object obj) {
        return obj instanceof lg1;
    }

    public static final boolean a(long j2) {
        return j2 > 0;
    }

    public static final boolean a(Object obj) {
        return obj instanceof f11;
    }

    public static final boolean a(List list) {
        return list.size() >= 1;
    }
}
