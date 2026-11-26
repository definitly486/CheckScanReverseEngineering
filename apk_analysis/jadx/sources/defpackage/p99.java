package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class p99 {

    @bq7("userAgreement")
    private final String a;

    @bq7("smsAgreement")
    private final String b;

    public /* synthetic */ p99(String str, String str2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p99)) {
            return false;
        }
        p99 p99Var = (p99) obj;
        return aa4.e(this.a, p99Var.a) && aa4.e(this.b, p99Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n2.d("UserAgreementsResponse(userAgreement=", this.a, ", smsAgreement=", this.b, ")");
    }

    public p99(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p99() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
