package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class jx5 {

    @bq7("text")
    private final String a;

    @bq7("textColor")
    private final String b;

    @bq7("backgroundColor")
    private final String c;

    public /* synthetic */ jx5(String str, String str2, String str3, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
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
        if (!(obj instanceof jx5)) {
            return false;
        }
        jx5 jx5Var = (jx5) obj;
        return aa4.e(this.a, jx5Var.a) && aa4.e(this.b, jx5Var.b) && aa4.e(this.c, jx5Var.c);
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
        return me0.d(ad2.d("OnlineShopBadgeResponse(text=", str, ", textColor=", str2, ", backgroundColor="), this.c, ")");
    }

    public jx5(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public jx5() {
        this(null, null, null, 7, null);
    }
}
