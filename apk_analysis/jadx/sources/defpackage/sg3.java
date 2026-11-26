package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sg3<T> extends k0<T, T> {
    public final ze6<? super T> d;

    public static final class a<T> extends ue0<T, T> {
        public final ze6<? super T> g;

        public a(gv1<? super T> gv1Var, ze6<? super T> ze6Var) {
            super(gv1Var);
            this.g = ze6Var;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.gv1
        public final boolean e(T t) {
            if (this.e) {
                return false;
            }
            int i = this.f;
            gv1<? super R> gv1Var = this.b;
            if (i != 0) {
                return gv1Var.e(null);
            }
            try {
                return this.g.test(t) && gv1Var.e((Object) t);
            } catch (Throwable th) {
                b(th);
                return true;
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (e(t)) {
                return;
            }
            this.c.request(1L);
        }

        @Override // defpackage.iz7
        public final T poll() {
            mw6<T> mw6Var = this.d;
            while (true) {
                T tPoll = mw6Var.poll();
                if (tPoll == null) {
                    return null;
                }
                if (this.g.test(tPoll)) {
                    return tPoll;
                }
                if (this.f == 2) {
                    mw6Var.request(1L);
                }
            }
        }
    }

    public static final class b<T> extends we0<T, T> implements gv1<T> {
        public final ze6<? super T> g;

        public b(wb8<? super T> wb8Var, ze6<? super T> ze6Var) {
            super(wb8Var);
            this.g = ze6Var;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.gv1
        public final boolean e(T t) {
            if (this.e) {
                return false;
            }
            int i = this.f;
            wb8<? super R> wb8Var = this.b;
            if (i != 0) {
                wb8Var.onNext(null);
                return true;
            }
            try {
                boolean zTest = this.g.test(t);
                if (zTest) {
                    wb8Var.onNext((Object) t);
                }
                return zTest;
            } catch (Throwable th) {
                b(th);
                return true;
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (e(t)) {
                return;
            }
            this.c.request(1L);
        }

        @Override // defpackage.iz7
        public final T poll() {
            mw6<T> mw6Var = this.d;
            while (true) {
                T tPoll = mw6Var.poll();
                if (tPoll == null) {
                    return null;
                }
                if (this.g.test(tPoll)) {
                    return tPoll;
                }
                if (this.f == 2) {
                    mw6Var.request(1L);
                }
            }
        }
    }

    public sg3(gg3<T> gg3Var, ze6<? super T> ze6Var) {
        super(gg3Var);
        this.d = ze6Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        boolean z = wb8Var instanceof gv1;
        ze6<? super T> ze6Var = this.d;
        gg3<T> gg3Var = this.c;
        if (z) {
            gg3Var.f(new a((gv1) wb8Var, ze6Var));
        } else {
            gg3Var.f(new b(wb8Var, ze6Var));
        }
    }
}
