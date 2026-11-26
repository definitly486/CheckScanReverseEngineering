package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class n32 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("logoUrl")
    private final String b;

    @bq7("badge")
    private final i32 c;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String d;

    @bq7("profitTitle")
    private final String e;

    @bq7("subtitle")
    private final String f;

    @bq7("button")
    private final k32 g;

    @bq7("info")
    private final e54 h;

    @bq7("isFavorite")
    private final boolean i;

    public n32(int i, String str, i32 i32Var, String str2, String str3, String str4, k32 k32Var, e54 e54Var, boolean z) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = i32Var;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = k32Var;
        this.h = e54Var;
        this.i = z;
    }

    public final i32 a() {
        return this.c;
    }

    public final k32 b() {
        return this.g;
    }

    public final e54 c() {
        return this.h;
    }

    public final String d() {
        return this.b;
    }

    public final String e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n32)) {
            return false;
        }
        n32 n32Var = (n32) obj;
        return this.a == n32Var.a && aa4.e(this.b, n32Var.b) && aa4.e(this.c, n32Var.c) && aa4.e(this.d, n32Var.d) && aa4.e(this.e, n32Var.e) && aa4.e(this.f, n32Var.f) && aa4.e(this.g, n32Var.g) && aa4.e(this.h, n32Var.h) && this.i == n32Var.i;
    }

    public final String f() {
        return this.f;
    }

    public final String g() {
        return this.d;
    }

    public final boolean h() {
        return this.i;
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        i32 i32Var = this.c;
        int iHashCode = (iB + (i32Var == null ? 0 : i32Var.hashCode())) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        k32 k32Var = this.g;
        int iHashCode5 = (iHashCode4 + (k32Var == null ? 0 : k32Var.hashCode())) * 31;
        e54 e54Var = this.h;
        return Boolean.hashCode(this.i) + ((iHashCode5 + (e54Var != null ? e54Var.hashCode() : 0)) * 31);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        i32 i32Var = this.c;
        String str2 = this.d;
        String str3 = this.e;
        String str4 = this.f;
        k32 k32Var = this.g;
        e54 e54Var = this.h;
        boolean z = this.i;
        StringBuilder sbE = ng.e(i, "CouponInfoResponse(id=", ", logoUrl=", str, ", badge=");
        sbE.append(i32Var);
        sbE.append(", title=");
        sbE.append(str2);
        sbE.append(", profitTitle=");
        kv2.c(sbE, str3, ", subtitle=", str4, ", button=");
        sbE.append(k32Var);
        sbE.append(", info=");
        sbE.append(e54Var);
        sbE.append(", isFavorite=");
        return dh.e(sbE, z, ")");
    }
}
