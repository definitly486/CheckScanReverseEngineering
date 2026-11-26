package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class uq5<T> extends g1<T, Boolean> {
    public final ze6<? super T> c;

    public static final class a<T> implements ls5<T>, cp2 {
        public final ls5<? super Boolean> b;
        public final ze6<? super T> c;
        public cp2 d;
        public boolean e;

        public a(ls5<? super Boolean> ls5Var, ze6<? super T> ze6Var) {
            this.b = ls5Var;
            this.c = ze6Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.d.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (this.e) {
                return;
            }
            this.e = true;
            Boolean bool = Boolean.FALSE;
            ls5<? super Boolean> ls5Var = this.b;
            ls5Var.onNext(bool);
            ls5Var.onComplete();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            if (this.e) {
                d97.b(th);
            } else {
                this.e = true;
                this.b.onError(th);
            }
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            try {
                if (this.c.test(t)) {
                    this.e = true;
                    this.d.dispose();
                    Boolean bool = Boolean.TRUE;
                    ls5<? super Boolean> ls5Var = this.b;
                    ls5Var.onNext(bool);
                    ls5Var.onComplete();
                }
            } catch (Throwable th) {
                m13.d(th);
                this.d.dispose();
                onError(th);
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public uq5(pr5 pr5Var, rm3.g gVar) {
        super(pr5Var);
        this.c = gVar;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super Boolean> ls5Var) {
        this.b.a(new a(ls5Var, this.c));
    }
}
