package yads;

import android.content.Context;
import defpackage.ab7;
import defpackage.bb7;
import defpackage.c29;
import defpackage.cb7;
import defpackage.cw9;
import defpackage.dw9;
import defpackage.ew9;
import defpackage.f17;
import defpackage.fh8;
import defpackage.fw9;
import defpackage.gi8;
import defpackage.hk;
import defpackage.j59;
import defpackage.ke9;
import defpackage.ll3;
import defpackage.ru2;
import defpackage.sj2;
import defpackage.so9;
import defpackage.to3;
import defpackage.xb3;
import yads.gf0;

/* JADX INFO: loaded from: classes6.dex */
public final class gf0 {
    public final defpackage.cl4 K;
    public final defpackage.cl4 a;
    public final defpackage.cl4 n;
    public final defpackage.cl4 o;
    public final defpackage.cl4 q;
    public final defpackage.cl4 r;
    public final defpackage.cl4 x;
    public final defpackage.cl4 y;
    public final defpackage.cl4 z;
    public final defpackage.cl4 b = new fh8(new defpackage.pl5(2));
    public final defpackage.cl4 c = new fh8(new cw9(0));
    public final defpackage.cl4 d = new fh8(new cb7(1));
    public final defpackage.cl4 e = new fh8(new defpackage.a43(this, 4));
    public final defpackage.cl4 f = new fh8(new fw9(0));
    public final defpackage.cl4 g = new fh8(new defpackage.l00(1));
    public final defpackage.cl4 h = new fh8(new defpackage.jj5(this, 4));
    public final defpackage.cl4 i = new fh8(new gi8(1));
    public final defpackage.cl4 j = new fh8(new defpackage.tc4(3));
    public final defpackage.cl4 k = new fh8(new defpackage.qo(7));
    public final defpackage.cl4 l = new fh8(new defpackage.zg0(this, 6));
    public final defpackage.cl4 m = new fh8(new ru2(6));
    public final defpackage.cl4 p = new fh8(new defpackage.gz0(this, 3));
    public final defpackage.cl4 s = new fh8(new defpackage.fd1(1));
    public final defpackage.cl4 t = new fh8(new defpackage.b11(this, 6));
    public final defpackage.cl4 u = new fh8(new defpackage.k51(this, 4));
    public final defpackage.cl4 v = new fh8(new defpackage.vi5(this, 3));
    public final defpackage.cl4 w = new fh8(new defpackage.u12(this, 4));
    public final defpackage.cl4 A = new fh8(new so9(this, 2));
    public final defpackage.cl4 B = new fh8(new hk(this, 4));
    public final defpackage.cl4 C = new fh8(new defpackage.a22(this, 3));
    public final defpackage.cl4 D = new fh8(new defpackage.b22(this, 3));
    public final defpackage.cl4 E = new fh8(new defpackage.jg0(this, 7));
    public final defpackage.cl4 F = new fh8(new defpackage.kg0(this, 5));
    public final defpackage.cl4 G = new fh8(new defpackage.nn3(this, 3));
    public final defpackage.cl4 H = new fh8(new defpackage.ag3(this, 2));
    public final defpackage.cl4 I = new fh8(new defpackage.bg3(this, 2));
    public final defpackage.cl4 J = new fh8(new defpackage.im5(this, 1));
    public final defpackage.cl4 L = new fh8(new ab7(1));
    public final defpackage.cl4 M = new fh8(new bb7(2));
    public final defpackage.cl4 N = new fh8(new dw9());
    public final defpackage.cl4 O = new fh8(new ew9());

    public gf0(final Context context) {
        this.a = new fh8(new defpackage.z12(context, 4));
        this.n = new fh8(new f17(1, context, this));
        this.o = new fh8(new to3(2, this, context));
        this.q = new fh8(new c29(1, context, this));
        this.r = new fh8(new xb3(context, 1));
        this.x = new fh8(new sj2(1, context, this));
        this.y = new fh8(new ke9(context, 1));
        this.z = new fh8(new ll3() { // from class: bw9
            @Override // defpackage.ll3
            public final Object invoke() {
                return gf0.c(context, this);
            }
        });
        this.K = new fh8(new defpackage.fb2(2, context, this));
    }

