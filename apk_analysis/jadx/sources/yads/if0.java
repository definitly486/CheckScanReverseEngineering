package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class if0 extends mf0 {
    public final rh0 b;

    public if0(rh0 rh0Var) {
        super(rh0Var.a);
        this.b = rh0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof if0) && defpackage.aa4.e(this.b, ((if0) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "AdUnitMediationAdapter(adapter=" + this.b + ")";
    }
}
