package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wq6 implements pz3 {
    public final String a;
    public final String b;

    public wq6(String str, String str2) {
        str.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wq6)) {
            return false;
        }
        wq6 wq6Var = (wq6) obj;
        return aa4.e(this.a, wq6Var.a) && aa4.e(this.b, wq6Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.a, this.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return Integer.hashCode(44) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return n2.d("PromocodeTaskDetailsBadgeViewModel(badgeUrl=", this.a, ", deeplink=", this.b, ", badgeHeight=44)");
    }
}
