package yads;

import defpackage.kv2;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class a13 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final List e;
    public final LinkedHashMap f;
    public final i85 g;

    public a13(String str, String str2, String str3, String str4, List list, LinkedHashMap linkedHashMap, i85 i85Var) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = list;
        this.f = linkedHashMap;
        this.g = i85Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a13)) {
            return false;
        }
        a13 a13Var = (a13) obj;
        return defpackage.aa4.e(this.a, a13Var.a) && defpackage.aa4.e(this.b, a13Var.b) && defpackage.aa4.e(this.c, a13Var.c) && defpackage.aa4.e(this.d, a13Var.d) && defpackage.aa4.e(this.e, a13Var.e) && defpackage.aa4.e(this.f, a13Var.f) && this.g == a13Var.g;
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
        LinkedHashMap linkedHashMap = this.f;
        int iHashCode6 = (iHashCode5 + (linkedHashMap == null ? 0 : linkedHashMap.hashCode())) * 31;
        i85 i85Var = this.g;
        return iHashCode6 + (i85Var != null ? i85Var.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        List list = this.e;
        LinkedHashMap linkedHashMap = this.f;
        i85 i85Var = this.g;
        StringBuilder sbD = defpackage.ad2.d("FullscreenCacheParams(adUnitId=", str, ", age=", str2, ", gender=");
        kv2.c(sbD, str3, ", contextQuery=", str4, ", contextTags=");
        sbD.append(list);
        sbD.append(", parameters=");
        sbD.append(linkedHashMap);
        sbD.append(", preferredTheme=");
        sbD.append(i85Var);
        sbD.append(")");
        return sbD.toString();
    }
}
