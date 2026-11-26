package yads;

import defpackage.up7;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class rd0 {
    public static final qd0 Companion = new qd0();
    public static final defpackage.cl4[] f = {null, null, defpackage.nm4.a(defpackage.po4.PUBLICATION, new defpackage.xs4(2)), null, null};
    public final String a;
    public final String b;
    public final List c;
    public final String d;
    public final String e;

    public rd0(int i, String str, String str2, List list, String str3, String str4) {
        if (6 != (i & 6)) {
            defpackage.r96.f(pd0.b, i, 6);
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
        if ((i & 16) == 0) {
            this.e = null;
        } else {
            this.e = str4;
        }
    }

    public static final /* synthetic */ defpackage.df4 a() {
        return new defpackage.mr(xe0.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rd0)) {
            return false;
        }
        rd0 rd0Var = (rd0) obj;
        return defpackage.aa4.e(this.a, rd0Var.a) && defpackage.aa4.e(this.b, rd0Var.b) && defpackage.aa4.e(this.c, rd0Var.c) && defpackage.aa4.e(this.d, rd0Var.d) && defpackage.aa4.e(this.e, rd0Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iB = defpackage.e2.b(this.c, l4.a((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31);
        String str2 = this.d;
        int iHashCode = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        return iHashCode + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        List list = this.c;
        String str3 = this.d;
        String str4 = this.e;
        StringBuilder sbD = defpackage.ad2.d("DebugPanelAdUnitBiddingMediation(adapter=", str, ", networkName=", str2, ", biddingParameters=");
        sbD.append(list);
        sbD.append(", adUnitId=");
        sbD.append(str3);
        sbD.append(", networkAdUnitIdName=");
        return defpackage.me0.d(sbD, str4, ")");
    }
}
