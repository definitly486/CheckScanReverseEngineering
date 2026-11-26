package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class y79 {

    @bq7(TtmlNode.ATTR_ID)
    private final String a;

    public y79(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof y79) && aa4.e(this.a, ((y79) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("UpdateCityData(id=", this.a, ")");
    }
}
