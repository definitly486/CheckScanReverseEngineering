package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class p42 {
    public static final r42 a = new r42(new b52());
    public static final xr2 b;
    public static final xr2 c;
    public static final m36 d;
    public static final l66 e;

    static {
        g12 g12Var = g12.DP;
        b = new xr2(g12Var);
        c = new xr2(Double.valueOf(1.0d));
        d = new m36(new defpackage.os(4), g12Var);
        e = new defpackage.i2(7);
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d;
    }

    public static final boolean a(Object obj) {
        return obj instanceof g12;
    }
}
