package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fq1<T> extends qp1 {
    public final mz7 b;

    public static final class a<T> implements t08<T> {
        public final mq1 b;

        public a(mq1 mq1Var) {
            this.b = mq1Var;
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
            this.b.onComplete();
        }
    }

    public fq1(mz7 mz7Var) {
        this.b = mz7Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        this.b.d(new a(mq1Var));
    }
}
