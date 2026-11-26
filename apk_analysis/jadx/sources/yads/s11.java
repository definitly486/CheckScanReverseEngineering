package yads;

import defpackage.yr;

/* JADX INFO: loaded from: classes6.dex */
public abstract class s11 {
    public static final xr2 a = wr2.a(300L);
    public static final xr2 b;
    public static final w91 c;
    public static final xr2 d;
    public static final m36 e;
    public static final m36 f;
    public static final l66 g;
    public static final l66 h;

    static {
        o11 o11Var = o11.SPRING;
        b = wr2.a(o11Var);
        c = new w91(new sj1());
        d = wr2.a(0L);
        e = new m36(new defpackage.mi(7), o11Var);
        f = new m36(new defpackage.ni(8), yr.I(j11.values()));
        g = new defpackage.d(8);
        h = new defpackage.yq(6);
    }

    public static final boolean a(long j) {
        return j >= 0;
    }

    public static final boolean b(long j) {
        return j >= 0;
    }

    public static final boolean a(Object obj) {
        return obj instanceof o11;
    }

    public static final boolean b(Object obj) {
        return obj instanceof j11;
    }
}
