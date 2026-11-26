package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class kt4 extends d0<jt4, c44> {
    public final yx0<Object> a;

    public static final class a implements e0<Object, a>, ic2.a, y1, ic2.b {
        public final nq<Object> a;

        public a(nq<Object> nqVar) {
            this.a = nqVar;
        }

        @Override // ic2.a
        public final void a(hc2<ct4> hc2Var) {
            hc2Var.getClass();
            if (hc2Var instanceof dt4) {
                v(((dt4) hc2Var).a);
            }
        }

        @Override // defpackage.e0
        public final void b(nl3<? super a, j59>[] nl3VarArr, nl3<? super a, j59> nl3Var) {
            e0.a.a(this, nl3VarArr, nl3Var);
        }

        @Override // ic2.d
        public final void c() {
            y1.a.a(this);
        }

        @Override // ic2.a
        public final void d(h16 h16Var) {
            h16Var.getClass();
            v(new te0(new id5(h16Var)));
        }

        @Override // defpackage.ic2
        public final void f(String str) {
            e0.a.d(this, str);
        }

        @Override // ic2.d
        public final void h(h16 h16Var) {
            h16Var.getClass();
            k(new te0(new fx3(h16Var)));
        }

        @Override // ic2.d
        public final void i(h16 h16Var) {
            h16Var.getClass();
            k(new te0(new tk7(h16Var)));
        }

        @Override // ic2.a
        public final void j(h16 h16Var) {
            h16Var.getClass();
            v(new te0(new am9(h16Var)));
        }

        @Override // defpackage.y1
        public final void k(ti3<? super hu8> ti3Var) {
            w(ti3Var);
        }

        @Override // ic2.d
        public final void l(vt4 vt4Var) {
            vt4Var.getClass();
            k(vt4Var.a);
        }

        @Override // ic2.d
        public final void m(h16 h16Var) {
            h16Var.getClass();
            k(new te0(new gb5(h16Var)));
        }

        @Override // defpackage.e0
        public final nq<Object> o() {
            return this.a;
        }

        @Override // ic2.a
        public final void p(h16 h16Var) {
            h16Var.getClass();
            v(new te0(new sc2(h16Var)));
        }

        @Override // defpackage.e0
        public final e0 s() {
            return new a(new nq());
        }

        @Override // defpackage.e0
        public final void u(String str, nl3<? super a, j59> nl3Var) {
            e0.a.b(this, str, nl3Var);
        }

        public final void v(ti3<? super k92> ti3Var) {
            w(ti3Var);
        }

        public final void w(ti3<Object> ti3Var) {
            this.a.a(ti3Var);
        }
    }

    public kt4(yx0<Object> yx0Var) {
        this.a = yx0Var;
    }

    @Override // defpackage.d0
    public final yx0<Object> b() {
        return this.a;
    }

    @Override // defpackage.d0
    public final m02 c() {
        return ot4.b;
    }

    @Override // defpackage.d0
    public final jt4 d(m02 m02Var) {
        c44 c44Var = (c44) m02Var;
        c44Var.getClass();
        return new jt4(c44Var.a.c(), c44Var.b.c());
    }
}
