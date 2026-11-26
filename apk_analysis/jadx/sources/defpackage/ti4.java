package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ti4 implements wk4 {
    public final wi4 a;
    public final wi4 b;

    public ti4(wi4 wi4Var, wi4 wi4Var2) {
        wi4Var.getClass();
        this.a = wi4Var;
        this.b = wi4Var2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ti4)) {
            return false;
        }
        ti4 ti4Var = (ti4) obj;
        return aa4.e(this.a, ti4Var.a) && aa4.e(this.b, ti4Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        String strF = this.a.f();
        wi4 wi4Var = this.b;
        return bj.c(strF, wi4Var != null ? wi4Var.f() : null);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        wi4 wi4Var = this.b;
        return iHashCode + (wi4Var == null ? 0 : wi4Var.hashCode());
    }

    @Override // defpackage.pz3
    public final Object id() {
        String str = this.a.a;
        wi4 wi4Var = this.b;
        String str2 = wi4Var != null ? wi4Var.a : null;
        if (str2 == null) {
            str2 = "";
        }
        return ni0.c(str, str2);
    }

    public final String toString() {
        return "LandingDoubleImageViewModel(first=" + this.a + ", second=" + this.b + ")";
    }
}
