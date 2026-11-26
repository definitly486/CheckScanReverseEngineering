package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class zp6 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("activated")
    private final boolean b;

    @bq7("buttonTitle")
    private final String c;

    @bq7("placeholderText")
    private final String d;

    @bq7("valueText")
    private final String e;

    public zp6(String str, boolean z, String str2, String str3, String str4) {
        str.getClass();
        this.a = str;
        this.b = z;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public final boolean a() {
        return this.b;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.d;
    }

    public final String d() {
        return this.a;
    }

    public final String e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zp6)) {
            return false;
        }
        zp6 zp6Var = (zp6) obj;
        return aa4.e(this.a, zp6Var.a) && this.b == zp6Var.b && aa4.e(this.c, zp6Var.c) && aa4.e(this.d, zp6Var.d) && aa4.e(this.e, zp6Var.e);
    }

    public final int hashCode() {
        int iC = tg.c(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iC + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        boolean z = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        StringBuilder sbB = p2.b("PromocodeBlockResponse(title=", str, ", activated=", ", buttonTitle=", z);
        kv2.c(sbB, str2, ", placeholderText=", str3, ", valueText=");
        return me0.d(sbB, str4, ")");
    }
}
