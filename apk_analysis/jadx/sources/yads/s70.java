package yads;

import defpackage.kv2;

/* JADX INFO: loaded from: classes6.dex */
public final class s70 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public s70(String str, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s70)) {
            return false;
        }
        s70 s70Var = (s70) obj;
        return defpackage.aa4.e(this.a, s70Var.a) && defpackage.aa4.e(this.b, s70Var.b) && defpackage.aa4.e(this.c, s70Var.c) && defpackage.aa4.e(this.d, s70Var.d) && defpackage.aa4.e(this.e, s70Var.e);
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
        String str5 = this.e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        StringBuilder sbD = defpackage.ad2.d("CoreCreative(creativeId=", str, ", campaignId=", str2, ", placeId=");
        kv2.c(sbD, str3, ", offerId=", str4, ", performanceOpeningUrl=");
        return defpackage.me0.d(sbD, str5, ")");
    }
}
