package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class kq6 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    public kq6(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof kq6) && this.a == ((kq6) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "PromocodeSelectRequestBody(id=", ")");
    }
}
