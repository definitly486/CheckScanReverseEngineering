package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class l<T> extends rz5<T> {
    public static final l<Object> b = new l<>();

    private Object readResolve() {
        return b;
    }

    @Override // defpackage.rz5
    public final T a() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // defpackage.rz5
    public final boolean b() {
        return false;
    }

    @Override // defpackage.rz5
    public final Object d(n2c n2cVar) {
        Object obj = n2cVar.get2();
        o8.l(obj, "use Optional.orNull() instead of a Supplier that returns null");
        return obj;
    }

    @Override // defpackage.rz5
    public final T e() {
        return null;
    }

    @Override // defpackage.rz5
    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override // defpackage.rz5
    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
