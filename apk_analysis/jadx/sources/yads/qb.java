package yads;

import defpackage.kv2;

/* JADX INFO: loaded from: classes6.dex */
public final class qb {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    public qb(String str, String str2, String str3, String str4, String str5, String str6) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qb)) {
            return false;
        }
        qb qbVar = (qb) obj;
        return defpackage.aa4.e(this.a, qbVar.a) && defpackage.aa4.e(this.b, qbVar.b) && defpackage.aa4.e(this.c, qbVar.c) && defpackage.aa4.e(this.d, qbVar.d) && defpackage.aa4.e(this.e, qbVar.e) && defpackage.aa4.e(this.f, qbVar.f);
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
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        String str6 = this.f;
        StringBuilder sbD = defpackage.ad2.d("AdditionalInfo(creativeId=", str, ", campaignId=", str2, ", placeId=");
        kv2.c(sbD, str3, ", offerId=", str4, ", additionalText=");
        return defpackage.dg.c(sbD, str5, ", performanceOpeningUrl=", str6, ")");
    }
}
