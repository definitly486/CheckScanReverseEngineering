package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class q08<T, R> extends lz7<R> {
    public final lz7<T> a;
    public final nl3<T, R> b;

    public static final class a implements s08<T> {
        public final /* synthetic */ s08<R> a;
        public final /* synthetic */ q08<T, R> b;

        public a(s08<R> s08Var, q08<T, R> q08Var) {
            this.a = s08Var;
            this.b = q08Var;
        }

        @Override // defpackage.s08
        public final void a(dp2 dp2Var) {
            this.a.a(dp2Var);
        }

        @Override // defpackage.s08
        public final void onError(Throwable th) {
            this.a.onError(th);
        }

        @Override // defpackage.s08
        public final void onSuccess(T t) {
            Object aVar;
            try {
                aVar = this.b.b.invoke(t);
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            boolean z = aVar instanceof k57.a;
            s08<R> s08Var = this.a;
            if (!z) {
                s08Var.onSuccess((R) aVar);
            }
            Throwable thA = k57.a(aVar);
            if (thA != null) {
                s08Var.onError(thA);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public q08(lz7<T> lz7Var, nl3<? super T, ? extends R> nl3Var) {
        nl3Var.getClass();
        this.a = lz7Var;
        this.b = nl3Var;
    }

    @Override // defpackage.lz7
    public final void a(s08<R> s08Var) {
        this.a.a(new a(s08Var, this));
    }
}
