package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class ke1 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("titleColor")
    private final String c;

    @bq7("imageUrl")
    private final String d;

    @bq7("backgroundColor")
    private final String e;

    @bq7("sort")
    private final int f;

    @bq7("url")
    private final String g;

    @bq7("ordInfo")
    private final c06 h;

    public ke1(int i, String str, String str2, String str3, String str4, int i2, String str5, c06 c06Var) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = i2;
        this.g = str5;
        this.h = c06Var;
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.d;
    }

    public final c06 c() {
        return this.h;
    }

    public final String d() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ke1)) {
            return false;
        }
        ke1 ke1Var = (ke1) obj;
        return this.a == ke1Var.a && aa4.e(this.b, ke1Var.b) && aa4.e(this.c, ke1Var.c) && aa4.e(this.d, ke1Var.d) && aa4.e(this.e, ke1Var.e) && this.f == ke1Var.f && aa4.e(this.g, ke1Var.g) && aa4.e(this.h, ke1Var.h);
    }

    public final int hashCode() {
        int iB = zg.b(ej0.b(this.f, zg.b(zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31), 31, this.g);
        c06 c06Var = this.h;
        return iB + (c06Var == null ? 0 : c06Var.hashCode());
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        int i2 = this.f;
        String str5 = this.g;
        c06 c06Var = this.h;
        StringBuilder sbE = ng.e(i, "ChequeMiniBannerResponse(id=", ", title=", str, ", titleColor=");
        kv2.c(sbE, str2, ", imageUrl=", str3, ", backgroundColor=");
        o2.e(sbE, str4, ", sort=", i2, ", url=");
        sbE.append(str5);
        sbE.append(", ordInfo=");
        sbE.append(c06Var);
        sbE.append(")");
        return sbE.toString();
    }
}
