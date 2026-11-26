package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class hi4 implements wk4, xi4 {
    public final String a;
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;
    public final String f;
    public final String g;
    public final String h;

    public hi4(String str, boolean z, String str2, String str3, boolean z2) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = z;
        this.e = z2;
        this.f = str3;
        this.g = str;
        this.h = String.valueOf(z);
    }

    public static hi4 l(hi4 hi4Var, boolean z, int i) {
        String str = hi4Var.a;
        String str2 = hi4Var.b;
        String str3 = hi4Var.c;
        if ((i & 8) != 0) {
            z = hi4Var.d;
        }
        boolean z2 = z;
        boolean z3 = (i & 16) != 0 ? hi4Var.e : false;
        str.getClass();
        str2.getClass();
        str3.getClass();
        return new hi4(str, z2, str2, str3, z3);
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
        if (!(obj instanceof hi4)) {
            return false;
        }
        hi4 hi4Var = (hi4) obj;
        return aa4.e(this.a, hi4Var.a) && aa4.e(this.b, hi4Var.b) && aa4.e(this.c, hi4Var.c) && this.d == hi4Var.d && this.e == hi4Var.e;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.d + this.e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.e) + tg.c(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.c;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("LandingCheckBoxWithBackgroundViewModel(parentKey=", this.a, ", title=", this.b, ", key=");
        ud.f(sbD, this.c, ", isSelected=", this.d, ", isEnable=");
        return dh.e(sbD, this.e, ")");
    }
}
