package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ec8 implements pz3 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    public ec8(int i, String str, String str2, String str3, String str4, String str5) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ec8)) {
            return false;
        }
        ec8 ec8Var = (ec8) obj;
        return this.a == ec8Var.a && aa4.e(this.b, ec8Var.b) && aa4.e(this.c, ec8Var.c) && aa4.e(this.d, ec8Var.d) && aa4.e(this.e, ec8Var.e) && aa4.e(this.f, ec8Var.f);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.e + this.f + this.d;
    }

    public final int hashCode() {
        return this.f.hashCode() + zg.b(zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "SubscriptionBannerViewModel(id=", ", title=", this.b, ", description=");
        kv2.c(sbE, this.c, ", logoUrl=", this.d, ", buttonTitle=");
        return dg.c(sbE, this.e, ", url=", this.f, ")");
    }
}
