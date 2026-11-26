package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class nq2<T> implements ws6<T> {
    public static final Object c = new Object();
    public volatile ws6<T> a;
    public volatile Object b;

    public static <P extends ws6<T>, T> ws6<T> a(P p) {
        if (p instanceof nq2) {
            return p;
        }
        nq2 nq2Var = new nq2();
        nq2Var.b = c;
        nq2Var.a = p;
        return nq2Var;
    }

    @Override // defpackage.ws6
    public final T get() {
        T t;
        T t2 = (T) this.b;
        Object obj = c;
        if (t2 != obj) {
            return t2;
        }
        synchronized (this) {
            try {
                t = (T) this.b;
                if (t == obj) {
                    t = this.a.get();
                    Object obj2 = this.b;
                    if (obj2 != obj && obj2 != t) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj2 + " & " + t + ". This is likely due to a circular dependency.");
                    }
                    this.b = t;
                    this.a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return t;
    }
}
