package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class zz3 {
    public final String a;
    public final String b;
    public final yz3 c;
    public final String d;
    public final String e;
    public final Float f;
    public final int g;
    public final int h;
    public final int i;
    public final String j;
    public final boolean k;

    public zz3(String str, String str2, yz3 yz3Var, String str3, String str4, Float f, int i, int i2, int i3, String str5) {
        this.a = str;
        this.b = str2;
        this.c = yz3Var;
        this.d = str3;
        this.e = str4;
        this.f = f;
        this.g = i;
        this.h = i2;
        this.i = i3;
        this.j = str5;
        this.k = defpackage.aa4.e(str5, "VPAID");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zz3)) {
            return false;
        }
        zz3 zz3Var = (zz3) obj;
        return defpackage.aa4.e(this.a, zz3Var.a) && defpackage.aa4.e(this.b, zz3Var.b) && this.c == zz3Var.c && defpackage.aa4.e(this.d, zz3Var.d) && defpackage.aa4.e(this.e, zz3Var.e) && defpackage.aa4.e(this.f, zz3Var.f) && this.g == zz3Var.g && this.h == zz3Var.h && this.i == zz3Var.i && defpackage.aa4.e(this.j, zz3Var.j);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        yz3 yz3Var = this.c;
        int iHashCode3 = (iHashCode2 + (yz3Var == null ? 0 : yz3Var.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Float f = this.f;
        int iA = i96.a(this.i, i96.a(this.h, i96.a(this.g, (iHashCode5 + (f == null ? 0 : f.hashCode())) * 31, 31), 31), 31);
        String str4 = this.j;
        return iA + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        yz3 yz3Var = this.c;
        String str3 = this.d;
        String str4 = this.e;
        Float f = this.f;
        int i = this.g;
        int i2 = this.h;
        int i3 = this.i;
        String str5 = this.j;
        StringBuilder sbD = defpackage.ad2.d("MediaFile(uri=", str, ", id=", str2, ", deliveryMethod=");
        sbD.append(yz3Var);
        sbD.append(", mimeType=");
        sbD.append(str3);
        sbD.append(", codec=");
        sbD.append(str4);
        sbD.append(", vmafMetric=");
        sbD.append(f);
        sbD.append(", height=");
        defpackage.gg.e(sbD, i, ", width=", i2, ", bitrate=");
        sbD.append(i3);
        sbD.append(", apiFramework=");
        sbD.append(str5);
        sbD.append(")");
        return sbD.toString();
    }
}
