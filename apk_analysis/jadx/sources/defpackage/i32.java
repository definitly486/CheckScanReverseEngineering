package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class i32 {

    @bq7("text")
    private final String a;

    @bq7("textColor")
    private final String b;

    @bq7("backgroundColor")
    private final String c;

    public i32(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i32)) {
            return false;
        }
        i32 i32Var = (i32) obj;
        return aa4.e(this.a, i32Var.a) && aa4.e(this.b, i32Var.b) && aa4.e(this.c, i32Var.c);
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
        String str = this.a;
        String str2 = this.b;
        return me0.d(ad2.d("CouponBadgeResponse(text=", str, ", textColor=", str2, ", backgroundColor="), this.c, ")");
    }
}
