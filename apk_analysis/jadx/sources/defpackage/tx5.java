package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes.dex */
public final class tx5 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("logoUrl")
    private final String b;

    @bq7("favorite")
    private final boolean c;

    @bq7("profit")
    private final wm6 d;

    @bq7("previewLogoUrl")
    private final String e;

    @bq7("ordInfo")
    private final c06 f;

    @bq7("adult")
    private final boolean g;

    public /* synthetic */ tx5(int i, String str, boolean z, wm6 wm6Var, String str2, c06 c06Var, boolean z2, int i2, jh2 jh2Var) {
        this(i, (i2 & 2) != 0 ? null : str, z, wm6Var, str2, c06Var, (i2 & 64) != 0 ? false : z2);
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final wm6 c() {
        return this.d;
    }

    public final boolean d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tx5)) {
            return false;
        }
        tx5 tx5Var = (tx5) obj;
        return this.a == tx5Var.a && aa4.e(this.b, tx5Var.b) && this.c == tx5Var.c && aa4.e(this.d, tx5Var.d) && aa4.e(this.e, tx5Var.e) && aa4.e(this.f, tx5Var.f) && this.g == tx5Var.g;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        String str = this.b;
        int iC = tg.c((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c);
        wm6 wm6Var = this.d;
        int iHashCode2 = (iC + (wm6Var == null ? 0 : wm6Var.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        c06 c06Var = this.f;
        return Boolean.hashCode(this.g) + ((iHashCode3 + (c06Var != null ? c06Var.hashCode() : 0)) * 31);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        boolean z = this.c;
        wm6 wm6Var = this.d;
        String str2 = this.e;
        c06 c06Var = this.f;
        boolean z2 = this.g;
        StringBuilder sbE = ng.e(i, "OnlineShopResponse(id=", ", logoUrl=", str, ", isFavorite=");
        sbE.append(z);
        sbE.append(", profit=");
        sbE.append(wm6Var);
        sbE.append(", previewLogoUrl=");
        sbE.append(str2);
        sbE.append(", ordInfo=");
        sbE.append(c06Var);
        sbE.append(", adult=");
        return dh.e(sbE, z2, ")");
    }

    public tx5(int i, String str, boolean z, wm6 wm6Var, String str2, c06 c06Var, boolean z2) {
        this.a = i;
        this.b = str;
        this.c = z;
        this.d = wm6Var;
        this.e = str2;
        this.f = c06Var;
        this.g = z2;
    }
}
