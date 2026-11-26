package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class cz5 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

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

    @bq7("sticker")
    private final a h;

    public static final class a {

        @bq7("color")
        private final String a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        public a(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("Sticker(colorHex=", this.a, ", title=", this.b, ")");
        }
    }

    public cz5(long j, String str, String str2, String str3, String str4, i88 i88Var, qy5 qy5Var, a aVar) {
        m2.e(str, str2, str3, str4);
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = i88Var;
        this.g = qy5Var;
        this.h = aVar;
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

    public final a e() {
        return this.h;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cz5)) {
            return false;
        }
        cz5 cz5Var = (cz5) obj;
        return this.a == cz5Var.a && aa4.e(this.b, cz5Var.b) && aa4.e(this.c, cz5Var.c) && aa4.e(this.d, cz5Var.d) && aa4.e(this.e, cz5Var.e) && aa4.e(this.f, cz5Var.f) && this.g == cz5Var.g && aa4.e(this.h, cz5Var.h);
    }

    public final String f() {
        return this.d;
    }

    public final String g() {
        return this.c;
    }

    public final String h() {
        return this.e;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
        i88 i88Var = this.f;
        int iHashCode = (iB + (i88Var == null ? 0 : i88Var.hashCode())) * 31;
        qy5 qy5Var = this.g;
        int iHashCode2 = (iHashCode + (qy5Var == null ? 0 : qy5Var.hashCode())) * 31;
        a aVar = this.h;
        return iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        i88 i88Var = this.f;
        qy5 qy5Var = this.g;
        a aVar = this.h;
        StringBuilder sbD = ah.d(j, "OperationPlain(id=", ", iconUrl=", str);
        kv2.c(sbD, ", title=", str2, ", subtitle=", str3);
        sbD.append(", value=");
        sbD.append(str4);
        sbD.append(", status=");
        sbD.append(i88Var);
        sbD.append(", categoryType=");
        sbD.append(qy5Var);
        sbD.append(", sticker=");
        sbD.append(aVar);
        sbD.append(")");
        return sbD.toString();
    }
}
