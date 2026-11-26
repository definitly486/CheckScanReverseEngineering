package yads;

import defpackage.eh;
import defpackage.fh;
import defpackage.ih;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e91 {
    public static final k11 a;
    public static final xr2 b;
    public static final xr2 c;
    public static final xr2 d;
    public static final xr2 e;
    public static final xr2 f;
    public static final w02 g;
    public static final xr2 h;
    public static final xr2 i;
    public static final xr2 j;
    public static final xr2 k;
    public static final xr2 l;
    public static final v02 m;
    public static final m36 n;
    public static final m36 o;
    public static final m36 p;
    public static final m36 q;
    public static final m36 r;
    public static final m36 s;
    public static final m36 t;
    public static final l66 u;
    public static final l66 v;
    public static final l66 w;
    public static final l66 x;
    public static final l66 y;
    public static final st3 z;

    static {
        xr2 xr2VarA = wr2.a(100L);
        xr2 xr2VarA2 = wr2.a(Double.valueOf(0.6d));
        xr2 xr2VarA3 = wr2.a(j11.FADE);
        Double dValueOf = Double.valueOf(1.0d);
        a = new k11(xr2VarA, xr2VarA2, xr2VarA3, wr2.a(dValueOf));
        b = wr2.a(dValueOf);
        Boolean bool = Boolean.TRUE;
        c = wr2.a(bool);
        d = wr2.a(bool);
        m91 m91Var = m91.START;
        e = wr2.a(m91Var);
        o91 o91Var = o91.TOP;
        f = wr2.a(o91Var);
        g = new w02(new ej2());
        h = wr2.a(0L);
        f81 f81Var = f81.NO_WRAP;
        i = wr2.a(f81Var);
        j = wr2.a(0L);
        h81 h81Var = h81.VERTICAL;
        k = wr2.a(h81Var);
        ri2 ri2Var = ri2.VISIBLE;
        l = wr2.a(ri2Var);
        m = new v02(new pp1());
        n = new m36(new defpackage.dh0(4), yr.I(f11.values()));
        int i2 = 6;
        o = new m36(new defpackage.ws0(i2), yr.I(h11.values()));
        p = new m36(new defpackage.yc2(i2), m91Var);
        q = new m36(new defpackage.zc2(7), o91Var);
        int i3 = 3;
        r = new m36(new defpackage.t71(i3), f81Var);
        s = new m36(new defpackage.yq2(i3), h81Var);
        t = new m36(new defpackage.v71(8), ri2Var);
        u = new defpackage.bh();
        v = new defpackage.ch();
        w = new defpackage.dh();
        x = new eh();
        y = new fh(3);
        z = new ih(i3);
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

    public static final boolean d(long j2) {
        return j2 >= 0;
    }

    public static final boolean e(Object obj) {
        return obj instanceof f81;
    }

    public static final boolean f(Object obj) {
        return obj instanceof h81;
    }

    public static final boolean g(Object obj) {
        return obj instanceof ri2;
    }

    public static final boolean b(Object obj) {
        return obj instanceof h11;
    }

    public static final boolean c(Object obj) {
        return obj instanceof m91;
    }

    public static final boolean d(Object obj) {
        return obj instanceof o91;
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
