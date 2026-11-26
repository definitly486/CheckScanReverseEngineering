package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ns4 implements pz3 {
    public final String a;
    public final String b;
    public final String c;

    public ns4(String str, String str2, String str3) {
        str.getClass();
        str3.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ns4)) {
            return false;
        }
        ns4 ns4Var = (ns4) obj;
        return aa4.e(this.a, ns4Var.a) && aa4.e(this.b, ns4Var.b) && aa4.e(this.c, ns4Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return cg.d(this.a, this.b, this.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return this.c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.b, this.c);
    }

    public final String toString() {
        return me0.d(ad2.d("LoanBenefitPromoSelectViewModel(imageUrl=", this.a, ", title=", this.b, ", description="), this.c, ")");
    }
}
