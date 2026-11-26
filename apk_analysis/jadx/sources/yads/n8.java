package yads;

import android.location.Location;
import defpackage.kv2;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class n8 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final List e;
    public final Location f;
    public final Map g;
    public final String h;
    public final String i;
    public final i85 j;
    public final boolean k;
    public final String l;
    public final o70 m;

    public n8(String str, String str2, String str3, String str4, List list, Location location, Map map, String str5, String str6, i85 i85Var, boolean z, String str7, o70 o70Var) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = list;
        this.f = location;
        this.g = map;
        this.h = str5;
        this.i = str6;
        this.j = i85Var;
        this.k = z;
        this.l = str7;
        this.m = o70Var;
    }

    public static n8 a(n8 n8Var, Map map, String str, int i) {
        return new n8(n8Var.a, n8Var.b, n8Var.c, n8Var.d, n8Var.e, n8Var.f, (i & 64) != 0 ? n8Var.g : map, n8Var.h, n8Var.i, n8Var.j, n8Var.k, (i & 2048) != 0 ? n8Var.l : str, n8Var.m);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n8)) {
            return false;
        }
        n8 n8Var = (n8) obj;
        return defpackage.aa4.e(this.a, n8Var.a) && defpackage.aa4.e(this.b, n8Var.b) && defpackage.aa4.e(this.c, n8Var.c) && defpackage.aa4.e(this.d, n8Var.d) && defpackage.aa4.e(this.e, n8Var.e) && defpackage.aa4.e(this.f, n8Var.f) && defpackage.aa4.e(this.g, n8Var.g) && defpackage.aa4.e(this.h, n8Var.h) && defpackage.aa4.e(this.i, n8Var.i) && this.j == n8Var.j && this.k == n8Var.k && defpackage.aa4.e(this.l, n8Var.l) && defpackage.aa4.e(this.m, n8Var.m);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List list = this.e;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        Location location = this.f;
        int iHashCode6 = (iHashCode5 + (location == null ? 0 : location.hashCode())) * 31;
        Map map = this.g;
        int iHashCode7 = (iHashCode6 + (map == null ? 0 : map.hashCode())) * 31;
        String str4 = this.h;
        int iHashCode8 = (iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.i;
        int iHashCode9 = (iHashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
        i85 i85Var = this.j;
        int iA = m7.a((iHashCode9 + (i85Var == null ? 0 : i85Var.hashCode())) * 31, 31, this.k);
        String str6 = this.l;
        return ((iA + (str6 == null ? 0 : str6.hashCode())) * 31) + 0;
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        List list = this.e;
        Location location = this.f;
        Map map = this.g;
        String str5 = this.h;
        String str6 = this.i;
        i85 i85Var = this.j;
        boolean z = this.k;
        String str7 = this.l;
        o70 o70Var = this.m;
        StringBuilder sbD = defpackage.ad2.d("AdRequestData(adUnitId=", str, ", age=", str2, ", gender=");
        kv2.c(sbD, str3, ", contextQuery=", str4, ", contextTags=");
        sbD.append(list);
        sbD.append(", location=");
        sbD.append(location);
        sbD.append(", parameters=");
        sbD.append(map);
        sbD.append(", openBiddingData=");
        sbD.append(str5);
        sbD.append(", readyResponse=");
        sbD.append(str6);
        sbD.append(", preferredTheme=");
        sbD.append(i85Var);
        sbD.append(", shouldLoadImagesAutomatically=");
        sbD.append(z);
        sbD.append(", preloadType=");
        sbD.append(str7);
        sbD.append(", adapterIdentity=");
        sbD.append(o70Var);
        sbD.append(")");
        return sbD.toString();
    }
}
