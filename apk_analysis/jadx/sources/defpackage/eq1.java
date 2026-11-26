package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class eq1<T> extends qp1 {
    public final mh3 b;

    public static final class a<T> implements rh3<T>, cp2 {
        public final mq1 b;
        public bc8 c;

        public a(mq1 mq1Var) {
            this.b = mq1Var;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.c, bc8Var)) {
                this.c = bc8Var;
                this.b.onSubscribe(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.c.cancel();
            this.c = hc8.CANCELLED;
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c == hc8.CANCELLED;
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            this.b.onComplete();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
        }
    }

    public eq1(mh3 mh3Var) {
        this.b = mh3Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        this.b.a(new a(mq1Var));
    }
}
