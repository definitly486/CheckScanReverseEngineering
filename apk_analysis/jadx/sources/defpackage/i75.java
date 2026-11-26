package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class i75<T> extends a75<T> {
    public final mz7 b;
    public final ze6<? super T> c;

    public static final class a<T> implements t08<T>, cp2 {
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

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t08
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

    public i75(mz7 mz7Var, ze6 ze6Var) {
        this.b = mz7Var;
        this.c = ze6Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        this.b.d(new a(t75Var, this.c));
    }
}
