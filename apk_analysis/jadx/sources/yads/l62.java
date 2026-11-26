package yads;

import defpackage.rs2;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class l62 {
    public static final xr2 a = wr2.a(Double.valueOf(1.0d));
    public static final xr2 b;
    public static final xr2 c;
    public static final w02 d;
    public static final xr2 e;
    public static final xr2 f;
    public static final xr2 g;
    public static final yc1 h;
    public static final xr2 i;
    public static final yc1 j;
    public static final xr2 k;
    public static final v02 l;
    public static final m36 m;
    public static final m36 n;
    public static final m36 o;
    public static final l66 p;
    public static final l66 q;
    public static final st3 r;
    public static final l66 s;
    public static final l66 t;
    public static final st3 u;

    static {
        Boolean bool = Boolean.FALSE;
        b = wr2.a(bool);
        c = wr2.a(bool);
        d = new w02(new ej2());
        e = wr2.a(bool);
        f = wr2.a(0L);
        g = wr2.a(335544320);
        h = new yc1(wr2.a(0L), wr2.a(12L), wr2.a(12L), wr2.a(0L));
        i = wr2.a(Boolean.TRUE);
        j = new yc1(wr2.a(8L), wr2.a(12L), wr2.a(12L), wr2.a(0L));
        ri2 ri2Var = ri2.VISIBLE;
        k = wr2.a(ri2Var);
        l = new v02(new pp1());
        m = new m36(new defpackage.ha2(1), yr.I(f11.values()));
        n = new m36(new defpackage.af(3), yr.I(h11.values()));
        o = new m36(new defpackage.bf(4), ri2Var);
        p = new defpackage.w7();
        q = new defpackage.x7(6);
        r = new rs2();
        s = new defpackage.mj(3);
        t = new defpackage.h8();
        u = new defpackage.i8();
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

    public static final boolean b(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean c(Object obj) {
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
