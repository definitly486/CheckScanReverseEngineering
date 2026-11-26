package defpackage;

import androidx.autofill.HintConstants;
import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes.dex */
public final class g3 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    @bq7(HintConstants.AUTOFILL_HINT_USERNAME)
    private final String b;

    @bq7("isAnon")
    private final boolean c;

    @bq7("phone")
    private final String d;

    @bq7("isPhoneValid")
    private final boolean e;

    public g3(long j, String str, boolean z, String str2, boolean z2) {
        str.getClass();
        str2.getClass();
        this.a = j;
        this.b = str;
        this.c = z;
        this.d = str2;
        this.e = z2;
    }

    public final long a() {
        return this.a;
    }

    public final String b() {
        return this.d;
    }

    public final String c() {
        return this.b;
    }

    public final boolean d() {
        return this.c;
    }

    public final boolean e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g3)) {
            return false;
        }
        g3 g3Var = (g3) obj;
        return this.a == g3Var.a && aa4.e(this.b, g3Var.b) && this.c == g3Var.c && aa4.e(this.d, g3Var.d) && this.e == g3Var.e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.e) + zg.b(tg.c(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        boolean z = this.c;
        String str2 = this.d;
        boolean z2 = this.e;
        StringBuilder sbD = ah.d(j, "AccountConfirmResponse(id=", ", username=", str);
        sbD.append(", isAnon=");
        sbD.append(z);
        sbD.append(", phone=");
        sbD.append(str2);
        sbD.append(", isPhoneValid=");
        sbD.append(z2);
        sbD.append(")");
        return sbD.toString();
    }
}
