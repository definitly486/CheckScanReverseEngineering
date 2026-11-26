package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ko6 implements lp6 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    public ko6(String str, String str2, String str3, String str4) {
        m2.e(str, str2, str3, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ko6)) {
            return false;
        }
        ko6 ko6Var = (ko6) obj;
        return aa4.e(this.a, ko6Var.a) && aa4.e(this.b, ko6Var.b) && aa4.e(this.c, ko6Var.c) && aa4.e(this.d, ko6Var.d);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c + this.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.a, this.b);
    }

    public final String toString() {
        return dg.c(ad2.d("PromoSelectCardConditionViewModel(title=", this.a, ", description=", this.b, ", valueTitle="), this.c, ", valueDescription=", this.d, ")");
    }
}
