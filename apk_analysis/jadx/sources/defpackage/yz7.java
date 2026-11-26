package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class yz7<T> extends mz7<T> {
    public final mz7 b;
    public final qx1<? super T> c;

    public final class a implements t08<T> {
        public final t08<? super T> b;

        public a(t08<? super T> t08Var) {
            this.b = t08Var;
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
            t08<? super T> t08Var = this.b;
            try {
                yz7.this.c.accept(t);
                t08Var.onSuccess(t);
            } catch (Throwable th) {
                m13.d(th);
                t08Var.onError(th);
            }
        }
    }

    public yz7(mz7 mz7Var, qx1 qx1Var) {
        this.b = mz7Var;
        this.c = qx1Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.b.d(new a(t08Var));
    }
}
