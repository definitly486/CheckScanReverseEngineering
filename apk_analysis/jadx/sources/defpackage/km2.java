package defpackage;

import com.google.firebase.remoteconfig.RemoteConfigConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class km2 {

    @bq7(RemoteConfigConstants.RequestFieldKey.APP_VERSION)
    private final String a;

    @bq7("os")
    private final String b;

    @bq7("osVersion")
    private final String c;

    @bq7("token")
    private final String d;

    @bq7("huaweiPushToken")
    private final String e;

    @bq7("firebasePushToken")
    private final String f;

    @bq7("appMetricaDeviceId")
    private final String g;

    public km2(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
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
        if (!(obj instanceof km2)) {
            return false;
        }
        km2 km2Var = (km2) obj;
        return aa4.e(this.a, km2Var.a) && aa4.e(this.b, km2Var.b) && aa4.e(this.c, km2Var.c) && aa4.e(this.d, km2Var.d) && aa4.e(this.e, km2Var.e) && aa4.e(this.f, km2Var.f) && aa4.e(this.g, km2Var.g);
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
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        String str6 = this.f;
        String str7 = this.g;
        StringBuilder sbD = ad2.d("DeviceInfoRequestBody(appVersion=", str, ", os=", str2, ", osVersion=");
        kv2.c(sbD, str3, ", token=", str4, ", huaweiToken=");
        kv2.c(sbD, str5, ", firebaseToken=", str6, ", appMetricaDeviceId=");
        return me0.d(sbD, str7, ")");
    }

    public /* synthetic */ km2(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, jh2 jh2Var) {
        this(str, str2, str3, str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7);
    }
}
