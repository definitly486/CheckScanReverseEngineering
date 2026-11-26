package yads;

import defpackage.kv2;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class le0 {
    public final String a;
    public final String b;
    public final boolean c;
    public final String d;
    public final String e;
    public final String f;
    public final ke0 g;
    public final ArrayList h;

    public le0(String str, String str2, boolean z, String str3, String str4, String str5, ke0 ke0Var, ArrayList arrayList) {
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = ke0Var;
        this.h = arrayList;
    }

    public final ke0 a() {
        return this.g;
    }

    public final String b() {
        return this.d;
    }

    public final String c() {
        return this.e;
    }

    public final String d() {
        return this.b;
    }

    public final String e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof le0)) {
            return false;
        }
        le0 le0Var = (le0) obj;
        return defpackage.aa4.e(this.a, le0Var.a) && defpackage.aa4.e(this.b, le0Var.b) && this.c == le0Var.c && defpackage.aa4.e(this.d, le0Var.d) && defpackage.aa4.e(this.e, le0Var.e) && defpackage.aa4.e(this.f, le0Var.f) && defpackage.aa4.e(this.g, le0Var.g) && defpackage.aa4.e(this.h, le0Var.h);
    }

    public final String f() {
        return this.f;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iA = m7.a((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c);
        String str2 = this.d;
        int iHashCode2 = (iA + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f;
        int iHashCode4 = str4 != null ? str4.hashCode() : 0;
        return this.h.hashCode() + ((this.g.hashCode() + ((iHashCode3 + iHashCode4) * 31)) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        boolean z = this.c;
        String str3 = this.d;
        String str4 = this.e;
        String str5 = this.f;
        ke0 ke0Var = this.g;
        ArrayList arrayList = this.h;
        StringBuilder sbD = defpackage.ad2.d("DebugPanelAdapterData(name=", str, ", logoUrl=", str2, ", adapterIntegrationStatus=");
        sbD.append(z);
        sbD.append(", adapterVersion=");
        sbD.append(str3);
        sbD.append(", latestAdapterVersion=");
        kv2.c(sbD, str4, ", sdkVersion=", str5, ", adapterStatus=");
        sbD.append(ke0Var);
        sbD.append(", formats=");
        sbD.append(arrayList);
        sbD.append(")");
        return sbD.toString();
    }
}
