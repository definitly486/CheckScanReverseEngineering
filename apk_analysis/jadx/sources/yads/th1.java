package yads;

import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class th1 {
    public static final k11 a;
    public static final xr2 b;
    public static final xr2 c;
    public static final xr2 d;
    public static final xr2 e;
    public static final w02 f;
    public static final xr2 g;
    public static final v02 h;
    public static final m36 i;
    public static final m36 j;
    public static final m36 k;
    public static final m36 l;
    public static final m36 m;
    public static final l66 n;
    public static final l66 o;
    public static final l66 p;
    public static final l66 q;
    public static final st3 r;

    static {
        xr2 xr2VarA = wr2.a(100L);
        xr2 xr2VarA2 = wr2.a(Double.valueOf(0.6d));
        xr2 xr2VarA3 = wr2.a(j11.FADE);
        Double dValueOf = Double.valueOf(1.0d);
        a = new k11(xr2VarA, xr2VarA2, xr2VarA3, wr2.a(dValueOf));
        b = wr2.a(dValueOf);
        c = wr2.a(Boolean.TRUE);
        f11 f11Var = f11.START;
        d = wr2.a(f11Var);
        h11 h11Var = h11.TOP;
        e = wr2.a(h11Var);
        f = new w02(new ej2());
        ri2 ri2Var = ri2.VISIBLE;
        g = wr2.a(ri2Var);
        h = new v02(new pp1());
        i = new m36(new defpackage.w82(11), yr.I(f11.values()));
        j = new m36(new defpackage.sy2(9), yr.I(h11.values()));
        k = new m36(new defpackage.ty2(9), f11Var);
        l = new m36(new defpackage.uy2(7), h11Var);
        m = new m36(new defpackage.vy2(8), ri2Var);
        n = new defpackage.qz0(11);
        o = new defpackage.rz0(8);
        p = new defpackage.hm(9);
        q = new defpackage.cc(12);
        r = new defpackage.dc(9);
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

    public static final boolean d(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean e(Object obj) {
        return obj instanceof ri2;
    }

    public static final boolean b(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean c(Object obj) {
        return obj instanceof f11;
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
