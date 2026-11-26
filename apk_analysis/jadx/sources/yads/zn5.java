package yads;

import defpackage.kv2;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class zn5 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final pn e;
    public final rn5 f;
    public final ArrayList g;

    public zn5(String str, String str2, String str3, String str4, pn pnVar, rn5 rn5Var, ArrayList arrayList) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = pnVar;
        this.f = rn5Var;
        this.g = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zn5)) {
            return false;
        }
        zn5 zn5Var = (zn5) obj;
        return defpackage.aa4.e(this.a, zn5Var.a) && defpackage.aa4.e(this.b, zn5Var.b) && defpackage.aa4.e(this.c, zn5Var.c) && defpackage.aa4.e(this.d, zn5Var.d) && defpackage.aa4.e(this.e, zn5Var.e) && defpackage.aa4.e(this.f, zn5Var.f) && defpackage.aa4.e(this.g, zn5Var.g);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        pn pnVar = this.e;
        int iHashCode5 = (iHashCode4 + (pnVar == null ? 0 : pnVar.hashCode())) * 31;
        rn5 rn5Var = this.f;
        int iHashCode6 = (iHashCode5 + (rn5Var == null ? 0 : rn5Var.hashCode())) * 31;
        ArrayList arrayList = this.g;
        return iHashCode6 + (arrayList != null ? arrayList.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        pn pnVar = this.e;
        rn5 rn5Var = this.f;
        ArrayList arrayList = this.g;
        StringBuilder sbD = defpackage.ad2.d("SmartCenterSettings(colorWizButton=", str, ", colorWizButtonText=", str2, ", colorWizBack=");
        kv2.c(sbD, str3, ", colorWizBackRight=", str4, ", backgroundColors=");
        sbD.append(pnVar);
        sbD.append(", smartCenter=");
        sbD.append(rn5Var);
        sbD.append(", smartCenters=");
        sbD.append(arrayList);
        sbD.append(")");
        return sbD.toString();
    }
}
