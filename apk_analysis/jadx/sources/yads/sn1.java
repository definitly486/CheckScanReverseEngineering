package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class sn1 {
    public final tn1 a;
    public final String b;

    public sn1(tn1 tn1Var, String str) {
        this.a = tn1Var;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sn1)) {
            return false;
        }
        sn1 sn1Var = (sn1) obj;
        return this.a == sn1Var.a && defpackage.aa4.e(this.b, sn1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DivKitAsset(type=" + this.a + ", assetName=" + this.b + ")";
    }
}
