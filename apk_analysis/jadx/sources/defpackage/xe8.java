package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class xe8 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("text")
    private final String b;

    @bq7("buttonText")
    private final String c;

    @bq7("imageUrl")
    private final String d;

    @bq7("isError")
    private final boolean e;

    public xe8(String str, String str2, String str3, String str4, boolean z) {
        m2.e(str, str2, str3, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = z;
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.d;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.a;
    }

    public final boolean e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xe8)) {
            return false;
        }
        xe8 xe8Var = (xe8) obj;
        return aa4.e(this.a, xe8Var.a) && aa4.e(this.b, xe8Var.b) && aa4.e(this.c, xe8Var.c) && aa4.e(this.d, xe8Var.d) && this.e == xe8Var.e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.e) + zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        boolean z = this.e;
        StringBuilder sbD = ad2.d("SupportFormResultResponse(title=", str, ", text=", str2, ", buttonText=");
        kv2.c(sbD, str3, ", imageUrl=", str4, ", isError=");
        return dh.e(sbD, z, ")");
    }
}
