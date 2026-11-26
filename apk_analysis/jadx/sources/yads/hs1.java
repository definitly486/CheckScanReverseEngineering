package yads;

import defpackage.kv2;
import defpackage.lg8;
import defpackage.lx9;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class hs1 {
    public static final xr2 a = wr2.a(Double.valueOf(1.0d));
    public static final xr2 b;
    public static final xr2 c;
    public static final w02 d;
    public static final xr2 e;
    public static final af1 f;
    public static final xr2 g;
    public static final xr2 h;
    public static final xr2 i;
    public static final xr2 j;
    public static final v02 k;
    public static final m36 l;
    public static final m36 m;
    public static final m36 n;
    public static final m36 o;
    public static final m36 p;
    public static final m36 q;
    public static final l66 r;
    public static final l66 s;
    public static final l66 t;
    public static final l66 u;
    public static final st3 v;

    static {
        rr1 rr1Var = rr1.START;
        b = wr2.a(rr1Var);
        c = wr2.a(0L);
        d = new w02(new ej2());
        Boolean bool = Boolean.FALSE;
        e = wr2.a(bool);
        f = new af1(wr2.a(0L));
        tr1 tr1Var = tr1.HORIZONTAL;
        g = wr2.a(tr1Var);
        h = wr2.a(bool);
        rr1 rr1Var2 = rr1.CENTER;
        i = wr2.a(rr1Var2);
        ri2 ri2Var = ri2.VISIBLE;
        j = wr2.a(ri2Var);
        k = new v02(new pp1());
        int i2 = 5;
        l = new m36(new defpackage.uy2(i2), yr.I(f11.values()));
        m = new m36(new lg8(2), yr.I(h11.values()));
        n = new m36(new defpackage.xy2(i2), rr1Var);
        o = new m36(new defpackage.em4(2), tr1Var);
        p = new m36(new defpackage.k31(4), rr1Var2);
        q = new m36(new lx9(0), ri2Var);
        r = new kv2(7);
        s = new defpackage.ki0(8);
        t = new defpackage.ni0(6);
        u = new defpackage.av();
        v = new defpackage.qz0(9);
    }

    public static final boolean a(double d2) {
        return d2 >= 0.0d && d2 <= 1.0d;
    }

    public static final boolean b(long j2) {
        return j2 >= 0;
    }

    public static final boolean c(long j2) {
        return j2 >= 0;
    }

    public static final boolean d(Object obj) {
        return obj instanceof tr1;
    }

    public static final boolean e(Object obj) {
        return obj instanceof rr1;
    }

    public static final boolean f(Object obj) {
        return obj instanceof ri2;
    }

    public static final boolean b(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean c(Object obj) {
        return obj instanceof rr1;
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
