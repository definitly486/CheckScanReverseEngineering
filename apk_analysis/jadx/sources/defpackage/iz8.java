package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class iz8 {

    @bq7("code")
    private final String a;

    @bq7("expires")
    private final int b;

    public iz8(String str, int i) {
        str.getClass();
        this.a = str;
        this.b = i;
    }

    public final String a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof iz8)) {
            return false;
        }
        iz8 iz8Var = (iz8) obj;
        return aa4.e(this.a, iz8Var.a) && this.b == iz8Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return hg.d(this.b, "TransferCode(code=", this.a, ", expireTimeInSeconds=", ")");
    }
}
