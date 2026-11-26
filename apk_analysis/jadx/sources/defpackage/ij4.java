package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ij4 implements wk4 {
    public final b06 a;

    public ij4(b06 b06Var) {
        this.a = b06Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ij4) && this.a.equals(((ij4) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a.a;
    }

    public final String toString() {
        return "LandingOrdViewModel(ord=" + this.a + ")";
    }
}
