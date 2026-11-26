package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ur5<T> extends a75<T> {
    public final tq5 b;

    public static final class a<T> implements ls5<T>, cp2 {
        public final t75<? super T> b;
        public cp2 c;
        public T d;
        public boolean e;

        public a(t75<? super T> t75Var) {
            this.b = t75Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.c.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (this.e) {
                return;
            }
            this.e = true;
            T t = this.d;
            this.d = null;
            t75<? super T> t75Var = this.b;
            if (t == null) {
                t75Var.onComplete();
            } else {
                t75Var.onSuccess(t);
            }
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
            if (this.d == null) {
                this.d = t;
                return;
            }
            this.e = true;
            this.c.dispose();
            this.b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.c, cp2Var)) {
                this.c = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public ur5(tq5 tq5Var) {
        this.b = tq5Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        this.b.a(new a(t75Var));
    }
}
