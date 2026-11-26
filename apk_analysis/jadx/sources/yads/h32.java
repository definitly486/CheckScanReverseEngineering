package yads;

import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h32 {
    public static final k11 a;
    public static final xr2 b;
    public static final xr2 c;
    public static final xr2 d;
    public static final w02 e;
    public static final xr2 f;
    public static final xr2 g;
    public static final v02 h;
    public static final m36 i;
    public static final m36 j;
    public static final m36 k;
    public static final m36 l;
    public static final l66 m;
    public static final l66 n;
    public static final l66 o;
    public static final st3 p;
    public static final st3 q;

    static {
        xr2 xr2VarA = wr2.a(100L);
        xr2 xr2VarA2 = wr2.a(Double.valueOf(0.6d));
        xr2 xr2VarA3 = wr2.a(j11.FADE);
        Double dValueOf = Double.valueOf(1.0d);
        a = new k11(xr2VarA, xr2VarA2, xr2VarA3, wr2.a(dValueOf));
        b = wr2.a(dValueOf);
        Boolean bool = Boolean.TRUE;
        c = wr2.a(bool);
        d = wr2.a(bool);
        e = new w02(new ej2());
        nd2 nd2Var = nd2.STATE_CHANGE;
        f = wr2.a(nd2Var);
        ri2 ri2Var = ri2.VISIBLE;
        g = wr2.a(ri2Var);
        h = new v02(new pp1());
        i = new m36(new defpackage.pf(8), yr.I(f11.values()));
        j = new m36(new defpackage.ft3(3), yr.I(h11.values()));
        k = new m36(new defpackage.gt3(5), nd2Var);
        l = new m36(new defpackage.sf(4), ri2Var);
        m = new defpackage.o2(5);
        n = new defpackage.p2(6);
        o = new defpackage.xy(7);
        p = new defpackage.ag();
        q = new defpackage.bg();
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean b(long j2) {
        return j2 >= 0;
    }

    public static final boolean c(Object obj) {
        return obj instanceof nd2;
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
