package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class vx5 {

    @bq7(TtmlNode.LEFT)
    private final String a;

    @bq7(TtmlNode.RIGHT)
    private final String b;

    public vx5(String str, String str2) {
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
        if (!(obj instanceof vx5)) {
            return false;
        }
        vx5 vx5Var = (vx5) obj;
        return aa4.e(this.a, vx5Var.a) && aa4.e(this.b, vx5Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n2.d("OnlineShopTermsResponse(left=", this.a, ", right=", this.b, ")");
    }
}
