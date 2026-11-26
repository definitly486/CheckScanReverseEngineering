package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ga0 implements pz3 {
    public final String a;
    public final String b;
    public final String c;

    public ga0(String str, String str2, String str3) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ga0)) {
            return false;
        }
        ga0 ga0Var = (ga0) obj;
        return aa4.e(this.a, ga0Var.a) && this.b.equals(ga0Var.b) && this.c.equals(ga0Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return cg.d(this.a, this.b, this.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return me0.d(ad2.d("BankLandingBenefitViewModel(title=", this.a, ", subtitle=", this.b, ", iconUrl="), this.c, ")");
    }
}
