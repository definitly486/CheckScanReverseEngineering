package yads;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class ae0 {
    public final String a;
    public final String b;
    public final ArrayList c;
    public final String d;
    public final String e;
    public final zd0 f;

    public ae0(String str, String str2, ArrayList arrayList, String str3, String str4, zd0 zd0Var) {
        this.a = str;
        this.b = str2;
        this.c = arrayList;
        this.d = str3;
        this.e = str4;
        this.f = zd0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ae0)) {
            return false;
        }
        ae0 ae0Var = (ae0) obj;
        return defpackage.aa4.e(this.a, ae0Var.a) && defpackage.aa4.e(this.b, ae0Var.b) && defpackage.aa4.e(this.c, ae0Var.c) && defpackage.aa4.e(this.d, ae0Var.d) && defpackage.aa4.e(this.e, ae0Var.e) && defpackage.aa4.e(this.f, ae0Var.f);
    }

    public final int hashCode() {
        int iD = defpackage.tg.d(this.c, l4.a(this.a.hashCode() * 31, 31, this.b), 31);
        String str = this.d;
        int iHashCode = (iD + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        return this.f.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        ArrayList arrayList = this.c;
        String str3 = this.d;
        String str4 = this.e;
        zd0 zd0Var = this.f;
        StringBuilder sbD = defpackage.ad2.d("DebugPanelAdUnitMediationAdapterData(logoUrl=", str, ", adapterName=", str2, ", parameters=");
        sbD.append(arrayList);
        sbD.append(", adUnitId=");
        sbD.append(str3);
        sbD.append(", networkAdUnitIdName=");
        sbD.append(str4);
        sbD.append(", type=");
        sbD.append(zd0Var);
        sbD.append(")");
        return sbD.toString();
    }
}
