package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class j8 {

    @bq7(TtmlNode.ATTR_ID)
    private final String a;

    @bq7("source")
    private final String b;

    public j8(String str, String str2) {
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j8)) {
            return false;
        }
        j8 j8Var = (j8) obj;
        return aa4.e(this.a, j8Var.a) && aa4.e(this.b, j8Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return n2.d("AdWatchedRequestBody(id=", this.a, ", source=", this.b, ")");
    }
}
