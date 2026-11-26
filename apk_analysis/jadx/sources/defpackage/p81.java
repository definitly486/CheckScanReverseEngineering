package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes5.dex */
public final class p81 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("name")
    private final String b;

    public p81(int i, String str) {
        str.getClass();
        this.a = i;
        this.b = str;
    }

    public final p71 a() {
        return new p71(this.a, this.b);
    }

    public final n81 b() {
        return new n81(this.a, this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p81)) {
            return false;
        }
        p81 p81Var = (p81) obj;
        return this.a == p81Var.a && aa4.e(this.b, p81Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return c9.d(this.a, "CategoryResponse(id=", ", name=", this.b, ")");
    }
}
