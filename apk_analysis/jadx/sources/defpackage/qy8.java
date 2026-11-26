package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class qy8 {

    @bq7(TtmlNode.ATTR_ID)
    private final String a;

    public qy8(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof qy8) && aa4.e(this.a, ((qy8) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("TrackingRequest(id=", this.a, ")");
    }
}
