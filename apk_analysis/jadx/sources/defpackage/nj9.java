package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class nj9 implements hk9 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final wi9 e;

    public nj9(int i, String str, String str2, String str3, wi9 wi9Var) {
        str.getClass();
        str3.getClass();
        wi9Var.getClass();
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
        if (!(obj instanceof nj9)) {
            return false;
        }
        nj9 nj9Var = (nj9) obj;
        return this.a == nj9Var.a && aa4.e(this.b, nj9Var.b) && aa4.e(this.c, nj9Var.c) && aa4.e(this.d, nj9Var.d) && aa4.e(this.e, nj9Var.e);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.c + this.b + this.d + this.e;
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
        StringBuilder sbE = ng.e(this.a, "WithdrawalHeaderLogoBannerViewModel(id=", ", description=", this.b, ", value=");
        kv2.c(sbE, this.c, ", logoUrl=", this.d, ", event=");
        sbE.append(this.e);
        sbE.append(")");
        return sbE.toString();
    }
}
