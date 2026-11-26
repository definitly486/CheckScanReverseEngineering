package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class f74 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final boolean d;

    public f74(String str, String str2, String str3, boolean z) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f74)) {
            return false;
        }
        f74 f74Var = (f74) obj;
        return aa4.e(this.a, f74Var.a) && aa4.e(this.b, f74Var.b) && aa4.e(this.c, f74Var.c) && this.d == f74Var.d;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.c + this.a + this.b + this.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.c;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("InsuranceShowcaseDescriptionViewModel(title=", this.a, ", iconUrl=", this.b, ", description=");
        sbD.append(this.c);
        sbD.append(", helpInfoHidden=");
        sbD.append(this.d);
        sbD.append(")");
        return sbD.toString();
    }
}
