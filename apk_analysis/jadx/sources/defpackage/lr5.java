package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lr5<T> extends g1<T, T> {

    public static final class a<T> implements ls5<T>, cp2 {
        public final ls5<? super T> b;
        public cp2 c;

        public a(ls5<? super T> ls5Var) {
            this.b = ls5Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.c.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            this.b.onComplete();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            this.c = cp2Var;
            this.b.onSubscribe(this);
        }
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        this.b.a(new a(ls5Var));
    }
}
