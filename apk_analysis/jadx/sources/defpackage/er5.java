package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class er5<T> extends g1<T, T> {
    public final ze6<? super T> c;

    public static final class a<T> extends ve0<T, T> {
        public final ze6<? super T> f;

        public a(ls5<? super T> ls5Var, ze6<? super T> ze6Var) {
            super(ls5Var);
            this.f = ze6Var;
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            return a(7);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.ls5
        public final void onNext(T t) {
            try {
                if (this.f.test(t)) {
                    this.b.onNext((Object) t);
                }
            } catch (Throwable th) {
                m13.d(th);
                this.c.dispose();
                onError(th);
            }
        }

        @Override // defpackage.iz7
        public final T poll() {
            T tPoll;
            do {
                tPoll = this.d.poll();
                if (tPoll == null) {
                    break;
                }
            } while (!this.f.test(tPoll));
            return tPoll;
        }
    }

    public er5(tq5 tq5Var, ze6 ze6Var) {
        super(tq5Var);
        this.c = ze6Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        this.b.a(new a(ls5Var, this.c));
    }
}
