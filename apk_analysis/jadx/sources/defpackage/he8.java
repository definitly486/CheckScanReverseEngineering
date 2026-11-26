package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class he8 {

    @bq7("text")
    private final String a;

    @bq7("url")
    private final String b;

    public he8(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof he8)) {
            return false;
        }
        he8 he8Var = (he8) obj;
        return aa4.e(this.a, he8Var.a) && aa4.e(this.b, he8Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("SupportFaqButtonResponse(text=", this.a, ", url=", this.b, ")");
    }
}
