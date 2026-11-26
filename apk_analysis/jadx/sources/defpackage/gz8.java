package defpackage;

import androidx.core.app.NotificationCompat;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class gz8 {

    @bq7(NotificationCompat.CATEGORY_STATUS)
    private final String a;

    @bq7("dateTime")
    private final String b;

    @bq7("valueText")
    private final String c;

    @bq7("titleValueText")
    private final String d;

    @bq7(TJAdUnitConstants.String.MESSAGE)
    private final String e;

    public gz8(String str, String str2, String str3, String str4, String str5) {
        m2.e(str, str2, str3, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.e;
    }

    public final String c() {
        return this.a;
    }

    public final String d() {
        return this.d;
    }

    public final String e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gz8)) {
            return false;
        }
        gz8 gz8Var = (gz8) obj;
        return aa4.e(this.a, gz8Var.a) && aa4.e(this.b, gz8Var.b) && aa4.e(this.c, gz8Var.c) && aa4.e(this.d, gz8Var.d) && aa4.e(this.e, gz8Var.e);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        StringBuilder sbD = ad2.d("TransferCardResultResponse(status=", str, ", dateTime=", str2, ", valueText=");
        kv2.c(sbD, str3, ", titleValueText=", str4, ", message=");
        return me0.d(sbD, str5, ")");
    }
}
