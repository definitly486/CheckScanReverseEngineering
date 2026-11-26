package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ry5 {

    @bq7(TtmlNode.ATTR_ID)
    private long a;

    @bq7("iconUrl")
    private final String b;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String c;

    @bq7("subtitle")
    private final String d;

    @bq7("value")
    private final String e;

    @bq7(NotificationCompat.CATEGORY_STATUS)
    private final i88 f;

    @bq7("category")
    private final qy5 g;

    @bq7("subOperations")
    private final List<cz5> h;

    @bq7("sticker")
    private final cz5.a i;

    public ry5(long j, String str, String str2, String str3, String str4, i88 i88Var, qy5 qy5Var, List<cz5> list, cz5.a aVar) {
        m2.e(str, str2, str3, str4);
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = i88Var;
        this.g = qy5Var;
        this.h = list;
        this.i = aVar;
    }

    public final qy5 a() {
        return this.g;
    }

    public final String b() {
        return this.b;
    }

    public final long c() {
        return this.a;
    }

    public final i88 d() {
        return this.f;
    }

    public final cz5.a e() {
        return this.i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ry5)) {
            return false;
        }
        ry5 ry5Var = (ry5) obj;
        return this.a == ry5Var.a && aa4.e(this.b, ry5Var.b) && aa4.e(this.c, ry5Var.c) && aa4.e(this.d, ry5Var.d) && aa4.e(this.e, ry5Var.e) && aa4.e(this.f, ry5Var.f) && this.g == ry5Var.g && aa4.e(this.h, ry5Var.h) && aa4.e(this.i, ry5Var.i);
    }

    public final List<cz5> f() {
        return this.h;
    }

    public final String g() {
        return this.d;
    }

    public final String h() {
        return this.c;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
        i88 i88Var = this.f;
        int iHashCode = (iB + (i88Var == null ? 0 : i88Var.hashCode())) * 31;
        qy5 qy5Var = this.g;
        int iHashCode2 = (iHashCode + (qy5Var == null ? 0 : qy5Var.hashCode())) * 31;
        List<cz5> list = this.h;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        cz5.a aVar = this.i;
        return iHashCode3 + (aVar != null ? aVar.hashCode() : 0);
    }

    public final String i() {
        return this.e;
    }

    public final void j(long j) {
        this.a = j;
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        i88 i88Var = this.f;
        qy5 qy5Var = this.g;
        List<cz5> list = this.h;
        cz5.a aVar = this.i;
        StringBuilder sbD = ah.d(j, "OperationGroup(id=", ", iconUrl=", str);
        kv2.c(sbD, ", title=", str2, ", subtitle=", str3);
        sbD.append(", value=");
        sbD.append(str4);
        sbD.append(", status=");
        sbD.append(i88Var);
        sbD.append(", categoryType=");
        sbD.append(qy5Var);
        sbD.append(", subOperations=");
        sbD.append(list);
        sbD.append(", sticker=");
        sbD.append(aVar);
        sbD.append(")");
        return sbD.toString();
    }
}
