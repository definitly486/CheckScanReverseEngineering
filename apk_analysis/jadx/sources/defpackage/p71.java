package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class p71 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("name")
    private final String b;

    public p71(int i, String str) {
        str.getClass();
        this.a = i;
        this.b = str;
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p71)) {
            return false;
        }
        p71 p71Var = (p71) obj;
        return this.a == p71Var.a && aa4.e(this.b, p71Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return c9.d(this.a, "Category(id=", ", name=", this.b, ")");
    }
}
