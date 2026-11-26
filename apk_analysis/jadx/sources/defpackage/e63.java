package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes.dex */
public final class e63 {

    @bq7("favorite")
    private final boolean a;

    @bq7(TtmlNode.ATTR_ID)
    private final long b;

    public e63(boolean z, long j) {
        this.a = z;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e63)) {
            return false;
        }
        e63 e63Var = (e63) obj;
        return this.a == e63Var.a && this.b == e63Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "FavoriteRequest(favorite=" + this.a + ", id=" + this.b + ")";
    }
}
