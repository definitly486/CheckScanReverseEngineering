package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class c00 implements so1 {
    public final df7 a;

    public c00(df7 df7Var) {
        this.a = df7Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c00) && aa4.e(this.a, ((c00) obj).a);
    }

    public final int hashCode() {
        df7 df7Var = this.a;
        if (df7Var == null) {
            return 0;
        }
        return df7Var.hashCode();
    }

    public final String toString() {
        return "BackTo(screen=" + this.a + ')';
    }
}
