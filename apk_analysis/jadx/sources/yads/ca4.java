package yads;

import defpackage.ca8;
import defpackage.up7;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class ca4 {
    public static final ba4 Companion = new ba4();
    public static final defpackage.cl4[] f = {null, null, null, defpackage.nm4.a(defpackage.po4.PUBLICATION, new defpackage.u2(2)), null};
    public final long a;
    public final String b;
    public final String c;
    public final Map d;
    public final String e;

    public ca4(int i, long j, String str, String str2, Map map, String str3) {
        if (31 != (i & 31)) {
            defpackage.r96.f(aa4.b, i, 31);
            throw null;
        }
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = map;
        this.e = str3;
    }

    public static final /* synthetic */ defpackage.df4 a() {
        ca8 ca8Var = ca8.a;
        return new defpackage.uq4(ca8Var, defpackage.ev0.a(ca8Var));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ca4)) {
            return false;
        }
        ca4 ca4Var = (ca4) obj;
        return this.a == ca4Var.a && defpackage.aa4.e(this.b, ca4Var.b) && defpackage.aa4.e(this.c, ca4Var.c) && defpackage.aa4.e(this.d, ca4Var.d) && defpackage.aa4.e(this.e, ca4Var.e);
    }

    public final int hashCode() {
        int iA = l4.a(l4.a(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        Map map = this.d;
        int iHashCode = (iA + (map == null ? 0 : map.hashCode())) * 31;
        String str = this.e;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        String str2 = this.c;
        Map map = this.d;
        String str3 = this.e;
        StringBuilder sbD = defpackage.ah.d(j, "MobileAdsNetworkRequestLog(timestamp=", ", method=", str);
        sbD.append(", url=");
        sbD.append(str2);
        sbD.append(", headers=");
        sbD.append(map);
        return defpackage.kh.c(sbD, ", body=", str3, ")");
    }

    public ca4(long j, String str, String str2, Map map, String str3) {
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = map;
        this.e = str3;
    }
}
