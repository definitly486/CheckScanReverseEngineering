package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class nf6<T> extends rz5<T> {
    public final T b;

    public nf6(T t) {
        this.b = t;
    }

    @Override // defpackage.rz5
    public final T a() {
        return this.b;
    }

    @Override // defpackage.rz5
    public final boolean b() {
        return true;
    }

    @Override // defpackage.rz5
    public final Object d(n2c n2cVar) {
        return this.b;
    }

    @Override // defpackage.rz5
    public final T e() {
        return this.b;
    }

    @Override // defpackage.rz5
    public final boolean equals(Object obj) {
        if (obj instanceof nf6) {
            return this.b.equals(((nf6) obj).b);
        }
        return false;
    }

    @Override // defpackage.rz5
    public final int hashCode() {
        return this.b.hashCode() + 1502476572;
    }

    public final String toString() {
        return l2.d(new StringBuilder("Optional.of("), this.b, ")");
    }
}
