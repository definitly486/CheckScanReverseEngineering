package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class iv6 {

    @bq7(TtmlNode.ATTR_ID)
    private final Integer a;

    @bq7("datetime")
    private final String b;

    @bq7(FirebaseAnalytics.Param.ITEMS)
    private final List<vg6> c;

    @bq7("shops")
    private final List<lu7> d;

    @bq7("shop")
    private final lu7 e;

    @bq7("totalSum")
    private final Integer f;

    @bq7("kkt")
    private final String g;

    @bq7("inn")
    private final String h;

    @bq7("operationType")
    private final String i;

    @bq7("userAcc")
    private final Boolean j;

    @bq7("typePayment")
    private final String k;

    @bq7("ofdId")
    private final Integer l;

    @bq7("user")
    private final String m;

    @bq7("receiptQueueId")
    private final Integer n;

    public /* synthetic */ iv6(Integer num, String str, List list, List list2, lu7 lu7Var, Integer num2, String str2, String str3, String str4, Boolean bool, String str5, Integer num3, String str6, Integer num4, int i, jh2 jh2Var) {
        this(num, str, list, (i & 8) != 0 ? null : list2, (i & 16) != 0 ? null : lu7Var, (i & 32) != 0 ? null : num2, (i & 64) != 0 ? null : str2, (i & 128) != 0 ? null : str3, (i & 256) != 0 ? null : str4, (i & 512) != 0 ? null : bool, (i & 1024) != 0 ? null : str5, (i & 2048) != 0 ? null : num3, (i & 4096) != 0 ? null : str6, (i & 8192) != 0 ? null : num4);
    }

    public final Boolean a() {
        return this.j;
    }

    public final Integer b() {
        return this.a;
    }

    public final String c() {
        return this.h;
    }

    public final Integer d() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof iv6)) {
            return false;
        }
        iv6 iv6Var = (iv6) obj;
        return aa4.e(this.a, iv6Var.a) && aa4.e(this.b, iv6Var.b) && aa4.e(this.c, iv6Var.c) && aa4.e(this.d, iv6Var.d) && aa4.e(this.e, iv6Var.e) && aa4.e(this.f, iv6Var.f) && aa4.e(this.g, iv6Var.g) && aa4.e(this.h, iv6Var.h) && aa4.e(this.i, iv6Var.i) && aa4.e(this.j, iv6Var.j) && aa4.e(this.k, iv6Var.k) && aa4.e(this.l, iv6Var.l) && aa4.e(this.m, iv6Var.m) && aa4.e(this.n, iv6Var.n);
    }

    public final int hashCode() {
        Integer num = this.a;
        int iB = e2.b(this.c, zg.b((num == null ? 0 : num.hashCode()) * 31, 31, this.b), 31);
        List<lu7> list = this.d;
        int iHashCode = (iB + (list == null ? 0 : list.hashCode())) * 31;
        lu7 lu7Var = this.e;
        int iHashCode2 = (iHashCode + (lu7Var == null ? 0 : lu7Var.hashCode())) * 31;
        Integer num2 = this.f;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.g;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.h;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.i;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.j;
        int iHashCode7 = (iHashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str4 = this.k;
        int iHashCode8 = (iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num3 = this.l;
        int iHashCode9 = (iHashCode8 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str5 = this.m;
        int iHashCode10 = (iHashCode9 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num4 = this.n;
        return iHashCode10 + (num4 != null ? num4.hashCode() : 0);
    }

    public final String toString() {
        Integer num = this.a;
        String str = this.b;
        List<vg6> list = this.c;
        List<lu7> list2 = this.d;
        lu7 lu7Var = this.e;
        Integer num2 = this.f;
        String str2 = this.g;
        String str3 = this.h;
        String str4 = this.i;
        Boolean bool = this.j;
        String str5 = this.k;
        Integer num3 = this.l;
        String str6 = this.m;
        Integer num4 = this.n;
        StringBuilder sb = new StringBuilder("QrInfoResponse(id=");
        sb.append(num);
        sb.append(", datetime=");
        sb.append(str);
        sb.append(", items=");
        sb.append(list);
        sb.append(", shops=");
        sb.append(list2);
        sb.append(", shop=");
        sb.append(lu7Var);
        sb.append(", totalSum=");
        sb.append(num2);
        sb.append(", kkt=");
        kv2.c(sb, str2, ", inn=", str3, ", operationType=");
        sb.append(str4);
        sb.append(", fnsAccountValid=");
        sb.append(bool);
        sb.append(", typePayment=");
        sb.append(str5);
        sb.append(", ofdId=");
        sb.append(num3);
        sb.append(", user=");
        sb.append(str6);
        sb.append(", receiptQueueId=");
        sb.append(num4);
        sb.append(")");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public iv6(Integer num, String str, List<vg6> list, List<? extends lu7> list2, lu7 lu7Var, Integer num2, String str2, String str3, String str4, Boolean bool, String str5, Integer num3, String str6, Integer num4) {
        str.getClass();
        list.getClass();
        this.a = num;
        this.b = str;
        this.c = list;
        this.d = list2;
        this.e = lu7Var;
        this.f = num2;
        this.g = str2;
        this.h = str3;
        this.i = str4;
        this.j = bool;
        this.k = str5;
        this.l = num3;
        this.m = str6;
        this.n = num4;
    }
}
