package yads;

import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h22 {
    public static final xr2 a = wr2.a(Double.valueOf(1.0d));
    public static final w02 b = new w02(new ej2());
    public static final xr2 c = wr2.a(Boolean.TRUE);
    public static final xr2 d = wr2.a(100L);
    public static final xr2 e = wr2.a(0L);
    public static final xr2 f;
    public static final v02 g;
    public static final m36 h;
    public static final m36 i;
    public static final m36 j;
    public static final l66 k;
    public static final l66 l;
    public static final l66 m;
    public static final st3 n;

    static {
        ri2 ri2Var = ri2.VISIBLE;
        f = wr2.a(ri2Var);
        g = new v02(new pp1());
        h = new m36(new defpackage.dt3(3), yr.I(f11.values()));
        i = new m36(new defpackage.hf(6), yr.I(h11.values()));
        j = new m36(new defpackage.ay(3), ri2Var);
        k = new defpackage.f2(10);
        l = new defpackage.g2(7);
        m = new defpackage.h2(7);
        n = new defpackage.i2(6);
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean b(long j2) {
        return j2 >= 0;
    }

    public static final boolean c(Object obj) {
        return obj instanceof ri2;
    }

    public static final boolean b(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean a(long j2) {
        return j2 >= 0;
    }

    public static final boolean a(Object obj) {
        return obj instanceof f11;
    }

    public static final boolean a(List list) {
        return list.size() >= 1;
    }
}
