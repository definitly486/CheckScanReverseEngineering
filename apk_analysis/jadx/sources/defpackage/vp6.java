package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class vp6 implements pz3 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final boolean f;
    public final List<pz3> g;
    public final String h;

    /* JADX WARN: Multi-variable type inference failed */
    public vp6(int i, String str, String str2, String str3, String str4, boolean z, List<? extends pz3> list, String str5) {
        str.getClass();
        str4.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = z;
        this.g = list;
        this.h = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vp6)) {
            return false;
        }
        vp6 vp6Var = (vp6) obj;
        return this.a == vp6Var.a && aa4.e(this.b, vp6Var.b) && aa4.e(this.c, vp6Var.c) && aa4.e(this.d, vp6Var.d) && aa4.e(this.e, vp6Var.e) && this.f == vp6Var.f && this.g.equals(vp6Var.g) && aa4.e(this.h, vp6Var.h);
    }

    @Override // defpackage.pz3
    public final Object f() {
        String strA0 = qn1.a0(this.g, null, null, null, 0, null, 63);
        StringBuilder sb = new StringBuilder();
        sb.append(this.e);
        sb.append(this.f);
        sb.append(strA0);
        sb.append(this.a);
        sb.append(this.d);
        return kh.c(sb, this.b, this.c, this.h);
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iB2 = e2.b(this.g, tg.c(zg.b((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.e), 31, this.f), 31);
        String str3 = this.h;
        return iB2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "PromoSelectionViewModel(id=", ", backgroundUrl=", this.b, ", backgroundColor=");
        kv2.c(sbE, this.c, ", promoIconUrl=", this.d, ", title=");
        ud.f(sbE, this.e, ", isCollapsed=", this.f, ", products=");
        sbE.append(this.g);
        sbE.append(", shopIconUrl=");
        sbE.append(this.h);
        sbE.append(")");
        return sbE.toString();
    }
}
