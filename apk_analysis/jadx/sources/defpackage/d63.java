package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class d63 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("favorite")
    private final boolean b;

    public d63(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d63)) {
            return false;
        }
        d63 d63Var = (d63) obj;
        return this.a == d63Var.a && this.b == d63Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "FavoriteRequest(id=" + this.a + ", favorite=" + this.b + ")";
    }
}
