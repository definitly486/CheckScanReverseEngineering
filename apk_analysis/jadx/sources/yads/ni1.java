package yads;

import defpackage.ec9;
import defpackage.fc9;
import defpackage.ii3;
import defpackage.ki3;
import defpackage.xn3;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ni1 {
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
    public static final v02 m;
    public static final m36 n;
    public static final m36 o;
    public static final m36 p;
    public static final m36 q;
    public static final m36 r;
    public static final m36 s;
    public static final m36 t;
    public static final l66 u;
    public static final l66 v;
    public static final l66 w;
    public static final st3 x;

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
        Boolean bool = Boolean.FALSE;
        g = wr2.a(bool);
        h = wr2.a(335544320);
        i = wr2.a(bool);
        vi1 vi1Var = vi1.FILL;
        j = wr2.a(vi1Var);
        y41 y41Var = y41.SOURCE_IN;
        k = wr2.a(y41Var);
        ri2 ri2Var = ri2.VISIBLE;
        l = wr2.a(ri2Var);
        m = new v02(new pp1());
        int i2 = 5;
        n = new m36(new xn3(i2), yr.I(f11.values()));
        int i3 = 3;
        o = new m36(new defpackage.ji1(i3), yr.I(h11.values()));
        p = new m36(new ii3(i2), f11Var);
        q = new m36(new ec9(i3), h11Var);
        r = new m36(new fc9(2), vi1Var);
        s = new m36(new defpackage.jy2(i2), y41Var);
        t = new m36(new ki3(4), ri2Var);
        u = new defpackage.zg();
        v = new defpackage.ah();
        w = new defpackage.rg(12);
        x = new defpackage.sg(11);
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
        return obj instanceof y41;
    }

    public static final boolean g(Object obj) {
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
