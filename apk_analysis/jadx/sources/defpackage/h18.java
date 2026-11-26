package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class h18<T> extends gg3<T> {
    public final c18<? extends T> c;

    public static final class a<T> extends rk2<T> implements t08<T> {
        public cp2 d;

        @Override // defpackage.rk2, defpackage.bc8
        public final void cancel() {
            super.cancel();
            this.d.dispose();
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.a(this);
            }
        }
    }

    public h18(c18<? extends T> c18Var) {
        this.c = c18Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.d(new a(wb8Var));
    }
}
