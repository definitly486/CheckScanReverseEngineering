package yads;

import defpackage.up7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class ee0 {
    public static final de0 Companion = new de0();
    public static final defpackage.cl4[] g;
    public final String a;
    public final String b;
    public final List c;
    public final String d;
    public final ci0 e;
    public final List f;

    static {
        defpackage.po4 po4Var = defpackage.po4.PUBLICATION;
        g = new defpackage.cl4[]{null, null, defpackage.nm4.a(po4Var, new defpackage.re0(4)), null, null, defpackage.nm4.a(po4Var, new defpackage.nk5(1))};
    }

    public ee0(int i, String str, String str2, List list, String str3, ci0 ci0Var, List list2) {
        if (54 != (i & 54)) {
            defpackage.r96.f(ce0.b, i, 54);
            throw null;
        }
        if ((i & 1) == 0) {
            this.a = null;
        } else {
            this.a = str;
        }
        this.b = str2;
        this.c = list;
        if ((i & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        this.e = ci0Var;
        this.f = list2;
    }

    public static final /* synthetic */ defpackage.df4 a() {
        return new defpackage.mr(di0.a);
    }

    public static final /* synthetic */ defpackage.df4 b() {
        return new defpackage.mr(xh0.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ee0)) {
            return false;
        }
        ee0 ee0Var = (ee0) obj;
        return defpackage.aa4.e(this.a, ee0Var.a) && defpackage.aa4.e(this.b, ee0Var.b) && defpackage.aa4.e(this.c, ee0Var.c) && defpackage.aa4.e(this.d, ee0Var.d) && defpackage.aa4.e(this.e, ee0Var.e) && defpackage.aa4.e(this.f, ee0Var.f);
    }

    public final int hashCode() {
        String str = this.a;
        int iB = defpackage.e2.b(this.c, l4.a((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31);
        String str2 = this.d;
        int iHashCode = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
        ci0 ci0Var = this.e;
        return this.f.hashCode() + ((iHashCode + (ci0Var != null ? ci0Var.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        List list = this.c;
        String str3 = this.d;
        ci0 ci0Var = this.e;
        List list2 = this.f;
        StringBuilder sbD = defpackage.ad2.d("DebugPanelAdUnitWaterfallMediation(adapter=", str, ", networkName=", str2, ", waterfallParameters=");
        sbD.append(list);
        sbD.append(", networkAdUnitIdName=");
        sbD.append(str3);
        sbD.append(", currency=");
        sbD.append(ci0Var);
        sbD.append(", cpmFloors=");
        sbD.append(list2);
        sbD.append(")");
        return sbD.toString();
    }
}
