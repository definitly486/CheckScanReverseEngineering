package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class o75<T> extends b1<T, Boolean> {

    public static final class a<T> implements t75<T>, cp2 {
        public final t75<? super Boolean> b;
        public cp2 c;

        public a(t75<? super Boolean> t75Var) {
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

        @Override // defpackage.t75
        public final void onComplete() {
            this.b.onSuccess(Boolean.TRUE);
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.c, cp2Var)) {
                this.c = cp2Var;
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t75
        public final void onSuccess(T t) {
            this.b.onSuccess(Boolean.FALSE);
        }
    }

    @Override // defpackage.a75
    public final void d(t75<? super Boolean> t75Var) {
        this.b.a(new a(t75Var));
    }
}
