package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class q30 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("logoUrl")
    private final String b;

    @bq7("url")
    private final String c;

    public q30(int i, String str, String str2) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
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

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q30)) {
            return false;
        }
        q30 q30Var = (q30) obj;
        return this.a == q30Var.a && aa4.e(this.b, q30Var.b) && aa4.e(this.c, q30Var.c);
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        return me0.d(ng.e(i, "BalanceHidableBannerResponse(id=", ", logoUrl=", str, ", url="), this.c, ")");
    }
}
