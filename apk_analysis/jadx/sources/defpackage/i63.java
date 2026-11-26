package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class i63 {

    @bq7("favorite")
    private final boolean a;

    @bq7(TtmlNode.ATTR_ID)
    private final long b;

    public i63(boolean z, long j) {
        this.a = z;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i63)) {
            return false;
        }
        i63 i63Var = (i63) obj;
        return this.a == i63Var.a && this.b == i63Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "FavouriteBody(favorite=" + this.a + ", id=" + this.b + ")";
    }
}
