package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class m32 {
    public final String a;
    public final h32 b;
    public final String c;
    public final String d;
    public final String e;
    public final j32 f;
    public final boolean g;
    public final b54 h;

    public m32(String str, h32 h32Var, String str2, String str3, String str4, j32 j32Var, boolean z, b54 b54Var) {
        str.getClass();
        this.a = str;
        this.b = h32Var;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = j32Var;
        this.g = z;
        this.h = b54Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m32)) {
            return false;
        }
        m32 m32Var = (m32) obj;
        return aa4.e(this.a, m32Var.a) && aa4.e(this.b, m32Var.b) && aa4.e(this.c, m32Var.c) && aa4.e(this.d, m32Var.d) && aa4.e(this.e, m32Var.e) && aa4.e(this.f, m32Var.f) && this.g == m32Var.g && aa4.e(this.h, m32Var.h);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        h32 h32Var = this.b;
        int iHashCode2 = (iHashCode + (h32Var == null ? 0 : h32Var.hashCode())) * 31;
        String str = this.c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        j32 j32Var = this.f;
        int iC = tg.c((iHashCode5 + (j32Var == null ? 0 : j32Var.hashCode())) * 31, 31, this.g);
        b54 b54Var = this.h;
        return iC + (b54Var != null ? b54Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CouponInfo(logoUrl=");
        sb.append(this.a);
        sb.append(", badge=");
        sb.append(this.b);
        sb.append(", title=");
        kv2.c(sb, this.c, ", profitTitle=", this.d, ", subtitle=");
        sb.append(this.e);
        sb.append(", button=");
        sb.append(this.f);
        sb.append(", isFavourite=");
        sb.append(this.g);
        sb.append(", info=");
        sb.append(this.h);
        sb.append(")");
        return sb.toString();
    }
}
