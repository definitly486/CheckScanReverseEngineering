package yads;

import defpackage.gn6;
import defpackage.qc7;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a92 {
    public static final xr2 a;
    public static final af1 b;
    public static final xr2 c;
    public static final xr2 d;
    public static final xr2 e;
    public static final af1 f;
    public static final m36 g;
    public static final m36 h;
    public static final m36 i;
    public static final l66 j;

    static {
        d82 d82Var = d82.CENTER;
        a = wr2.a(d82Var);
        b = new af1(wr2.a(20L));
        w72 w72Var = w72.NORMAL;
        c = wr2.a(w72Var);
        d = wr2.a(Boolean.FALSE);
        y41 y41Var = y41.SOURCE_IN;
        e = wr2.a(y41Var);
        f = new af1(wr2.a(20L));
        g = new m36(new defpackage.b3(4), d82Var);
        h = new m36(new qc7(3), w72Var);
        i = new m36(new gn6(4), y41Var);
        j = new defpackage.mg(6);
    }

    public static final boolean a(long j2) {
        return j2 >= 0;
    }

    public static final boolean b(Object obj) {
        return obj instanceof w72;
    }

    public static final boolean c(Object obj) {
        return obj instanceof y41;
    }

    public static final boolean a(Object obj) {
        return obj instanceof d82;
    }
}
