package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class r30 implements pz3 {
    public final int a;
    public final String b;
    public final String c;

    public r30(int i, String str, String str2) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r30)) {
            return false;
        }
        r30 r30Var = (r30) obj;
        return this.a == r30Var.a && aa4.e(this.b, r30Var.b) && aa4.e(this.c, r30Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.b, this.c);
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        return iB + (str == null ? 0 : str.hashCode());
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a + this.b;
    }

    public final String toString() {
        return me0.d(ng.e(this.a, "BalanceHidableBannerViewModel(id=", ", bannerUrl=", this.b, ", deeplink="), this.c, ")");
    }
}
