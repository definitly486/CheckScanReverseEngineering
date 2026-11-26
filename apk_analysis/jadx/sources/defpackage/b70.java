package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class b70 implements pz3, f34 {
    public final int a;
    public final String b;
    public final String c;
    public final List<String> d;
    public final String e;
    public final String f;
    public final String g;
    public final b06 h;

    public b70(int i, String str, String str2, List<String> list, String str3, String str4, String str5, b06 b06Var) {
        x7.b(str, str2, str3);
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = list;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = b06Var;
    }

    @Override // defpackage.f34
    public final int d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b70)) {
            return false;
        }
        b70 b70Var = (b70) obj;
        return this.a == b70Var.a && aa4.e(this.b, b70Var.b) && aa4.e(this.c, b70Var.c) && aa4.e(this.d, b70Var.d) && aa4.e(this.e, b70Var.e) && aa4.e(this.f, b70Var.f) && aa4.e(this.g, b70Var.g) && aa4.e(this.h, b70Var.h);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e + this.f + this.g + this.h;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        List<String> list = this.d;
        int iB2 = zg.b((iB + (list == null ? 0 : list.hashCode())) * 31, 31, this.e);
        String str = this.f;
        int iHashCode = (iB2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        b06 b06Var = this.h;
        return iHashCode2 + (b06Var != null ? b06Var.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "BalanceTermPromoBannerViewModel(id=", ", title=", this.b, ", url=");
        sbE.append(this.c);
        sbE.append(", terms=");
        sbE.append(this.d);
        sbE.append(", mainButtonTitle=");
        kv2.c(sbE, this.e, ", secondButtonTitle=", this.f, ", logoUrl=");
        sbE.append(this.g);
        sbE.append(", ordInfo=");
        sbE.append(this.h);
        sbE.append(")");
        return sbE.toString();
    }
}
