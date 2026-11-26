package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xz7<T> extends mz7<T> {
    public final mz7 b;
    public final qx1<? super cp2> c;

    public static final class a<T> implements t08<T> {
        public final t08<? super T> b;
        public final qx1<? super cp2> c;
        public boolean d;

        public a(t08<? super T> t08Var, qx1<? super cp2> qx1Var) {
            this.b = t08Var;
            this.c = qx1Var;
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            if (this.d) {
                d97.b(th);
            } else {
                this.b.onError(th);
            }
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            t08<? super T> t08Var = this.b;
            try {
                this.c.accept(cp2Var);
                t08Var.onSubscribe(cp2Var);
            } catch (Throwable th) {
                m13.d(th);
                this.d = true;
                cp2Var.dispose();
                t08Var.onSubscribe(hx2.INSTANCE);
                t08Var.onError(th);
            }
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            if (this.d) {
                return;
            }
            this.b.onSuccess(t);
        }
    }

    public xz7(mz7 mz7Var, qx1 qx1Var) {
        this.b = mz7Var;
        this.c = qx1Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.b.d(new a(t08Var, this.c));
    }
}
