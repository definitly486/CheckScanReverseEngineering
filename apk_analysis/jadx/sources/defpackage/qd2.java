package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class qd2 {
    public final x04 a;
    public final boolean b;

    public qd2(x04 x04Var, boolean z) {
        this.a = x04Var;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qd2)) {
            return false;
        }
        qd2 qd2Var = (qd2) obj;
        return this.a.equals(qd2Var.a) && this.b == qd2Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DecodeResult(image=" + this.a + ", isSampled=" + this.b + ")";
    }
}
