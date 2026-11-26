package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class t12 {
    public static final xr2 a = wr2.a(200L);
    public static final xr2 b;
    public static final xr2 c;
    public static final xr2 d;
    public static final m36 e;
    public static final m36 f;
    public static final l66 g;
    public static final l66 h;

    static {
        o12 o12Var = o12.BOTTOM;
        b = wr2.a(o12Var);
        o11 o11Var = o11.EASE_IN_OUT;
        c = wr2.a(o11Var);
        d = wr2.a(0L);
        e = new m36(new defpackage.mg6(5), o12Var);
        f = new m36(new defpackage.ji1(4), o11Var);
        g = new defpackage.ug(10);
        h = new defpackage.vg(5);
    }

    public static final boolean a(long j) {
        return j >= 0;
    }

    public static final boolean b(long j) {
        return j >= 0;
    }

    public static final boolean a(Object obj) {
        return obj instanceof o12;
    }

    public static final boolean b(Object obj) {
        return obj instanceof o11;
    }
}
