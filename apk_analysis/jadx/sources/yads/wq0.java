package yads;

import defpackage.fh8;
import defpackage.wga;
import defpackage.xga;

/* JADX INFO: loaded from: classes6.dex */
public final class wq0 {
    public final nq0 a;
    public final vq0 b;
    public final defpackage.cl4 c = new fh8(new defpackage.ap1(this, 6));
    public final defpackage.cl4 d = new fh8(new wga(this, 0));
    public final defpackage.cl4 e = new fh8(new defpackage.ju1(4));
    public final defpackage.cl4 f = new fh8(new defpackage.uc6(this, 3));
    public final defpackage.cl4 g = new fh8(new defpackage.vc6(this, 4));
    public final defpackage.cl4 h = new fh8(new xga());
    public final defpackage.cl4 i = new fh8(new defpackage.d84(this, 6));
    public final defpackage.cl4 j = new fh8(new defpackage.e84(this, 8));
    public final defpackage.cl4 k = new fh8(new defpackage.f84(this, 4));
    public final defpackage.cl4 l = new fh8(new defpackage.l31(this, 5));

    public wq0(nq0 nq0Var, vq0 vq0Var) {
        this.a = nq0Var;
        this.b = vq0Var;
    }

    public static final a21 a(wq0 wq0Var) {
        return new a21(wq0Var.b);
    }

    public static final l75 b(wq0 wq0Var) {
        vq0 vq0Var = wq0Var.b;
        wq0Var.a.c.getClass();
        return new l75(vq0Var);
    }

    public static final ho2 c(wq0 wq0Var) {
        return new ho2((bo2) wq0Var.a.p.getValue(), wq0Var.b, (tf6) wq0Var.h.getValue(), wq0Var.a.c.j);
    }

    public static final sg3 d(wq0 wq0Var) {
        return new sg3(wq0Var.b);
    }

    public static final w55 e(wq0 wq0Var) {
        vq0 vq0Var = wq0Var.b;
        nq0 nq0Var = wq0Var.a;
        return new w55(vq0Var, nq0Var.c.f, (hd1) nq0Var.J.getValue());
    }

    public static final en1 f(wq0 wq0Var) {
        return new en1(wq0Var.b, (w41) wq0Var.a.o0.getValue());
    }

    public static final v32 g(wq0 wq0Var) {
        return new v32(wq0Var.b);
    }

    public static final hd2 h(wq0 wq0Var) {
        return new hd2(wq0Var.a.b, wq0Var.c());
    }

    public static final tf6 a() {
        return new tf6();
    }

    public static final f14 d() {
        return new f14();
    }

    public final bo2 b() {
        return (bo2) this.a.p.getValue();
    }

    public final zh2 c() {
        return (zh2) this.a.q0.getValue();
    }
}
