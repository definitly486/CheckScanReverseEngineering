package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class pg {
    public final String a;
    public final String b;
    public final String c;

    public pg(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pg)) {
            return false;
        }
        pg pgVar = (pg) obj;
        return defpackage.aa4.e(this.a, pgVar.a) && defpackage.aa4.e(this.b, pgVar.b) && defpackage.aa4.e(this.c, pgVar.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return defpackage.me0.d(defpackage.ad2.d("AppMetricaStartupParams(uuid=", str, ", deviceId=", str2, ", getAdUrl="), this.c, ")");
    }
}
