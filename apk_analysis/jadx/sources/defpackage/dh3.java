package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class dh3<T, U> extends k0<T, U> {
    public final xl3<? super T, ? extends U> d;

    public static final class a<T, U> extends ue0<T, U> {
        public final xl3<? super T, ? extends U> g;

        public a(gv1<? super U> gv1Var, xl3<? super T, ? extends U> xl3Var) {
            super(gv1Var);
            this.g = xl3Var;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.gv1
        public final boolean e(T t) {
            if (this.e) {
                return false;
            }
            try {
                U uApply = this.g.apply(t);
                nq5.a(uApply, "The mapper function returned a null value.");
                return this.b.e((Object) uApply);
            } catch (Throwable th) {
                b(th);
                return true;
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            int i = this.f;
            gv1<? super R> gv1Var = this.b;
            if (i != 0) {
                gv1Var.onNext(null);
                return;
            }
            try {
                U uApply = this.g.apply(t);
                nq5.a(uApply, "The mapper function returned a null value.");
                gv1Var.onNext((Object) uApply);
            } catch (Throwable th) {
                b(th);
            }
        }

        @Override // defpackage.iz7
        public final U poll() {
            T tPoll = this.d.poll();
            if (tPoll == null) {
                return null;
            }
            U uApply = this.g.apply(tPoll);
            nq5.a(uApply, "The mapper function returned a null value.");
            return uApply;
        }
    }

    public static final class b<T, U> extends we0<T, U> {
        public final xl3<? super T, ? extends U> g;

        public b(wb8<? super U> wb8Var, xl3<? super T, ? extends U> xl3Var) {
            super(wb8Var);
            this.g = xl3Var;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            int i = this.f;
            wb8<? super R> wb8Var = this.b;
            if (i != 0) {
                wb8Var.onNext(null);
                return;
            }
            try {
                U uApply = this.g.apply(t);
                nq5.a(uApply, "The mapper function returned a null value.");
                wb8Var.onNext((Object) uApply);
            } catch (Throwable th) {
                b(th);
            }
        }

        @Override // defpackage.iz7
        public final U poll() {
            T tPoll = this.d.poll();
            if (tPoll == null) {
                return null;
            }
            U uApply = this.g.apply(tPoll);
            nq5.a(uApply, "The mapper function returned a null value.");
            return uApply;
        }
    }

    public dh3(gg3<T> gg3Var, xl3<? super T, ? extends U> xl3Var) {
        super(gg3Var);
        this.d = xl3Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super U> wb8Var) {
        boolean z = wb8Var instanceof gv1;
        xl3<? super T, ? extends U> xl3Var = this.d;
        gg3<T> gg3Var = this.c;
        if (z) {
            gg3Var.f(new a((gv1) wb8Var, xl3Var));
        } else {
            gg3Var.f(new b(wb8Var, xl3Var));
        }
    }
}
