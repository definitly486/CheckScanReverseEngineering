package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ah3<T> extends gg3<T> {
    public final tq5<T> c;

    public static final class a<T> implements ls5<T>, bc8 {
        public final wb8<? super T> b;
        public cp2 c;

        public a(wb8<? super T> wb8Var) {
            this.b = wb8Var;
        }

        @Override // defpackage.bc8
        public final void cancel() {
            this.c.dispose();
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
            this.b.onNext(t);
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            this.c = cp2Var;
            this.b.a(this);
        }

        @Override // defpackage.bc8
        public final void request(long j) {
        }
    }

    public ah3(tq5<T> tq5Var) {
        this.c = tq5Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.a(new a(wb8Var));
    }
}
