package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rk4 implements wk4 {
    public final String a;
    public final String b;
    public final boolean c;

    public rk4(String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rk4)) {
            return false;
        }
        rk4 rk4Var = (rk4) obj;
        return aa4.e(this.a, rk4Var.a) && aa4.e(this.b, rk4Var.b) && this.c == rk4Var.c;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return Boolean.valueOf(this.c);
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.b;
    }

    public final String toString() {
        return dh.e(ad2.d("LandingTitleWithBackgroundViewModel(title=", this.a, ", key=", this.b, ", required="), this.c, ")");
    }
}
