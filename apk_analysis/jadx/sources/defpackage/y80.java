package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes.dex */
public final class y80 {

    @bq7("action")
    private final String a;

    @bq7(TtmlNode.ATTR_ID)
    private final int b;

    public y80(String str, int i) {
        str.getClass();
        this.a = str;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y80)) {
            return false;
        }
        y80 y80Var = (y80) obj;
        return aa4.e(this.a, y80Var.a) && this.b == y80Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return hg.d(this.b, "BankCardEvent(action=", this.a, ", id=", ")");
    }
}
