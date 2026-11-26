package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class g67 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("name")
    private final String b;

    @bq7("logoUrl")
    private final String c;

    public g67(int i, String str, String str2) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
    }

    public final d67 a() {
        return new d67(this.a, this.b, this.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g67)) {
            return false;
        }
        g67 g67Var = (g67) obj;
        return this.a == g67Var.a && aa4.e(this.b, g67Var.b) && aa4.e(this.c, g67Var.c);
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        return me0.d(ng.e(i, "RetailerResponse(id=", ", name=", str, ", logoUrl="), this.c, ")");
    }
}
