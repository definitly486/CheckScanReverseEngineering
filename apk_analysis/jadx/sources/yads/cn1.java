package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class cn1 {
    public final br0 a;
    public final fs2 b;

    public cn1(br0 br0Var, fs2 fs2Var) {
        this.a = br0Var;
        this.b = fs2Var;
    }

    public final br0 a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cn1)) {
            return false;
        }
        cn1 cn1Var = (cn1) obj;
        return defpackage.aa4.e(this.a, cn1Var.a) && defpackage.aa4.e(this.b, cn1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DivItemBuilderResult(div=" + this.a + ", expressionResolver=" + this.b + ")";
    }
}
