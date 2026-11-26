package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ff5 implements gf5 {
    public final ed a;
    public final vn2 b;

    public ff5(ed edVar, vn2 vn2Var) {
        this.a = edVar;
        this.b = vn2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ff5)) {
            return false;
        }
        ff5 ff5Var = (ff5) obj;
        return defpackage.aa4.e(this.a, ff5Var.a) && defpackage.aa4.e(this.b, ff5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Success(advertisingConfiguration=" + this.a + ", environmentConfiguration=" + this.b + ")";
    }
}
