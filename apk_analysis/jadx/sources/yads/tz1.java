package yads;

import defpackage.g7;
import defpackage.ik3;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class tz1 {
    public static final k11 a;
    public static final xr2 b;
    public static final xr2 c;
    public static final w02 d;
    public static final xr2 e;
    public static final v02 f;
    public static final m36 g;
    public static final m36 h;
    public static final m36 i;
    public static final l66 j;
    public static final l66 k;
    public static final l66 l;
    public static final st3 m;

    static {
        xr2 xr2VarA = wr2.a(100L);
        xr2 xr2VarA2 = wr2.a(Double.valueOf(0.6d));
        xr2 xr2VarA3 = wr2.a(j11.FADE);
        Double dValueOf = Double.valueOf(1.0d);
        a = new k11(xr2VarA, xr2VarA2, xr2VarA3, wr2.a(dValueOf));
        b = wr2.a(dValueOf);
        c = wr2.a(Boolean.TRUE);
        d = new w02(new ej2());
        ri2 ri2Var = ri2.VISIBLE;
        e = wr2.a(ri2Var);
        f = new v02(new pp1());
        g = new m36(new ik3(1), yr.I(f11.values()));
        h = new m36(new defpackage.au0(3), yr.I(h11.values()));
        i = new m36(new defpackage.mi(8), ri2Var);
        j = new defpackage.ti0(9);
        k = new defpackage.d(9);
        l = new defpackage.yq(7);
        m = new g7(6);
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
