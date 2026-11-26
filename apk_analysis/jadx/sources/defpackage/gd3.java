package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class gd3 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    @bq7("action")
    private final String b;

    public gd3(long j, String str) {
        str.getClass();
        this.a = j;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gd3)) {
            return false;
        }
        gd3 gd3Var = (gd3) obj;
        return this.a == gd3Var.a && aa4.e(this.b, gd3Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        StringBuilder sbD = ah.d(this.a, "FloatingEventRequestBody(id=", ", action=", this.b);
        sbD.append(")");
        return sbD.toString();
    }

    public /* synthetic */ gd3(long j, String str, int i, jh2 jh2Var) {
        this(j, (i & 2) != 0 ? "HIDE" : str);
    }
}
