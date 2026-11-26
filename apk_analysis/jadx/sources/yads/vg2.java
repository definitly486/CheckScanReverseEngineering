package yads;

import defpackage.lx9;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class vg2 {
    public static final xr2 a = wr2.a(Double.valueOf(1.0d));
    public static final xr2 b;
    public static final w02 c;
    public static final xr2 d;
    public static final xr2 e;
    public static final xr2 f;
    public static final xr2 g;
    public static final xr2 h;
    public static final v02 i;
    public static final m36 j;
    public static final m36 k;
    public static final m36 l;
    public static final m36 m;
    public static final l66 n;
    public static final l66 o;
    public static final l66 p;
    public static final st3 q;
    public static final st3 r;

    static {
        Boolean bool = Boolean.FALSE;
        b = wr2.a(bool);
        c = new w02(new ej2());
        d = wr2.a(bool);
        e = wr2.a(bool);
        f = wr2.a(bool);
        yg2 yg2Var = yg2.FIT;
        g = wr2.a(yg2Var);
        ri2 ri2Var = ri2.VISIBLE;
        h = wr2.a(ri2Var);
        i = new v02(new pp1());
        j = new m36(new defpackage.em4(4), yr.I(f11.values()));
        k = new m36(new defpackage.k31(5), yr.I(h11.values()));
        l = new m36(new lx9(1), yg2Var);
        m = new m36(new defpackage.lm(7), ri2Var);
        n = new defpackage.ki0(11);
        o = new defpackage.ni0(7);
        p = new defpackage.fe0(4);
        q = new defpackage.mi2();
        r = new defpackage.me0(11);
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean b(long j2) {
        return j2 >= 0;
    }

    public static final boolean c(Object obj) {
        return obj instanceof yg2;
    }

    public static final boolean d(Object obj) {
        return obj instanceof ri2;
    }

    public static final boolean b(Object obj) {
        return obj instanceof h11;
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
