package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class r75<T, R> extends b1<T, R> {
    public final xl3<? super T, ? extends R> c;

    public static final class a<T, R> implements t75<T>, cp2 {
        public final t75<? super R> b;
        public final xl3<? super T, ? extends R> c;
        public cp2 d;

        public a(t75<? super R> t75Var, xl3<? super T, ? extends R> xl3Var) {
            this.b = t75Var;
            this.c = xl3Var;
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
            t75<? super R> t75Var = this.b;
            try {
                R rApply = this.c.apply(t);
                nq5.a(rApply, "The mapper returned a null item");
                t75Var.onSuccess(rApply);
            } catch (Throwable th) {
                m13.d(th);
                t75Var.onError(th);
            }
        }
    }

    public r75(a75 a75Var, xl3 xl3Var) {
        super(a75Var);
        this.c = xl3Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super R> t75Var) {
        this.b.a(new a(t75Var, this.c));
    }
}
