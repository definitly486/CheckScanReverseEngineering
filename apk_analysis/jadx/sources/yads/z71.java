package yads;

import defpackage.rk3;

/* JADX INFO: loaded from: classes6.dex */
public abstract class z71 {
    public static final xr2 a;
    public static final xr2 b;
    public static final v91 c;
    public static final xr2 d;
    public static final m36 e;
    public static final m36 f;
    public static final l66 g;
    public static final l66 h;

    static {
        m11 m11Var = m11.NORMAL;
        a = wr2.a(m11Var);
        o11 o11Var = o11.LINEAR;
        b = wr2.a(o11Var);
        c = new v91(new ie1(wr2.a(1L)));
        d = wr2.a(0L);
        e = new m36(new defpackage.xr2(5), m11Var);
        f = new m36(new defpackage.yr2(2), o11Var);
        g = new rk3();
        h = new defpackage.n7(10);
    }

    public static final boolean a(long j) {
        return j >= 0;
    }

    public static final boolean b(long j) {
        return j >= 0;
    }

    public static final boolean a(Object obj) {
        return obj instanceof m11;
    }

    public static final boolean b(Object obj) {
        return obj instanceof o11;
    }
}
