package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class oc6 extends qc6 {
    public final z96 a;

    public oc6(z96 z96Var) {
        this.a = z96Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof oc6) && defpackage.aa4.e(this.a, ((oc6) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Error(error=" + this.a + ")";
    }
}
