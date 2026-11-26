package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes.dex */
public final class nc0 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    public nc0(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof nc0) && this.a == ((nc0) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "BannerWatchRequestBody(id=", ")");
    }
}
