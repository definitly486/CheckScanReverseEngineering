package defpackage;

import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes5.dex */
public final class bl1<T> implements fq7<T> {
    public final nl3<ne4<?>, df4<T>> a;
    public final dl1<ox0<T>> b = new dl1<>();

    /* JADX WARN: Multi-variable type inference failed */
    public bl1(nl3<? super ne4<?>, ? extends df4<T>> nl3Var) {
        this.a = nl3Var;
    }

    @Override // defpackage.fq7
    public final df4<T> a(ne4<Object> ne4Var) {
        ox0<T> ox0Var = this.b.get(d31.n(ne4Var));
        ox0Var.getClass();
        wg5 wg5Var = (wg5) ox0Var;
        T t = wg5Var.a.get();
        if (t == null) {
            synchronized (wg5Var) {
                t = wg5Var.a.get();
                if (t == null) {
                    t = (T) new ox0(this.a.invoke(ne4Var));
                    wg5Var.a = new SoftReference<>(t);
                }
            }
        }
        return t.a;
    }
}
