package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class a85<T> extends gg3<T> {
    public final l75 c;

    public static final class a<T> extends rk2<T> implements t75<T> {
        public cp2 d;

        @Override // defpackage.rk2, defpackage.bc8
        public final void cancel() {
            super.cancel();
            this.d.dispose();
        }

        @Override // defpackage.t75
        public final void onComplete() {
            this.b.onComplete();
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.a(this);
            }
        }
    }

    public a85(l75 l75Var) {
        this.c = l75Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.a(new a(wb8Var));
    }
}
