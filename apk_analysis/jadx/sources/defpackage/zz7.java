package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class zz7<T> extends lz7<T> {
    public final lz7<T> a;
    public final nl3<T, j59> b;

    public static final class a implements s08<T> {
        public final /* synthetic */ s08<T> a;
        public final /* synthetic */ zz7<T> b;

        public a(s08<T> s08Var, zz7<T> zz7Var) {
            this.a = s08Var;
            this.b = zz7Var;
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
                this.b.b.invoke(t);
                aVar = j59.a;
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            boolean z = aVar instanceof k57.a;
            s08<T> s08Var = this.a;
            if (!z) {
                s08Var.onSuccess(t);
            }
            Throwable thA = k57.a(aVar);
            if (thA != null) {
                s08Var.onError(thA);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zz7(lz7<T> lz7Var, nl3<? super T, j59> nl3Var) {
        this.a = lz7Var;
        this.b = nl3Var;
    }

    @Override // defpackage.lz7
    public final void a(s08<T> s08Var) {
        this.a.a(new a(s08Var, this));
    }
}
