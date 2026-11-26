package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class p08<T, R> extends mz7<R> {
    public final mz7 b;
    public final xl3<? super T, ? extends R> c;

    public static final class a<T, R> implements t08<T> {
        public final t08<? super R> b;
        public final xl3<? super T, ? extends R> c;

        public a(t08<? super R> t08Var, xl3<? super T, ? extends R> xl3Var) {
            this.b = t08Var;
            this.c = xl3Var;
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            this.b.onSubscribe(cp2Var);
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            try {
                R rApply = this.c.apply(t);
                nq5.a(rApply, "The mapper function returned a null value.");
                this.b.onSuccess(rApply);
            } catch (Throwable th) {
                m13.d(th);
                onError(th);
            }
        }
    }

    public p08(mz7 mz7Var, xl3 xl3Var) {
        this.b = mz7Var;
        this.c = xl3Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super R> t08Var) {
        this.b.d(new a(t08Var, this.c));
    }
}
