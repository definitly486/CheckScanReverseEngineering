package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public interface q21 extends no5 {

    public static final class a implements q21 {
        public final nl3<Throwable, j59> b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(nl3<? super Throwable, j59> nl3Var) {
            this.b = nl3Var;
        }

        @Override // defpackage.q21
        public final void b(Throwable th) {
            this.b.invoke(th);
        }

        public final String toString() {
            return "CancelHandler.UserSupplied[" + this.b.getClass().getSimpleName() + '@' + cd2.a(this) + ']';
        }
    }

    void b(Throwable th);
}
