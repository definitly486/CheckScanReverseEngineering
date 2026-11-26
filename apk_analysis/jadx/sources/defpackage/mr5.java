package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class mr5<T> extends qp1 implements vm3<T> {
    public final tq5 b;

    public static final class a<T> implements ls5<T>, cp2 {
        public final mq1 b;
        public cp2 c;

        public a(mq1 mq1Var) {
            this.b = mq1Var;
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

    public mr5(tq5 tq5Var) {
        this.b = tq5Var;
    }

    @Override // defpackage.vm3
    public final tq5<T> a() {
        return new lr5(this.b);
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        this.b.a(new a(mq1Var));
    }
}
