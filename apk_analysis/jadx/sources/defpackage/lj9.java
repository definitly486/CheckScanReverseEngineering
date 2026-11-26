package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lj9 implements hk9 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final wi9 e;

    public lj9(int i, String str, String str2, String str3, wi9 wi9Var) {
        str.getClass();
        str3.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = wi9Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lj9)) {
            return false;
        }
        lj9 lj9Var = (lj9) obj;
        return this.a == lj9Var.a && aa4.e(this.b, lj9Var.b) && aa4.e(this.c, lj9Var.c) && aa4.e(this.d, lj9Var.d) && this.e.equals(lj9Var.e);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e;
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        return this.e.hashCode() + zg.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "WithdrawalCommonMethodViewModel(id=", ", title=", this.b, ", subtitle=");
        kv2.c(sbE, this.c, ", iconUrl=", this.d, ", event=");
        sbE.append(this.e);
        sbE.append(")");
        return sbE.toString();
    }
}
