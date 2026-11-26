package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class q81 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("logoUrl")
    private final String b;

    @bq7("subtitle")
    private final String c;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String d;

    public q81(int i, String str, String str2, String str3) {
        str2.getClass();
        str3.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q81)) {
            return false;
        }
        q81 q81Var = (q81) obj;
        return this.a == q81Var.a && aa4.e(this.b, q81Var.b) && aa4.e(this.c, q81Var.c) && aa4.e(this.d, q81Var.d);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        String str = this.b;
        return this.d.hashCode() + zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        return dg.c(ng.e(i, "CategoryResponse(id=", ", logoUrl=", str, ", subtitle="), this.c, ", title=", this.d, ")");
    }
}
