package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class jo0 {

    @bq7("name")
    private final String a;

    @bq7("bonus")
    private final String b;

    public jo0(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jo0)) {
            return false;
        }
        jo0 jo0Var = (jo0) obj;
        return aa4.e(this.a, jo0Var.a) && aa4.e(this.b, jo0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("BonusProgramTerm(name=", this.a, ", bonus=", this.b, ")");
    }
}
