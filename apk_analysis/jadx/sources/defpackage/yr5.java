package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class yr5<T> extends g1<T, T> {
    public final or5 c;

    public static final class a<T> implements ls5<T> {
        public final ls5<? super T> b;
        public final wr5<? extends T> c;
        public boolean e = true;
        public final kp7 d = new kp7();

        public a(ls5 ls5Var, or5 or5Var) {
            this.b = ls5Var;
            this.c = or5Var;
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (!this.e) {
                this.b.onComplete();
            } else {
                this.e = false;
                this.c.a(this);
            }
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            if (this.e) {
                this.e = false;
            }
            this.b.onNext(t);
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            ip2.f(this.d, cp2Var);
        }
    }

    public yr5(er5 er5Var, or5 or5Var) {
        super(er5Var);
        this.c = or5Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        a aVar = new a(ls5Var, this.c);
        ls5Var.onSubscribe(aVar.d);
        this.b.a(aVar);
    }
}
