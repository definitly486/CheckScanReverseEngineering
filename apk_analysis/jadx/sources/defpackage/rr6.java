package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class rr6 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    @bq7("logoUrl")
    private final String b;

    @bq7("isFavorite")
    private final boolean c;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String d;

    @bq7("subtitle")
    private final String e;

    @bq7("bottom")
    private final mx5 f;

    public rr6(long j, String str, boolean z, String str2, String str3, mx5 mx5Var) {
        str.getClass();
        str2.getClass();
        mx5Var.getClass();
        this.a = j;
        this.b = str;
        this.c = z;
        this.d = str2;
        this.e = str3;
        this.f = mx5Var;
    }

    public final mx5 a() {
        return this.f;
    }

    public final long b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.e;
    }

    public final String e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rr6)) {
            return false;
        }
        rr6 rr6Var = (rr6) obj;
        return this.a == rr6Var.a && aa4.e(this.b, rr6Var.b) && this.c == rr6Var.c && aa4.e(this.d, rr6Var.d) && aa4.e(this.e, rr6Var.e) && aa4.e(this.f, rr6Var.f);
    }

    public final boolean f() {
        return this.c;
    }

    public final int hashCode() {
        int iB = zg.b(tg.c(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        return this.f.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        boolean z = this.c;
        String str2 = this.d;
        String str3 = this.e;
        mx5 mx5Var = this.f;
        StringBuilder sbD = ah.d(j, "PromocodesResponse(id=", ", logoUrl=", str);
        sbD.append(", isFavourite=");
        sbD.append(z);
        sbD.append(", title=");
        sbD.append(str2);
        sbD.append(", subtitle=");
        sbD.append(str3);
        sbD.append(", bottom=");
        sbD.append(mx5Var);
        sbD.append(")");
        return sbD.toString();
    }
}
