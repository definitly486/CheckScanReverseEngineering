package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class xi3 implements so1 {
    public final df7 a;

    public xi3(df7 df7Var) {
        df7Var.getClass();
        this.a = df7Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xi3) && aa4.e(this.a, ((xi3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Forward(screen=" + this.a + ')';
    }
}
