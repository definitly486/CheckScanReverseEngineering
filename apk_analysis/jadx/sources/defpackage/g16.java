package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class g16 implements xk1 {
    public final Class<?> b;

    public g16(Class cls) {
        cls.getClass();
        this.b = cls;
    }

    @Override // defpackage.xk1
    public final Class<?> c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g16) {
            return aa4.e(this.b, ((g16) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return this.b.toString() + " (Kotlin reflection is not available)";
    }
}
