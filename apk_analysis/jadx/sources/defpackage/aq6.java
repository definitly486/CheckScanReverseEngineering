package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class aq6 {
    public final String a;
    public final String b;

    public aq6(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aq6)) {
            return false;
        }
        aq6 aq6Var = (aq6) obj;
        return aa4.e(this.a, aq6Var.a) && aa4.e(this.b, aq6Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n2.d("PromocodeBottom(title=", this.a, ", subtitle=", this.b, ")");
    }
}
