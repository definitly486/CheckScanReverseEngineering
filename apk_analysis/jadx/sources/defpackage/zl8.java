package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class zl8 implements so8, f34 {
    public final int a;
    public final String b;
    public final String c;
    public final b06 d;
    public final pw7 e;

    public zl8(int i, String str, String str2, b06 b06Var, pw7 pw7Var) {
        str.getClass();
        str2.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = b06Var;
        this.e = pw7Var;
    }

    @Override // defpackage.f34
    public final int d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zl8)) {
            return false;
        }
        zl8 zl8Var = (zl8) obj;
        return this.a == zl8Var.a && aa4.e(this.b, zl8Var.b) && aa4.e(this.c, zl8Var.c) && aa4.e(this.d, zl8Var.d) && this.e.equals(zl8Var.e);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.d + this.c;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        b06 b06Var = this.d;
        return this.e.hashCode() + ((iB + (b06Var == null ? 0 : b06Var.hashCode())) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "TaskBannerViewModel(id=", ", bannerUrl=", this.b, ", deeplink=");
        sbE.append(this.c);
        sbE.append(", ordInfo=");
        sbE.append(this.d);
        sbE.append(", analytics=");
        sbE.append(this.e);
        sbE.append(")");
        return sbE.toString();
    }
}
