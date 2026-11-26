package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class np1<T, E> implements af6<T> {
    public final E a;
    public final tz5 b;

    /* JADX WARN: Multi-variable type inference failed */
    public np1(Object obj, tz5 tz5Var) {
        this.a = obj;
        this.b = tz5Var;
    }

    @Override // defpackage.af6
    public final boolean test(T t) {
        return aa4.e(this.b.invoke(t), this.a);
    }
}
