package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class mh4 implements wk4 {
    public final String a;
    public final boolean b;
    public final String c;
    public final boolean d;
    public final boolean e;

    public mh4(String str, boolean z, String str2, boolean z2, boolean z3) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = z;
        this.c = str2;
        this.d = z2;
        this.e = z3;
    }

    public static mh4 d(mh4 mh4Var, boolean z, int i) {
        String str = mh4Var.a;
        boolean z2 = mh4Var.b;
        String str2 = mh4Var.c;
        if ((i & 8) != 0) {
            z = mh4Var.d;
        }
        boolean z3 = z;
        boolean z4 = (i & 16) != 0 ? mh4Var.e : false;
        str.getClass();
        str2.getClass();
        return new mh4(str, z2, str2, z3, z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mh4)) {
            return false;
        }
        mh4 mh4Var = (mh4) obj;
        return aa4.e(this.a, mh4Var.a) && this.b == mh4Var.b && aa4.e(this.c, mh4Var.c) && this.d == mh4Var.d && this.e == mh4Var.e;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.c + this.d + this.e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.e) + tg.c(zg.b(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbB = p2.b("LandingAgreementWithBackgroundViewModel(key=", this.a, ", required=", ", title=", this.b);
        ud.f(sbB, this.c, ", isSelected=", this.d, ", isEnable=");
        return dh.e(sbB, this.e, ")");
    }
}
