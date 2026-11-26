package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class nz7<T> implements xs6<T> {
    public static final Object c = new Object();
    public volatile xs6<T> a;
    public volatile Object b;

    @Override // defpackage.ws6
    public final T get() {
        T t = (T) this.b;
        if (t != c) {
            return t;
        }
        xs6<T> xs6Var = this.a;
        if (xs6Var == null) {
            return (T) this.b;
        }
        T t2 = xs6Var.get();
        this.b = t2;
        this.a = null;
        return t2;
    }
}
