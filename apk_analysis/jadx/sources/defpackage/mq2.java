package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class mq2<T> implements xs6<T> {
    public static final Object c = new Object();
    public volatile xs6<T> a;
    public volatile Object b;

    public static <T> xs6<T> a(xs6<T> xs6Var) {
        xs6Var.getClass();
        if (xs6Var instanceof mq2) {
            return xs6Var;
        }
        mq2 mq2Var = new mq2();
        mq2Var.b = c;
        mq2Var.a = xs6Var;
        return mq2Var;
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
        }
        return t;
    }
}
