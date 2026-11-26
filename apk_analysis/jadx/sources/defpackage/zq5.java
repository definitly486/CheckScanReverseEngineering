package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class zq5<T, K> extends g1<T, T> {
    public final rm3.i c;
    public final nq5.a d;

    public static final class a<T, K> extends ve0<T, T> {
        public final xl3<? super T, K> f;
        public final mi0<? super K, ? super K> g;
        public K h;
        public boolean i;

        public a(ls5 ls5Var, rm3.i iVar, nq5.a aVar) {
            super(ls5Var);
            this.f = iVar;
            this.g = aVar;
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            return 0;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.ls5
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            try {
                K kApply = this.f.apply(t);
                if (this.i) {
                    boolean zTest = this.g.test(this.h, kApply);
                    this.h = kApply;
                    if (zTest) {
                        return;
                    }
                } else {
                    this.i = true;
                    this.h = kApply;
                }
                this.b.onNext((Object) t);
            } catch (Throwable th) {
                m13.d(th);
                this.c.dispose();
                onError(th);
            }
        }

        @Override // defpackage.iz7
        public final T poll() {
            while (true) {
                T tPoll = this.d.poll();
                if (tPoll == null) {
                    return null;
                }
                K kApply = this.f.apply(tPoll);
                if (!this.i) {
                    this.i = true;
                    this.h = kApply;
                    return tPoll;
                }
                if (!this.g.test(this.h, kApply)) {
                    this.h = kApply;
                    return tPoll;
                }
                this.h = kApply;
            }
        }
    }

    public zq5(tq5 tq5Var) {
        super(tq5Var);
        this.c = rm3.a;
        this.d = nq5.a;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        this.b.a(new a(ls5Var, this.c, this.d));
    }
}
