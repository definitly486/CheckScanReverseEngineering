package defpackage;

import androidx.autofill.HintConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class h3 {

    @bq7(HintConstants.AUTOFILL_HINT_USERNAME)
    private final String a;

    @bq7("isAnon")
    private final boolean b;

    @bq7("phone")
    private final String c;

    @bq7("fnsEmail")
    private final String d;

    @bq7("isPhoneValid")
    private final boolean e;

    @bq7("code")
    private final Integer f;

    public /* synthetic */ h3(String str, boolean z, String str2, String str3, boolean z2, Integer num, int i, jh2 jh2Var) {
        this(str, z, str2, str3, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? null : num);
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.a;
    }

    public final boolean c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h3)) {
            return false;
        }
        h3 h3Var = (h3) obj;
        return aa4.e(this.a, h3Var.a) && this.b == h3Var.b && aa4.e(this.c, h3Var.c) && aa4.e(this.d, h3Var.d) && this.e == h3Var.e && aa4.e(this.f, h3Var.f);
    }

    public final int hashCode() {
        int iC = tg.c(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iC + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iC2 = tg.c((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.e);
        Integer num = this.f;
        return iC2 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        boolean z = this.b;
        String str2 = this.c;
        String str3 = this.d;
        boolean z2 = this.e;
        Integer num = this.f;
        StringBuilder sbB = p2.b("AccountData(username=", str, ", isAnonymousUsername=", ", phone=", z);
        kv2.c(sbB, str2, ", fnsEmail=", str3, ", isPhoneValid=");
        sbB.append(z2);
        sbB.append(", code=");
        sbB.append(num);
        sbB.append(")");
        return sbB.toString();
    }

    public h3(String str, boolean z, String str2, String str3, boolean z2, Integer num) {
        str.getClass();
        this.a = str;
        this.b = z;
        this.c = str2;
        this.d = str3;
        this.e = z2;
        this.f = num;
    }
}
