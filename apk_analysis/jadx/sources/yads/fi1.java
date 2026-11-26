package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class fi1 {
    public static final xr2 a = wr2.a(Double.valueOf(1.0d));
    public static final xr2 b;
    public static final xr2 c;
    public static final xr2 d;
    public static final xr2 e;
    public static final m36 f;
    public static final m36 g;
    public static final m36 h;
    public static final l66 i;

    static {
        f11 f11Var = f11.CENTER;
        b = wr2.a(f11Var);
        h11 h11Var = h11.CENTER;
        c = wr2.a(h11Var);
        d = wr2.a(Boolean.FALSE);
        vi1 vi1Var = vi1.FILL;
        e = wr2.a(vi1Var);
        int i2 = 7;
        f = new m36(new defpackage.ws0(i2), f11Var);
        g = new m36(new defpackage.yc2(i2), h11Var);
        h = new m36(new defpackage.zc2(8), vi1Var);
        i = new defpackage.ad2();
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean b(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean c(Object obj) {
        return obj instanceof vi1;
    }

    public static final boolean a(Object obj) {
        return obj instanceof f11;
    }
}
