package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class kh9 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("sum")
    private final long b;

    public kh9(int i, long j) {
        this.a = i;
        this.b = j;
    }

    public final int a() {
        return this.a;
    }

    public final long b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kh9)) {
            return false;
        }
        kh9 kh9Var = (kh9) obj;
        return this.a == kh9Var.a && this.b == kh9Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "WeekdayExpense(id=" + this.a + ", sum=" + this.b + ")";
    }
}
