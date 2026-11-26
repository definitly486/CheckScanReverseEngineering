package yads;

import defpackage.kv2;
import defpackage.lg8;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class q52 {
    public static final xr2 a = wr2.a(Double.valueOf(1.0d));
    public static final w02 b = new w02(new ej2());
    public static final xr2 c = wr2.a(Boolean.TRUE);
    public static final xr2 d;
    public static final v02 e;
    public static final m36 f;
    public static final m36 g;
    public static final m36 h;
    public static final l66 i;
    public static final l66 j;
    public static final l66 k;
    public static final st3 l;

    static {
        ri2 ri2Var = ri2.VISIBLE;
        d = wr2.a(ri2Var);
        e = new v02(new pp1());
        f = new m36(new lg8(4), yr.I(f11.values()));
        g = new m36(new defpackage.xy2(6), yr.I(h11.values()));
        h = new m36(new defpackage.em4(3), ri2Var);
        i = new defpackage.dc(7);
        j = new defpackage.d92(7);
        k = new kv2(8);
        l = new defpackage.ki0(10);
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
