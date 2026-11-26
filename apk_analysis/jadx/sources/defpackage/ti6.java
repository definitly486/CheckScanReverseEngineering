package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ti6 implements pz3 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public ti6(int i, String str, String str2, String str3, String str4) {
        str.getClass();
        str3.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ti6)) {
            return false;
        }
        ti6 ti6Var = (ti6) obj;
        return this.a == ti6Var.a && aa4.e(this.b, ti6Var.b) && this.c.equals(ti6Var.c) && aa4.e(this.d, ti6Var.d) && aa4.e(this.e, ti6Var.e);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.a + this.e;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        return iB + (str == null ? 0 : str.hashCode());
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "ProductViewModel(id=", ", imageUrl=", this.b, ", badgeText=");
        kv2.c(sbE, this.c, ", title=", this.d, ", badgeColor=");
        return me0.d(sbE, this.e, ")");
    }
}
