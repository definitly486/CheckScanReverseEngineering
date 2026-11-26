package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class r99 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    public r99(long j) {
        this.a = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r99) && this.a == ((r99) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "UserCardTransferRequestBody(id=", ")");
    }
}
