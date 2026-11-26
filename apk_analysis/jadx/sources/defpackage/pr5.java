package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pr5<T, U> extends g1<T, U> {
    public final xl3<? super T, ? extends U> c;

    public static final class a<T, U> extends ve0<T, U> {
        public final xl3<? super T, ? extends U> f;

        public a(ls5<? super U> ls5Var, xl3<? super T, ? extends U> xl3Var) {
            super(ls5Var);
            this.f = xl3Var;
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            return a(7);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.ls5
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            try {
                U uApply = this.f.apply(t);
                nq5.a(uApply, "The mapper function returned a null value.");
                this.b.onNext((Object) uApply);
            } catch (Throwable th) {
                m13.d(th);
                this.c.dispose();
                onError(th);
            }
        }

        @Override // defpackage.iz7
        public final U poll() {
            T tPoll = this.d.poll();
            if (tPoll == null) {
                return null;
            }
            U uApply = this.f.apply(tPoll);
            nq5.a(uApply, "The mapper function returned a null value.");
            return uApply;
        }
    }

    public pr5(tq5 tq5Var, xl3 xl3Var) {
        super(tq5Var);
        this.c = xl3Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super U> ls5Var) {
        this.b.a(new a(ls5Var, this.c));
    }
}
