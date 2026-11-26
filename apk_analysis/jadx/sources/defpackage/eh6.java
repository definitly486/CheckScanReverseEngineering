package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class eh6 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    public eh6(String str, String str2, String str3, String str4) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eh6)) {
            return false;
        }
        eh6 eh6Var = (eh6) obj;
        return aa4.e(this.a, eh6Var.a) && aa4.e(this.b, eh6Var.b) && aa4.e(this.c, eh6Var.c) && aa4.e(this.d, eh6Var.d);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.a + this.c + this.d;
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return "cashback_value";
    }

    public final String toString() {
        return dg.c(ad2.d("ProductCashbackValueViewModel(title=", this.a, ", value=", this.b, ", suffix="), this.c, ", prefix=", this.d, ")");
    }
}
