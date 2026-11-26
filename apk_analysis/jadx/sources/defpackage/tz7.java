package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class tz7<T> extends mz7<T> {
    public final mz7 b;
    public final fv c;

    public static final class a<T> implements t08<T>, cp2 {
        public final t08<? super T> b;
        public final h6 c;
        public cp2 d;

        public a(t08 t08Var, fv fvVar) {
            this.b = t08Var;
            this.c = fvVar;
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
            try {
                this.c.run();
            } catch (Throwable th2) {
                m13.d(th2);
                d97.b(th2);
            }
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
                this.c.run();
            } catch (Throwable th) {
                m13.d(th);
                d97.b(th);
            }
        }
    }

    public tz7(mz7 mz7Var, fv fvVar) {
        this.b = mz7Var;
        this.c = fvVar;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.b.d(new a(t08Var, this.c));
    }
}
