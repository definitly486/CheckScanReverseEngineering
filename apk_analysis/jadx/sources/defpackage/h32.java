package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class h32 {
    public final String a;
    public final String b;
    public final String c;

    public h32(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h32)) {
            return false;
        }
        h32 h32Var = (h32) obj;
        return aa4.e(this.a, h32Var.a) && aa4.e(this.b, h32Var.b) && aa4.e(this.c, h32Var.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return me0.d(ad2.d("CouponBadge(text=", this.a, ", textColor=", this.b, ", backgroundColor="), this.c, ")");
    }
}
