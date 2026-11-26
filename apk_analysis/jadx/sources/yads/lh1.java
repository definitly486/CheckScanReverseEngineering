package yads;

import defpackage.dr8;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class lh1 {
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
    public static final v02 k;
    public static final m36 l;
    public static final m36 m;
    public static final m36 n;
    public static final m36 o;
    public static final m36 p;
    public static final m36 q;
    public static final l66 r;
    public static final l66 s;
    public static final l66 t;
    public static final st3 u;

    static {
        xr2 xr2VarA = wr2.a(100L);
        xr2 xr2VarA2 = wr2.a(Double.valueOf(0.6d));
        xr2 xr2VarA3 = wr2.a(j11.FADE);
        Double dValueOf = Double.valueOf(1.0d);
        a = new k11(xr2VarA, xr2VarA2, xr2VarA3, wr2.a(dValueOf));
        b = wr2.a(dValueOf);
        c = wr2.a(Boolean.TRUE);
        f11 f11Var = f11.CENTER;
        d = wr2.a(f11Var);
        h11 h11Var = h11.CENTER;
        e = wr2.a(h11Var);
        f = new w02(new ej2());
        g = wr2.a(335544320);
        h = wr2.a(Boolean.FALSE);
        vi1 vi1Var = vi1.FILL;
        i = wr2.a(vi1Var);
        ri2 ri2Var = ri2.VISIBLE;
        j = wr2.a(ri2Var);
        k = new v02(new pp1());
        l = new m36(new defpackage.eg0(4), yr.I(f11.values()));
        m = new m36(new defpackage.t2(5), yr.I(h11.values()));
        n = new m36(new defpackage.o44(5), f11Var);
        o = new m36(new defpackage.hg0(3), h11Var);
        p = new m36(new defpackage.nx0(6), vi1Var);
        q = new m36(new dr8(2), ri2Var);
        r = new defpackage.gg();
        s = new defpackage.hg(9);
        t = new defpackage.ig(8);
        u = new defpackage.jg();
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean b(long j2) {
        return j2 >= 0;
    }

    public static final boolean c(Object obj) {
        return obj instanceof f11;
    }

    public static final boolean d(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean e(Object obj) {
        return obj instanceof vi1;
    }

    public static final boolean f(Object obj) {
        return obj instanceof ri2;
    }

    public static final boolean b(Object obj) {
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
