package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xy0<T> {
    public final nl3<T, j59> a;

    /* JADX WARN: Multi-variable type inference failed */
    public xy0(nl3<? super T, j59> nl3Var) {
        this.a = nl3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xy0) && aa4.e(this.a, ((xy0) obj).a);
    }

    public final int hashCode() {
        nl3<T, j59> nl3Var = this.a;
        if (nl3Var == null) {
            return 0;
        }
        return nl3Var.hashCode();
    }

    public final String toString() {
        return "Callbacks(onClose=" + this.a + ')';
    }
}
