package yads;

import defpackage.in6;
import defpackage.sc7;
import defpackage.yr;

/* JADX INFO: loaded from: classes6.dex */
public abstract class r22 {
    public static final xr2 a = wr2.a(12L);
    public static final xr2 b;
    public static final xr2 c;
    public static final xr2 d;
    public static final m36 e;
    public static final m36 f;
    public static final l66 g;
    public static final l66 h;

    static {
        g12 g12Var = g12.SP;
        b = wr2.a(g12Var);
        c = wr2.a(Double.valueOf(0.0d));
        d = wr2.a(-16777216);
        e = new m36(new in6(4), g12Var);
        f = new m36(new sc7(4), yr.I(tf1.values()));
        g = new defpackage.pg(12);
        h = new defpackage.qg(11);
    }

    public static final boolean a(long j) {
        return j >= 0;
    }

    public static final boolean b(long j) {
        return j > 0;
    }

    public static final boolean a(Object obj) {
        return obj instanceof g12;
    }

    public static final boolean b(Object obj) {
        return obj instanceof tf1;
    }
}
