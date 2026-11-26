package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class h75<T> extends b1<T, T> {
    public final ze6<? super T> c;

    public static final class a<T> implements t75<T>, cp2 {
        public final t75<? super T> b;
        public final ze6<? super T> c;
        public cp2 d;

        public a(t75<? super T> t75Var, ze6<? super T> ze6Var) {
            this.b = t75Var;
            this.c = ze6Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            cp2 cp2Var = this.d;
            this.d = ip2.DISPOSED;
            cp2Var.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // defpackage.t75
        public final void onComplete() {
            this.b.onComplete();
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t75
        public final void onSuccess(T t) {
            t75<? super T> t75Var = this.b;
            try {
                if (this.c.test(t)) {
                    t75Var.onSuccess(t);
                } else {
                    t75Var.onComplete();
                }
            } catch (Throwable th) {
                m13.d(th);
                t75Var.onError(th);
            }
        }
    }

    public h75(a75 a75Var, ze6 ze6Var) {
        super(a75Var);
        this.c = ze6Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        this.b.a(new a(t75Var, this.c));
    }
}
