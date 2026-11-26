package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class kr5<T> extends tq5<T> {
    public final mg3 b;

    public static final class a<T> implements rh3<T>, cp2 {
        public final ls5<? super T> b;
        public bc8 c;

        public a(ls5<? super T> ls5Var) {
            this.b = ls5Var;
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
            this.b.onNext(t);
        }
    }

    public kr5(mg3 mg3Var) {
        this.b = mg3Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        this.b.a(new a(ls5Var));
    }
}
