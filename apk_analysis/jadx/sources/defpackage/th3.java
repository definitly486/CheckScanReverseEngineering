package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class th3<T> extends k0<T, T> {
    public final ze6<? super T> d;

    public static final class a<T> implements rh3<T>, bc8 {
        public final wb8<? super T> b;
        public final ze6<? super T> c;
        public bc8 d;
        public boolean e;

        public a(wb8<? super T> wb8Var, ze6<? super T> ze6Var) {
            this.b = wb8Var;
            this.c = ze6Var;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.d, bc8Var)) {
                this.d = bc8Var;
                this.b.a(this);
            }
        }

        @Override // defpackage.bc8
        public final void cancel() {
            this.d.cancel();
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.e) {
                return;
            }
            this.e = true;
            this.b.onComplete();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.e) {
                d97.b(th);
            } else {
                this.e = true;
                this.b.onError(th);
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            try {
                boolean zTest = this.c.test(t);
                wb8<? super T> wb8Var = this.b;
                if (zTest) {
                    wb8Var.onNext(t);
                    return;
                }
                this.e = true;
                this.d.cancel();
                wb8Var.onComplete();
            } catch (Throwable th) {
                m13.d(th);
                this.d.cancel();
                onError(th);
            }
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            this.d.request(j);
        }
    }

    public th3(gg3<T> gg3Var, ze6<? super T> ze6Var) {
        super(gg3Var);
        this.d = ze6Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.f(new a(wb8Var, this.d));
    }
}
