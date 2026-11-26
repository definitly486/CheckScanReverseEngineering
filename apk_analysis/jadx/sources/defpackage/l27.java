package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class l27 implements so1 {
    public final df7 a;

    public l27(df7 df7Var) {
        df7Var.getClass();
        this.a = df7Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l27) && aa4.e(this.a, ((l27) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Replace(screen=" + this.a + ')';
    }
}
