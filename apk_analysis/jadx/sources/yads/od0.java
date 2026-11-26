package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class od0 {
    public static final nd0 Companion = new nd0();
    public final String a;
    public final String b;
    public final String c;
    public final wd0 d;

    public od0(int i, String str, String str2, String str3, wd0 wd0Var) {
        if (7 != (i & 7)) {
            defpackage.r96.f(md0.b, i, 7);
            throw null;
        }
        this.a = str;
        this.b = str2;
        this.c = str3;
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = wd0Var;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof od0)) {
            return false;
        }
        od0 od0Var = (od0) obj;
        return defpackage.aa4.e(this.a, od0Var.a) && defpackage.aa4.e(this.b, od0Var.b) && defpackage.aa4.e(this.c, od0Var.c) && defpackage.aa4.e(this.d, od0Var.d);
    }

    public final int hashCode() {
        int iA = l4.a(l4.a(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        wd0 wd0Var = this.d;
        return iA + (wd0Var == null ? 0 : wd0Var.hashCode());
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        wd0 wd0Var = this.d;
        StringBuilder sbD = defpackage.ad2.d("DebugPanelAdUnit(name=", str, ", format=", str2, ", adUnitId=");
        sbD.append(str3);
        sbD.append(", mediation=");
        sbD.append(wd0Var);
        sbD.append(")");
        return sbD.toString();
    }
}
