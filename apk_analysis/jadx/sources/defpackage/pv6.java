package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pv6 {
    public final String a;
    public final String b;

    public pv6(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pv6)) {
            return false;
        }
        pv6 pv6Var = (pv6) obj;
        return aa4.e(this.a, pv6Var.a) && aa4.e(this.b, pv6Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("Question(title=", this.a, ", description=", this.b, ")");
    }
}
