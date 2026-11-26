package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes.dex */
public final class yv3 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    public yv3(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof yv3) && this.a == ((yv3) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "HidableBannerRequestBody(id=", ")");
    }
}
