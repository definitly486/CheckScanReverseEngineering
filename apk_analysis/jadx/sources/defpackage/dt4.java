package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class dt4 extends d0<ct4, b44> {
    public final yx0<k92> a;

    public static final class a implements e0<k92, a>, ic2.a {
        public final nq<k92> a;

        public a(nq<k92> nqVar) {
            this.a = nqVar;
        }

        @Override // defpackage.e0
        public final void b(nl3<? super a, j59>[] nl3VarArr, nl3<? super a, j59> nl3Var) {
            e0.a.a(this, nl3VarArr, nl3Var);
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

        @Override // ic2.a
        public final void j(h16 h16Var) {
            h16Var.getClass();
            v(new te0(new am9(h16Var)));
        }

        @Override // defpackage.e0
        public final nq<k92> o() {
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
            this.a.a(ti3Var);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public dt4(yx0<? super k92> yx0Var) {
        this.a = yx0Var;
    }

    @Override // defpackage.d0
    public final yx0<k92> b() {
        return this.a;
    }

    @Override // defpackage.d0
    public final m02 c() {
        return ft4.c;
    }

    @Override // defpackage.d0
    public final ct4 d(m02 m02Var) {
        b44 b44Var = (b44) m02Var;
        b44Var.getClass();
        return b44Var.c();
    }
}
