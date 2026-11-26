package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fa9 extends d0<da9, f44> {
    public final yx0<ea9> a;

    public static final class a implements e0<ea9, a>, ic2.e {
        public final nq<ea9> a;

        public a(nq<ea9> nqVar) {
            this.a = nqVar;
        }

        @Override // defpackage.e0
        public final void b(nl3<? super a, j59>[] nl3VarArr, nl3<? super a, j59> nl3Var) {
            e0.a.a(this, nl3VarArr, nl3Var);
        }

        @Override // ic2.e
        public final void e(h16 h16Var) {
            h16Var.getClass();
            v(new te0(new wa9(h16Var)));
        }

        @Override // defpackage.ic2
        public final void f(String str) {
            e0.a.d(this, str);
        }

        @Override // ic2.e
        public final void n(h16 h16Var) {
            h16Var.getClass();
            v(new ox7(new te0(new ya9(h16Var))));
        }

        @Override // defpackage.e0
        public final nq<ea9> o() {
            return this.a;
        }

        @Override // ic2.e
        public final void r(h16 h16Var) {
            h16Var.getClass();
            v(new te0(new va9(h16Var)));
        }

        @Override // defpackage.e0
        public final e0 s() {
            return new a(new nq());
        }

        @Override // defpackage.e0
        public final void u(String str, nl3<? super a, j59> nl3Var) {
            e0.a.b(this, str, nl3Var);
        }

        public final void v(ti3<? super ea9> ti3Var) {
            this.a.a(ti3Var);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public fa9(yx0<? super ea9> yx0Var) {
        this.a = yx0Var;
    }

    @Override // defpackage.d0
    public final yx0<ea9> b() {
        return this.a;
    }

    @Override // defpackage.d0
    public final m02 c() {
        return ha9.d;
    }

    @Override // defpackage.d0
    public final da9 d(m02 m02Var) {
        f44 f44Var = (f44) m02Var;
        f44Var.getClass();
        return f44Var.a();
    }
}
