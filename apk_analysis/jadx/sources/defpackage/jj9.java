package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class jj9 implements hk9 {
    public final int a;
    public final String b;
    public final wi9.e c;

    public jj9(int i, String str, wi9.e eVar) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = eVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jj9)) {
            return false;
        }
        jj9 jj9Var = (jj9) obj;
        return this.a == jj9Var.a && aa4.e(this.b, jj9Var.b) && this.c.equals(jj9Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c;
    }

    public final int hashCode() {
        return this.c.a.hashCode() + zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "WithdrawalCommonBannerViewModel(id=", ", bannerUrl=", this.b, ", event=");
        sbE.append(this.c);
        sbE.append(")");
        return sbE.toString();
    }
}
