package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class n75<T> extends a75<T> {
    public final qq1 b;

    public static final class a<T> implements mq1, cp2 {
        public final t75<? super T> b;
        public cp2 c;

        public a(t75<? super T> t75Var) {
            this.b = t75Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.c.dispose();
            this.c = ip2.DISPOSED;
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            this.c = ip2.DISPOSED;
            this.b.onComplete();
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            this.c = ip2.DISPOSED;
            this.b.onError(th);
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.c, cp2Var)) {
                this.c = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public n75(qp1 qp1Var) {
        this.b = qp1Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        this.b.b(new a(t75Var));
    }
}
