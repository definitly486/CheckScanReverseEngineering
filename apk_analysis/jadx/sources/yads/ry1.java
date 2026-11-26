package yads;

import defpackage.kv2;
import defpackage.lg8;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ry1 {
    public static final xr2 a = wr2.a(200L);
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
    public static final l66 l;

    static {
        o11 o11Var = o11.EASE_IN_OUT;
        b = wr2.a(o11Var);
        Double dValueOf = Double.valueOf(0.5d);
        c = wr2.a(dValueOf);
        d = wr2.a(dValueOf);
        e = wr2.a(Double.valueOf(0.0d));
        f = wr2.a(0L);
        g = new m36(new lg8(5), o11Var);
        h = new defpackage.hm(8);
        i = new defpackage.cc(11);
        j = new defpackage.dc(8);
        k = new defpackage.d92(8);
        l = new kv2(9);
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean b(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean c(double d2) {
        return d2 >= 0.0d;
    }

    public static final boolean a(long j2) {
        return j2 >= 0;
    }

    public static final boolean b(long j2) {
        return j2 >= 0;
    }

    public static final boolean a(Object obj) {
        return obj instanceof o11;
    }
}
