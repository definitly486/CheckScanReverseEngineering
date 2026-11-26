package yads;

import defpackage.rs2;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class sa1 {
    public static final xr2 a = new xr2(Double.valueOf(1.0d));
    public static final w02 b = new w02(new ej2());
    public static final xr2 c;
    public static final v02 d;
    public static final m36 e;
    public static final m36 f;
    public static final m36 g;
    public static final l66 h;
    public static final l66 i;
    public static final l66 j;
    public static final st3 k;

    static {
        ri2 ri2Var = ri2.VISIBLE;
        c = new xr2(ri2Var);
        d = new v02(new pp1());
        int i2 = 4;
        e = new m36(new defpackage.af(i2), yr.I(f11.values()));
        f = new m36(new defpackage.bf(5), yr.I(h11.values()));
        g = new m36(new defpackage.cf(i2), ri2Var);
        h = new defpackage.x7(7);
        i = new rs2();
        j = new defpackage.mj(4);
        k = new defpackage.h8();
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
