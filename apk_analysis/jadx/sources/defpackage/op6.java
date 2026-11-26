package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class op6 implements lp6 {
    public final String a;
    public final String b;
    public final String c;

    public op6(String str, String str2, String str3) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof op6)) {
            return false;
        }
        op6 op6Var = (op6) obj;
        return aa4.e(this.a, op6Var.a) && aa4.e(this.b, op6Var.b) && aa4.e(this.c, op6Var.c);
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
        return me0.d(ad2.d("PromoSelectCardWarningViewModel(title=", this.a, ", description=", this.b, ", iconUrl="), this.c, ")");
    }
}
