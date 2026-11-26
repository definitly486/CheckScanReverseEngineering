package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class c53 {
    public static final <T> T a(b24 b24Var, b53.b<T> bVar) {
        T t = (T) b24Var.r.a.get(bVar);
        if (t != null) {
            return t;
        }
        T t2 = (T) b24Var.t.n.a.get(bVar);
        return t2 == null ? bVar.a : t2;
    }

    public static final <T> T b(zz5 zz5Var, b53.b<T> bVar) {
        T t = (T) zz5Var.j.a.get(bVar);
        return t == null ? bVar.a : t;
    }
}
