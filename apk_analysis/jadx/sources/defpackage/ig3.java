package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ig3<T, U> extends mz7<U> implements tm3<U> {
    public final vg3 b;
    public final os5 c;
    public final b9 d;

    public static final class a<T, U> implements rh3<T>, cp2 {
        public final t08<? super U> b;
        public final b9 c;
        public final U d;
        public bc8 e;
        public boolean f;

        public a(t08<? super U> t08Var, U u, b9 b9Var) {
            this.b = t08Var;
            this.c = b9Var;
            this.d = u;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.e, bc8Var)) {
                this.e = bc8Var;
                this.b.onSubscribe(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.e.cancel();
            this.e = hc8.CANCELLED;
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.e == hc8.CANCELLED;
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.f) {
                return;
            }
            this.f = true;
            this.e = hc8.CANCELLED;
            this.b.onSuccess(this.d);
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.f) {
                d97.b(th);
                return;
            }
            this.f = true;
            this.e = hc8.CANCELLED;
            this.b.onError(th);
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.f) {
                return;
            }
            try {
                b9 b9Var = this.c;
                ((bm3) b9Var.c).invoke(this.d, t);
            } catch (Throwable th) {
                m13.d(th);
                this.e.cancel();
                onError(th);
            }
        }
    }

    public ig3(vg3 vg3Var, os5 os5Var, b9 b9Var) {
        this.b = vg3Var;
        this.c = os5Var;
        this.d = b9Var;
    }

    @Override // defpackage.tm3
    public final gg3<U> c() {
        return new hg3(this.b, this.c, this.d);
    }

    @Override // defpackage.mz7
    public final void h(t08<? super U> t08Var) {
        try {
            this.b.f(new a(t08Var, this.c.call(), this.d));
        } catch (Throwable th) {
            t08Var.onSubscribe(hx2.INSTANCE);
            t08Var.onError(th);
        }
    }
}
