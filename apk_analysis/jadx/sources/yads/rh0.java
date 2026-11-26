package yads;

import defpackage.kv2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class rh0 extends uh0 {
    public final String a;
    public final String b;
    public final rg0 c;
    public final af0 d;
    public final String e;
    public final String f;
    public final String g;
    public final List h;
    public final List i;
    public final me0 j;
    public final String k;

    public rh0(String str, String str2, rg0 rg0Var, af0 af0Var, String str3, String str4, String str5, ArrayList arrayList, List list, me0 me0Var, String str6, int i) {
        str4 = (i & 32) != 0 ? null : str4;
        str5 = (i & 64) != 0 ? null : str5;
        arrayList = (i & 128) != 0 ? null : arrayList;
        list = (i & 256) != 0 ? null : list;
        me0Var = (i & 512) != 0 ? me0.NONE : me0Var;
        str6 = (i & 1024) != 0 ? null : str6;
        this.a = str;
        this.b = str2;
        this.c = rg0Var;
        this.d = af0Var;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = arrayList;
        this.i = list;
        this.j = me0Var;
        this.k = str6;
    }

    public final String a() {
        return this.f;
    }

    public final List b() {
        return this.i;
    }

    public final String c() {
        return this.g;
    }

    public final List d() {
        return this.h;
    }

    public final me0 e() {
        return this.j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rh0)) {
            return false;
        }
        rh0 rh0Var = (rh0) obj;
        return defpackage.aa4.e(this.a, rh0Var.a) && defpackage.aa4.e(this.b, rh0Var.b) && defpackage.aa4.e(this.c, rh0Var.c) && defpackage.aa4.e(this.d, rh0Var.d) && defpackage.aa4.e(this.e, rh0Var.e) && defpackage.aa4.e(this.f, rh0Var.f) && defpackage.aa4.e(this.g, rh0Var.g) && defpackage.aa4.e(this.h, rh0Var.h) && defpackage.aa4.e(this.i, rh0Var.i) && this.j == rh0Var.j && defpackage.aa4.e(this.k, rh0Var.k);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        rg0 rg0Var = this.c;
        int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (rg0Var == null ? 0 : rg0Var.hashCode())) * 31)) * 31;
        String str2 = this.e;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.g;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        List list = this.h;
        int iHashCode7 = (iHashCode6 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.i;
        int iHashCode8 = (this.j.hashCode() + ((iHashCode7 + (list2 == null ? 0 : list2.hashCode())) * 31)) * 31;
        String str5 = this.k;
        return iHashCode8 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        rg0 rg0Var = this.c;
        af0 af0Var = this.d;
        String str3 = this.e;
        String str4 = this.f;
        String str5 = this.g;
        List list = this.h;
        List list2 = this.i;
        me0 me0Var = this.j;
        String str6 = this.k;
        StringBuilder sbD = defpackage.ad2.d("MediationAdapter(name=", str, ", logoUrl=", str2, ", infoFirst=");
        sbD.append(rg0Var);
        sbD.append(", infoSecond=");
        sbD.append(af0Var);
        sbD.append(", waringMessage=");
        kv2.c(sbD, str3, ", adUnitId=", str4, ", networkAdUnitIdName=");
        sbD.append(str5);
        sbD.append(", parameters=");
        sbD.append(list);
        sbD.append(", cpmFloors=");
        sbD.append(list2);
        sbD.append(", type=");
        sbD.append(me0Var);
        sbD.append(", sdk=");
        return defpackage.me0.d(sbD, str6, ")");
    }
}
