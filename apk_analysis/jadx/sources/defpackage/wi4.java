package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wi4 implements wk4, xi4 {
    public final String a;
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;
    public final String f;
    public final String g;
    public final String h;

    public wi4(String str, boolean z, String str2, String str3, boolean z2) {
        str.getClass();
        str3.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = z;
        this.e = z2;
        this.f = str;
        this.g = str3;
        this.h = String.valueOf(z);
    }

    public static wi4 m(wi4 wi4Var, boolean z, int i) {
        String str = wi4Var.a;
        String str2 = wi4Var.b;
        String str3 = wi4Var.c;
        if ((i & 8) != 0) {
            z = wi4Var.d;
        }
        boolean z2 = z;
        boolean z3 = (i & 16) != 0 ? wi4Var.e : false;
        wi4Var.getClass();
        str.getClass();
        str3.getClass();
        return new wi4(str, z2, str2, str3, z3);
    }

    @Override // defpackage.xi4
    public final String a() {
        return this.f;
    }

    @Override // defpackage.xi4
    public final String b() {
        return this.h;
    }

    @Override // defpackage.xi4
    public final String d() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wi4)) {
            return false;
        }
        wi4 wi4Var = (wi4) obj;
        return aa4.e(this.a, wi4Var.a) && this.b.equals(wi4Var.b) && aa4.e(this.c, wi4Var.c) && this.d == wi4Var.d && this.e == wi4Var.e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.e) + tg.c(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    @Override // defpackage.pz3
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final String f() {
        return this.b + this.d + this.e;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("LandingImageViewModel(key=", this.a, ", url=", this.b, ", parentKey=");
        ud.f(sbD, this.c, ", isSelected=", this.d, ", isEnable=");
        return dh.e(sbD, this.e, ")");
    }
}
