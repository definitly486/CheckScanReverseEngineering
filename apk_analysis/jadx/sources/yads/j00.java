package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class j00 {
    public final String a;
    public final int b;

    public j00(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j00)) {
            return false;
        }
        j00 j00Var = (j00) obj;
        return defpackage.aa4.e(this.a, j00Var.a) && this.b == j00Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.hg.d(this.b, "ClickQrcode(url=", this.a, ", sizeInPx=", ")");
    }
}
