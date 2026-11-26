package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sz7<T> extends mz7<T> {
    public final mz7 b;
    public final qx1<? super T> c;

    public static final class a<T> implements t08<T>, cp2 {
        public final t08<? super T> b;
        public final qx1<? super T> c;
        public cp2 d;

        public a(t08<? super T> t08Var, qx1<? super T> qx1Var) {
            this.b = t08Var;
            this.c = qx1Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.d.dispose();
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
            this.b.onSuccess(t);
            try {
                this.c.accept(t);
            } catch (Throwable th) {
                m13.d(th);
                d97.b(th);
            }
        }
    }

    public sz7(mz7 mz7Var, qx1 qx1Var) {
        this.b = mz7Var;
        this.c = qx1Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.b.d(new a(t08Var, this.c));
    }
}
