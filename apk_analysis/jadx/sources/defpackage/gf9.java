package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class gf9 implements Serializable {

    @bq7(TtmlNode.ATTR_ID)
    private long b;

    @bq7(NotificationCompat.CATEGORY_STATUS)
    private nz6 c;

    @bq7("sum")
    private String d;

    @bq7("date")
    private String e;

    @bq7("qrData")
    private String f;

    @bq7("recId")
    private Integer g;

    public gf9(long j, nz6 nz6Var, String str, String str2, String str3, Integer num) {
        nz6Var.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.b = j;
        this.c = nz6Var;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = num;
    }

    public final String a() {
        return this.e;
    }

    public final long b() {
        return this.b;
    }

    public final String d() {
        return this.f;
    }

    public final Integer e() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gf9)) {
            return false;
        }
        gf9 gf9Var = (gf9) obj;
        return this.b == gf9Var.b && this.c == gf9Var.c && aa4.e(this.d, gf9Var.d) && aa4.e(this.e, gf9Var.e) && aa4.e(this.f, gf9Var.f) && aa4.e(this.g, gf9Var.g);
    }

    public final nz6 f() {
        return this.c;
    }

    public final String g() {
        return this.d;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b((this.c.hashCode() + (Long.hashCode(this.b) * 31)) * 31, 31, this.d), 31, this.e), 31, this.f);
        Integer num = this.g;
        return iB + (num == null ? 0 : num.hashCode());
    }

    public final String toString() {
        long j = this.b;
        nz6 nz6Var = this.c;
        String str = this.d;
        String str2 = this.e;
        String str3 = this.f;
        Integer num = this.g;
        StringBuilder sb = new StringBuilder("WQReceipt(id=");
        sb.append(j);
        sb.append(", status=");
        sb.append(nz6Var);
        kv2.c(sb, ", sum=", str, ", date=", str2);
        sb.append(", qrCode=");
        sb.append(str3);
        sb.append(", receivedChequeId=");
        sb.append(num);
        sb.append(")");
        return sb.toString();
    }

    public /* synthetic */ gf9(long j, nz6 nz6Var, String str, String str2, String str3, Integer num, int i, jh2 jh2Var) {
        this(j, nz6Var, str, str2, str3, (i & 32) != 0 ? null : num);
    }
}
