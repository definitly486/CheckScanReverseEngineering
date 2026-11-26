package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pg3<T> extends a75<T> implements tm3<T> {
    public final wg3 b;

    public static final class a<T> implements rh3<T>, cp2 {
        public final t75<? super T> b;
        public bc8 c;
        public long d;
        public boolean e;

        public a(t75 t75Var) {
            this.b = t75Var;
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
            this.c = hc8.CANCELLED;
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
                return;
            }
            this.e = true;
            this.c = hc8.CANCELLED;
            this.b.onError(th);
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            long j = this.d;
            if (j != 0) {
                this.d = j + 1;
                return;
            }
            this.e = true;
            this.c.cancel();
            this.c = hc8.CANCELLED;
            this.b.onSuccess(t);
        }
    }

    public pg3(wg3 wg3Var) {
        this.b = wg3Var;
    }

    @Override // defpackage.tm3
    public final gg3<T> c() {
        return new og3(this.b);
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        this.b.f(new a(t75Var));
    }
}
