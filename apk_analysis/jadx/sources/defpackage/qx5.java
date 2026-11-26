package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class qx5 {
    public final String a;
    public final q00 b;
    public final String c;
    public final boolean d;
    public final String e;
    public final String f;
    public final String g;
    public final nx5 h;
    public final List<ux5> i;
    public final List<ux5> j;
    public final h57 k;
    public final sy8 l;
    public final dn1.c m;
    public final b06 n;
    public final zn6 o;
    public final wh6 p;
    public final ew3 q;

    public qx5(String str, q00 q00Var, String str2, boolean z, String str3, String str4, String str5, nx5 nx5Var, List<ux5> list, List<ux5> list2, h57 h57Var, sy8 sy8Var, dn1.c cVar, b06 b06Var, zn6 zn6Var, wh6 wh6Var, ew3 ew3Var) {
        str.getClass();
        h57Var.getClass();
        sy8Var.getClass();
        this.a = str;
        this.b = q00Var;
        this.c = str2;
        this.d = z;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = nx5Var;
        this.i = list;
        this.j = list2;
        this.k = h57Var;
        this.l = sy8Var;
        this.m = cVar;
        this.n = b06Var;
        this.o = zn6Var;
        this.p = wh6Var;
        this.q = ew3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qx5)) {
            return false;
        }
        qx5 qx5Var = (qx5) obj;
        return aa4.e(this.a, qx5Var.a) && aa4.e(this.b, qx5Var.b) && this.c.equals(qx5Var.c) && this.d == qx5Var.d && this.e.equals(qx5Var.e) && aa4.e(this.f, qx5Var.f) && aa4.e(this.g, qx5Var.g) && aa4.e(this.h, qx5Var.h) && this.i.equals(qx5Var.i) && this.j.equals(qx5Var.j) && this.k == qx5Var.k && this.l == qx5Var.l && this.m.equals(qx5Var.m) && this.n.equals(qx5Var.n) && this.o.equals(qx5Var.o) && aa4.e(this.p, qx5Var.p) && aa4.e(this.q, qx5Var.q);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        q00 q00Var = this.b;
        int iB = zg.b(tg.c(zg.b((iHashCode + (q00Var == null ? 0 : q00Var.hashCode())) * 31, 31, this.c), 31, this.d), 31, this.e);
        String str = this.f;
        int iHashCode2 = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        nx5 nx5Var = this.h;
        int iHashCode4 = (this.o.hashCode() + ((this.n.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + e2.b(this.j, e2.b(this.i, (iHashCode3 + (nx5Var == null ? 0 : nx5Var.hashCode())) * 31, 31), 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        wh6 wh6Var = this.p;
        int iHashCode5 = (iHashCode4 + (wh6Var == null ? 0 : Integer.hashCode(wh6Var.a))) * 31;
        ew3 ew3Var = this.q;
        return iHashCode5 + (ew3Var != null ? ew3Var.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OnlineShopInfo(logoUrl=");
        sb.append(this.a);
        sb.append(", badge=");
        sb.append(this.b);
        sb.append(", title=");
        ud.f(sb, this.c, ", favorite=", this.d, ", profitTitle=");
        kv2.c(sb, this.e, ", subtitle=", this.f, ", imageUrl=");
        sb.append(this.g);
        sb.append(", button=");
        sb.append(this.h);
        sb.append(", longTerms=");
        sb.append(this.i);
        sb.append(", shortTerms=");
        sb.append(this.j);
        sb.append(", restriction=");
        sb.append(this.k);
        sb.append(", tracking=");
        sb.append(this.l);
        sb.append(", profit=");
        sb.append(this.m);
        sb.append(", ordInfo=");
        sb.append(this.n);
        sb.append(", promoInfo=");
        sb.append(this.o);
        sb.append(", productLinkChecker=");
        sb.append(this.p);
        sb.append(", hikeFixed=");
        sb.append(this.q);
        sb.append(")");
        return sb.toString();
    }
}
