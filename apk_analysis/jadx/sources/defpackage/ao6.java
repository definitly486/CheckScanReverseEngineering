package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ao6 {

    @bq7("backgroundColor")
    private final String a;

    @bq7("text")
    private final String b;

    @bq7("textColor")
    private final String c;

    public ao6(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ao6)) {
            return false;
        }
        ao6 ao6Var = (ao6) obj;
        return aa4.e(this.a, ao6Var.a) && aa4.e(this.b, ao6Var.b) && aa4.e(this.c, ao6Var.c);
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
        return me0.d(ad2.d("PromoInfoResponse(backgroundColor=", str, ", text=", str2, ", textColor="), this.c, ")");
    }
}
