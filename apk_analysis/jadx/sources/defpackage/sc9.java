package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class sc9 {

    @bq7("phone")
    private final String a;

    @bq7("code")
    private final String b;

    @bq7("allowSmsNotifications")
    private final boolean c;

    @bq7("referral")
    private final String d;

    @bq7("fromOnboarding")
    private final Boolean e;

    public sc9(String str, String str2, boolean z, String str3, Boolean bool) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = str3;
        this.e = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sc9)) {
            return false;
        }
        sc9 sc9Var = (sc9) obj;
        return aa4.e(this.a, sc9Var.a) && aa4.e(this.b, sc9Var.b) && this.c == sc9Var.c && aa4.e(this.d, sc9Var.d) && aa4.e(this.e, sc9Var.e);
    }

    public final int hashCode() {
        int iC = tg.c(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        String str = this.d;
        int iHashCode = (iC + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.e;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        boolean z = this.c;
        String str3 = this.d;
        Boolean bool = this.e;
        StringBuilder sbD = ad2.d("VerificationRequest(phone=", str, ", code=", str2, ", allowSmsNotifications=");
        sbD.append(z);
        sbD.append(", referral=");
        sbD.append(str3);
        sbD.append(", fromOnboarding=");
        sbD.append(bool);
        sbD.append(")");
        return sbD.toString();
    }

    public /* synthetic */ sc9(String str, String str2, boolean z, String str3, Boolean bool, int i, jh2 jh2Var) {
        this(str, str2, z, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : bool);
    }
}
