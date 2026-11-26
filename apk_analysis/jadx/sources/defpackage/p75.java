package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class p75<T> extends mz7<Boolean> implements um3<Boolean> {
    public final h75 b;

    public static final class a<T> implements t75<T>, cp2 {
        public final t08<? super Boolean> b;
        public cp2 c;

        public a(t08<? super Boolean> t08Var) {
            this.b = t08Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.c.dispose();
            this.c = ip2.DISPOSED;
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        @Override // defpackage.t75
        public final void onComplete() {
            this.c = ip2.DISPOSED;
            this.b.onSuccess(Boolean.TRUE);
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            this.c = ip2.DISPOSED;
            this.b.onError(th);
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.c, cp2Var)) {
                this.c = cp2Var;
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t75
        public final void onSuccess(T t) {
            this.c = ip2.DISPOSED;
            this.b.onSuccess(Boolean.FALSE);
        }
    }

    public p75(h75 h75Var) {
        this.b = h75Var;
    }

    @Override // defpackage.um3
    public final o75 b() {
        return new o75(this.b);
    }

    @Override // defpackage.mz7
    public final void h(t08<? super Boolean> t08Var) {
        this.b.a(new a(t08Var));
    }
}
