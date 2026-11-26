package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class sd1 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    @bq7("qrCode")
    private final String b;

    @bq7("responseCode")
    private final int c;

    @bq7("requestJson")
    private final String d;

    @bq7("responseJson")
    private final String e;

    public sd1(long j, String str, int i, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.a = j;
        this.b = str;
        this.c = i;
        this.d = str2;
        this.e = str3;
    }

    public final long a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.d;
    }

    public final int d() {
        return this.c;
    }

    public final String e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sd1)) {
            return false;
        }
        sd1 sd1Var = (sd1) obj;
        return this.a == sd1Var.a && aa4.e(this.b, sd1Var.b) && this.c == sd1Var.c && aa4.e(this.d, sd1Var.d) && aa4.e(this.e, sd1Var.e);
    }

    public final int hashCode() {
        int iB = zg.b(ej0.b(this.c, zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31), 31, this.d);
        String str = this.e;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        int i = this.c;
        String str2 = this.d;
        String str3 = this.e;
        StringBuilder sbD = ah.d(j, "ChequeInQueue(id=", ", qrCode=", str);
        sbD.append(", responseCode=");
        sbD.append(i);
        sbD.append(", requestJson=");
        sbD.append(str2);
        return kh.c(sbD, ", responseJson=", str3, ")");
    }
}
