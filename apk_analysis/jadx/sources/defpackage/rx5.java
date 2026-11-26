package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class rx5 {

    @bq7("badge")
    private final jx5 a;

    @bq7("button")
    private final ox5 b;

    @bq7("favorite")
    private final boolean c;

    @bq7("imageUrl")
    private final String d;

    @bq7("logoUrl")
    private final String e;

    @bq7("profitTitle")
    private final String f;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String g;

    @bq7("subTitle")
    private final String h;

    @bq7("terms")
    private final List<vx5> i;

    @bq7("restriction")
    private final String j;

    @bq7("tracking")
    private final ry8 k;

    @bq7("profit")
    private final sx5.c l;

    @bq7("ordInfo")
    private final c06 m;

    @bq7("promoInfo")
    private final ao6 n;

    @bq7("productLinkChecker")
    private final xh6 o;

    public /* synthetic */ rx5(jx5 jx5Var, ox5 ox5Var, boolean z, String str, String str2, String str3, String str4, String str5, List list, String str6, ry8 ry8Var, sx5.c cVar, c06 c06Var, ao6 ao6Var, xh6 xh6Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : jx5Var, (i & 2) != 0 ? null : ox5Var, z, (i & 8) != 0 ? null : str, str2, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : list, str6, ry8Var, cVar, c06Var, ao6Var, xh6Var);
    }

    public final jx5 a() {
        return this.a;
    }

    public final ox5 b() {
        return this.b;
    }

    public final boolean c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final String e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rx5)) {
            return false;
        }
        rx5 rx5Var = (rx5) obj;
        return aa4.e(this.a, rx5Var.a) && aa4.e(this.b, rx5Var.b) && this.c == rx5Var.c && aa4.e(this.d, rx5Var.d) && aa4.e(this.e, rx5Var.e) && aa4.e(this.f, rx5Var.f) && aa4.e(this.g, rx5Var.g) && aa4.e(this.h, rx5Var.h) && aa4.e(this.i, rx5Var.i) && aa4.e(this.j, rx5Var.j) && aa4.e(this.k, rx5Var.k) && aa4.e(this.l, rx5Var.l) && aa4.e(this.m, rx5Var.m) && aa4.e(this.n, rx5Var.n) && aa4.e(this.o, rx5Var.o);
    }

    public final c06 f() {
        return this.m;
    }

    public final xh6 g() {
        return this.o;
    }

    public final sx5.c h() {
        return this.l;
    }

    public final int hashCode() {
        jx5 jx5Var = this.a;
        int iHashCode = (jx5Var == null ? 0 : jx5Var.hashCode()) * 31;
        ox5 ox5Var = this.b;
        int iC = tg.c((iHashCode + (ox5Var == null ? 0 : ox5Var.hashCode())) * 31, 31, this.c);
        String str = this.d;
        int iB = zg.b((iC + (str == null ? 0 : str.hashCode())) * 31, 31, this.e);
        String str2 = this.f;
        int iHashCode2 = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.h;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List<vx5> list = this.i;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        String str5 = this.j;
        int iHashCode6 = (this.k.hashCode() + ((iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31)) * 31;
        sx5.c cVar = this.l;
        int iHashCode7 = (iHashCode6 + (cVar == null ? 0 : cVar.hashCode())) * 31;
        c06 c06Var = this.m;
        int iHashCode8 = (iHashCode7 + (c06Var == null ? 0 : c06Var.hashCode())) * 31;
        ao6 ao6Var = this.n;
        int iHashCode9 = (iHashCode8 + (ao6Var == null ? 0 : ao6Var.hashCode())) * 31;
        xh6 xh6Var = this.o;
        return iHashCode9 + (xh6Var != null ? xh6Var.hashCode() : 0);
    }

    public final String i() {
        return this.f;
    }

    public final ao6 j() {
        return this.n;
    }

    public final String k() {
        return this.j;
    }

    public final String l() {
        return this.h;
    }

    public final List<vx5> m() {
        return this.i;
    }

    public final String n() {
        return this.g;
    }

    public final ry8 o() {
        return this.k;
    }

    public final String toString() {
        jx5 jx5Var = this.a;
        ox5 ox5Var = this.b;
        boolean z = this.c;
        String str = this.d;
        String str2 = this.e;
        String str3 = this.f;
        String str4 = this.g;
        String str5 = this.h;
        List<vx5> list = this.i;
        String str6 = this.j;
        ry8 ry8Var = this.k;
        sx5.c cVar = this.l;
        c06 c06Var = this.m;
        ao6 ao6Var = this.n;
        xh6 xh6Var = this.o;
        StringBuilder sb = new StringBuilder("OnlineShopInfoResponse(badge=");
        sb.append(jx5Var);
        sb.append(", button=");
        sb.append(ox5Var);
        sb.append(", favorite=");
        sb.append(z);
        sb.append(", imageUrl=");
        sb.append(str);
        sb.append(", logoUrl=");
        kv2.c(sb, str2, ", profitTitle=", str3, ", title=");
        kv2.c(sb, str4, ", subTitle=", str5, ", terms=");
        sb.append(list);
        sb.append(", restriction=");
        sb.append(str6);
        sb.append(", tracking=");
        sb.append(ry8Var);
        sb.append(", profit=");
        sb.append(cVar);
        sb.append(", ordInfo=");
        sb.append(c06Var);
        sb.append(", promoInfo=");
        sb.append(ao6Var);
        sb.append(", productLinkChecker=");
        sb.append(xh6Var);
        sb.append(")");
        return sb.toString();
    }

    public rx5(jx5 jx5Var, ox5 ox5Var, boolean z, String str, String str2, String str3, String str4, String str5, List<vx5> list, String str6, ry8 ry8Var, sx5.c cVar, c06 c06Var, ao6 ao6Var, xh6 xh6Var) {
        str2.getClass();
        ry8Var.getClass();
        this.a = jx5Var;
        this.b = ox5Var;
        this.c = z;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.h = str5;
        this.i = list;
        this.j = str6;
        this.k = ry8Var;
        this.l = cVar;
        this.m = c06Var;
        this.n = ao6Var;
        this.o = xh6Var;
    }
}
