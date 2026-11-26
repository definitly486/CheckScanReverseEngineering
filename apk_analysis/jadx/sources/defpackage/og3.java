package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class og3<T> extends k0<T, T> {

    public static final class a<T> extends rk2<T> implements rh3<T> {
        public bc8 d;
        public long e;
        public boolean f;

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.d, bc8Var)) {
                this.d = bc8Var;
                this.b.a(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.rk2, defpackage.bc8
        public final void cancel() {
            super.cancel();
            this.d.cancel();
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.f) {
                return;
            }
            this.f = true;
            this.b.onComplete();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.f) {
                d97.b(th);
            } else {
                this.f = true;
                this.b.onError(th);
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.f) {
                return;
            }
            long j = this.e;
            if (j != 0) {
                this.e = j + 1;
                return;
            }
            this.f = true;
            this.d.cancel();
            b(t);
        }
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.f(new a(wb8Var));
    }
}
