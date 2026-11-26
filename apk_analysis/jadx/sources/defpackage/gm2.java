package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gm2 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;

    public gm2(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        m2.e(str, str2, str3, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gm2)) {
            return false;
        }
        gm2 gm2Var = (gm2) obj;
        return aa4.e(this.a, gm2Var.a) && aa4.e(this.b, gm2Var.b) && aa4.e(this.c, gm2Var.c) && aa4.e(this.d, gm2Var.d) && aa4.e(this.e, gm2Var.e) && aa4.e(this.f, gm2Var.f) && aa4.e(this.g, gm2Var.g);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("DeviceInfo(appVersion=", this.a, ", os=", this.b, ", osVersion=");
        kv2.c(sbD, this.c, ", token=", this.d, ", huaweiToken=");
        kv2.c(sbD, this.e, ", firebaseToken=", this.f, ", appMetricaDeviceId=");
        return me0.d(sbD, this.g, ")");
    }
}
