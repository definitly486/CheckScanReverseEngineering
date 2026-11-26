package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class sd1 {
    public static final xr2 a = wr2.a(Double.valueOf(0.0d));
    public static final xr2 b = wr2.a(200L);
    public static final xr2 c;
    public static final xr2 d;
    public static final m36 e;
    public static final l66 f;
    public static final l66 g;
    public static final l66 h;

    static {
        o11 o11Var = o11.EASE_IN_OUT;
        c = wr2.a(o11Var);
        d = wr2.a(0L);
        e = new m36(new defpackage.p12(8), o11Var);
        f = new defpackage.j2(7);
        g = new defpackage.k2(8);
        h = new defpackage.l2(8);
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean b(long j) {
        return j >= 0;
    }

    public static final boolean a(long j) {
        return j >= 0;
    }

    public static final boolean a(Object obj) {
        return obj instanceof o11;
    }
}