    public static final v50 a(gf0 gf0Var, Context context) {
        zg5 zg5Var = (zg5) gf0Var.b.getValue();
        if (u10.a == null) {
            synchronized (u10.b) {
                try {
                    if (u10.a == null) {
                        u10.a = v10.a(context);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        w10 w10Var = u10.a;
        if (w10Var != null) {
            return new v50(zg5Var, w10Var);
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }

    public static final ff0 b(gf0 gf0Var) {
        return new ff0((n64) gf0Var.f.getValue(), (y64) gf0Var.h.getValue(), (te0) gf0Var.i.getValue(), (v64) gf0Var.j.getValue());
    }

    public static final ig0 c(gf0 gf0Var) {
        wu3 wu3Var = (wu3) gf0Var.w.getValue();
        b65 b65Var = (b65) gf0Var.x.getValue();
        y64 y64Var = (y64) gf0Var.h.getValue();
        wg3 wg3Var = (wg3) gf0Var.A.getValue();
        bh3 bh3Var = (bh3) gf0Var.z.getValue();
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        return new ig0(wu3Var, b65Var, y64Var, wg3Var, bh3Var, defpackage.sh2.c);
    }

    public static final kg0 d(gf0 gf0Var) {
        wu3 wu3Var = (wu3) gf0Var.w.getValue();
        b65 b65Var = (b65) gf0Var.x.getValue();
        ff0 ff0Var = (ff0) gf0Var.B.getValue();
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        return new kg0(wu3Var, b65Var, ff0Var, defpackage.sh2.c);
    }

    public static final uf5 e(Context context, gf0 gf0Var) {
        return new uf5(context, (q94) gf0Var.k.getValue());
    }

    public static final m23 f(gf0 gf0Var) {
        return new m23((kg0) gf0Var.C.getValue());
    }

    public static final r33 g(gf0 gf0Var) {
        return new r33((kg0) gf0Var.C.getValue());
    }

    public static final n43 h(gf0 gf0Var) {
        return new n43((ig0) gf0Var.D.getValue());
    }

    public static final d53 i(gf0 gf0Var) {
        return new d53((kg0) gf0Var.C.getValue());
    }

    public static final wg3 j(gf0 gf0Var) {
        return new wg3((defpackage.xb4) gf0Var.s.getValue());
    }

    public static final wu3 k(gf0 gf0Var) {
        return new wu3((zf) gf0Var.n.getValue(), (uf5) gf0Var.q.getValue(), (a74) gf0Var.p.getValue(), (v50) gf0Var.o.getValue(), (hd0) gf0Var.l.getValue(), (uv3) gf0Var.m.getValue());
    }

    public static final l54 l(gf0 gf0Var) {
        return new l54((k96) gf0Var.d.getValue());
    }

    public static final zg5 m() {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 != null) {
            return zg5Var2;
        }
        synchronized (zg5.k) {
            zg5Var = zg5.l;
            if (zg5Var == null) {
                zg5Var = new zg5();
                zg5.l = zg5Var;
            }
        }
        return zg5Var;
    }

    public static final a74 n(gf0 gf0Var) {
        return new a74((z64) gf0Var.g.getValue());
    }

    public static final cn3 o(gf0 gf0Var) {
        return new cn3((ri6) gf0Var.t.getValue());
    }

    public static final dn3 p(gf0 gf0Var) {
        return new dn3(new ws5(), (defpackage.xb4) gf0Var.s.getValue(), new mi6());
    }

    public static final xt5 q(gf0 gf0Var) {
        return new xt5((kg0) gf0Var.C.getValue());
    }

    public static final vh0 r(gf0 gf0Var) {
        return new vh0(((wn2) gf0Var.a.getValue()).a);
    }

    public static final in3 s(gf0 gf0Var) {
        return new in3((n43) gf0Var.E.getValue(), (xt5) gf0Var.F.getValue(), (r33) gf0Var.G.getValue(), (m23) gf0Var.H.getValue(), (k23) gf0Var.I.getValue(), (d53) gf0Var.J.getValue(), (rf0) gf0Var.K.getValue(), (va) gf0Var.L.getValue(), (sa) gf0Var.M.getValue(), (pa) gf0Var.N.getValue(), (w64) gf0Var.O.getValue());
    }

    public static final zn0 e() {
        return new zn0();
    }

    public static final defpackage.xb4 f() {
        return defpackage.bd4.a(new defpackage.u00(9));
    }

    public static final uv3 g() {
        return new uv3();
    }

    public static final n64 h() {
        return new n64();
    }

    public static final w64 i() {
        return new w64();
    }

    public static final z64 j() {
        return new z64();
    }

    public static final v64 l() {
        return new v64();
    }

    public static final k96 n() {
        return new k96();
    }

    public final kg6 o() {
        return new defpackage.eh1(this);
    }

    public static final k23 e(gf0 gf0Var) {
        return new k23((kg0) gf0Var.C.getValue());
    }

    public static final y64 m(gf0 gf0Var) {
        return new y64((z64) gf0Var.g.getValue());
    }

    public static final b65 d(Context context, gf0 gf0Var) {
        return new b65(context, (a85) gf0Var.u.getValue(), (vh0) gf0Var.v.getValue(), new dh3());
    }

    public static final tf0 b(Context context) {
        return new tf0(un4.d.a(context).a);
    }

    public static final te0 d() {
        return new te0();
    }

    public static final rf0 b(Context context, gf0 gf0Var) {
        return new rf0(context, (l54) gf0Var.e.getValue(), new q64(context));
    }

    public static final sa b() {
        return new sa();
    }

    public static final hd0 a(gf0 gf0Var) {
        return new hd0((zg5) gf0Var.b.getValue());
    }

    public static final bh3 c(Context context, gf0 gf0Var) {
        return new bh3(context, (vg3) gf0Var.y.getValue());
    }

    public static final zf a(Context context, gf0 gf0Var) {
        return new zf(context, (zn0) gf0Var.c.getValue());
    }

    public static final vg3 c(Context context) {
        return new vg3(context);
    }

    public static final q94 k() {
        return new q94();
    }

    public static final va c() {
        return new va();
    }

    public static final wn2 a(Context context) {
        wn2 wn2Var;
        wn2 wn2Var2 = wn2.c;
        if (wn2Var2 != null) {
            return wn2Var2;
        }
        synchronized (wn2.d) {
            wn2Var = wn2.c;
            if (wn2Var == null) {
                wn2Var = new wn2(context.getApplicationContext());
                wn2.c = wn2Var;
            }
        }
        return wn2Var;
    }

    public static final pa a() {
        return new pa();
    }

    public static final j59 a(defpackage.dc4 dc4Var) {
        dc4Var.b = true;
        return j59.a;
    }
}
