package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class lh9 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("sum")
    private final long b;

    public lh9(int i, long j) {
        this.a = i;
        this.b = j;
    }

    public final kh9 a() {
        return new kh9(this.a, this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lh9)) {
            return false;
        }
        lh9 lh9Var = (lh9) obj;
        return this.a == lh9Var.a && this.b == lh9Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "WeekdayExpenseResponse(id=" + this.a + ", sum=" + this.b + ")";
    }
}
