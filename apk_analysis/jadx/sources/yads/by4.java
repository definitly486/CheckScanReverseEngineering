package yads;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class by4 {
    public final String a;
    public final String b;
    public final Map c;
    public final Integer d;
    public final ui0 e;
    public final List f;
    public final List g;
    public final String h;
    public final String i;

    public by4(String str, String str2, Map map, Integer num, ui0 ui0Var, List list, List list2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = map;
        this.d = num;
        this.e = ui0Var;
        this.f = list;
        this.g = list2;
        this.h = str3;
        this.i = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof by4)) {
            return false;
        }
        by4 by4Var = (by4) obj;
        return defpackage.aa4.e(this.a, by4Var.a) && defpackage.aa4.e(this.b, by4Var.b) && defpackage.aa4.e(this.c, by4Var.c) && defpackage.aa4.e(this.d, by4Var.d) && this.e == by4Var.e && defpackage.aa4.e(this.f, by4Var.f) && defpackage.aa4.e(this.g, by4Var.g) && defpackage.aa4.e(this.h, by4Var.h) && defpackage.aa4.e(this.i, by4Var.i);
    }

    public final int hashCode() {
        int iA = l4.a(this.a.hashCode() * 31, 31, this.b);
        Map map = this.c;
        int iHashCode = (iA + (map == null ? 0 : map.hashCode())) * 31;
        Integer num = this.d;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        ui0 ui0Var = this.e;
        int iHashCode3 = (iHashCode2 + (ui0Var == null ? 0 : ui0Var.hashCode())) * 31;
        List list = this.f;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.g;
        int iHashCode5 = (iHashCode4 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str = this.h;
        int iHashCode6 = (iHashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.i;
        return iHashCode6 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        Map map = this.c;
        Integer num = this.d;
        ui0 ui0Var = this.e;
        List list = this.f;
        List list2 = this.g;
        String str3 = this.h;
        String str4 = this.i;
        StringBuilder sbD = defpackage.ad2.d("PreferredPackage(packageName=", str, ", url=", str2, ", extras=");
        sbD.append(map);
        sbD.append(", flags=");
        sbD.append(num);
        sbD.append(", launchMode=");
        sbD.append(ui0Var);
        sbD.append(", trackingUrls=");
        sbD.append(list);
        sbD.append(", fallbackTrackingUrls=");
        sbD.append(list2);
        sbD.append(", deeplinkType=");
        sbD.append(str3);
        sbD.append(", className=");
        return defpackage.me0.d(sbD, str4, ")");
    }
}
