package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class f77 implements pz3 {
    public final String a;
    public final String b;

    public f77(String str, String str2) {
        str.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f77)) {
            return false;
        }
        f77 f77Var = (f77) obj;
        return aa4.e(this.a, f77Var.a) && aa4.e(this.b, f77Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.a, this.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return Integer.hashCode(32) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return n2.d("RewardedMultiTaskDetailsBadgeViewModel(badgeUrl=", this.a, ", deeplink=", this.b, ", badgeHeight=32)");
    }
}
