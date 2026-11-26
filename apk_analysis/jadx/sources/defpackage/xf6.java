package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class xf6 {

    @bq7("imageUrl")
    private final String a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("profit")
    private final wm6 c;

    @bq7(TtmlNode.ATTR_ID)
    private final int d;

    @bq7("favorite")
    private final boolean e;

    @bq7("ordInfo")
    private final c06 f;

    public xf6(String str, String str2, wm6 wm6Var, int i, boolean z, c06 c06Var) {
        wm6Var.getClass();
        this.a = str;
        this.b = str2;
        this.c = wm6Var;
        this.d = i;
        this.e = z;
        this.f = c06Var;
    }

    public final int a() {
        return this.d;
    }

    public final String b() {
        return this.a;
    }

    public final wm6 c() {
        return this.c;
    }

    public final String d() {
        return this.b;
    }

    public final boolean e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xf6)) {
            return false;
        }
        xf6 xf6Var = (xf6) obj;
        return aa4.e(this.a, xf6Var.a) && aa4.e(this.b, xf6Var.b) && aa4.e(this.c, xf6Var.c) && this.d == xf6Var.d && this.e == xf6Var.e && aa4.e(this.f, xf6Var.f);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iC = tg.c(ej0.b(this.d, (this.c.hashCode() + ((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31, 31), 31, this.e);
        c06 c06Var = this.f;
        return iC + (c06Var != null ? c06Var.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        wm6 wm6Var = this.c;
        int i = this.d;
        boolean z = this.e;
        c06 c06Var = this.f;
        StringBuilder sbD = ad2.d("PreviewOnlineShopResponse(imageUrl=", str, ", title=", str2, ", profit=");
        sbD.append(wm6Var);
        sbD.append(", id=");
        sbD.append(i);
        sbD.append(", isFavorite=");
        sbD.append(z);
        sbD.append(", ordInfo=");
        sbD.append(c06Var);
        sbD.append(")");
        return sbD.toString();
    }
}
