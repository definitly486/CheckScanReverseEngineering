package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class td0 {
    public final String a;
    public final String b;
    public final String c;
    public final be0 d;

    public td0(String str, String str2, String str3, be0 be0Var) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = be0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof td0)) {
            return false;
        }
        td0 td0Var = (td0) obj;
        return defpackage.aa4.e(this.a, td0Var.a) && defpackage.aa4.e(this.b, td0Var.b) && defpackage.aa4.e(this.c, td0Var.c) && defpackage.aa4.e(this.d, td0Var.d);
    }

    public final int hashCode() {
        return this.d.a.hashCode() + l4.a(l4.a(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        be0 be0Var = this.d;
        StringBuilder sbD = defpackage.ad2.d("DebugPanelAdUnitFullData(name=", str, ", format=", str2, ", adUnitId=");
        sbD.append(str3);
        sbD.append(", mediation=");
        sbD.append(be0Var);
        sbD.append(")");
        return sbD.toString();
    }
}
