package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class jl2<T> implements xs6 {
    public xs6<T> a;

    public static <T> void a(xs6<T> xs6Var, xs6<T> xs6Var2) {
        jl2 jl2Var = (jl2) xs6Var;
        if (jl2Var.a == null) {
            jl2Var.a = xs6Var2;
        } else {
            ud.g();
        }
    }

    @Override // defpackage.ws6
    public final T get() {
        xs6<T> xs6Var = this.a;
        if (xs6Var != null) {
            return xs6Var.get();
        }
        ud.g();
        return null;
    }
}
