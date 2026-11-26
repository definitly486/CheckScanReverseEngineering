package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class fr1 {
    public static final xr2 a;
    public static final xr2 b;
    public static final xr2 c;
    public static final xr2 d;
    public static final xr2 e;
    public static final xr2 f;
    public static final m36 g;
    public static final l66 h;
    public static final l66 i;
    public static final l66 j;
    public static final l66 k;

    static {
        o11 o11Var = o11.EASE_IN_OUT;
        a = wr2.a(o11Var);
        Double dValueOf = Double.valueOf(1.0d);
        b = wr2.a(dValueOf);
        c = wr2.a(dValueOf);
        d = wr2.a(dValueOf);
        e = wr2.a(dValueOf);
        f = wr2.a(Boolean.FALSE);
        g = new m36(new defpackage.et0(6), o11Var);
        h = new defpackage.dq(5);
        i = new defpackage.vh(10);
        j = new defpackage.eq();
        k = new defpackage.lt0();
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean b(double d2) {
        return d2 >= 0.0d;
    }

    public static final boolean c(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean d(double d2) {
        return d2 >= 0.0d;
    }

    public static final boolean a(Object obj) {
        return obj instanceof o11;
    }
}
