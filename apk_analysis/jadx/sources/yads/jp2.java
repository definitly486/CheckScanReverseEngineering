package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class jp2 {
    public final kp2 a;
    public final String b;

    public jp2(kp2 kp2Var, String str) {
        this.a = kp2Var;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jp2)) {
            return false;
        }
        jp2 jp2Var = (jp2) obj;
        return this.a == jp2Var.a && defpackage.aa4.e(this.b, jp2Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ExclusionRule(type=" + this.a + ", value=" + this.b + ")";
    }
}
