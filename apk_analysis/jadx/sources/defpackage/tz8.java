package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class tz8 {

    @bq7("sumMin")
    private final int a;

    @bq7("sumMax")
    private final int b;

    @bq7("sum")
    private final int c;

    @bq7("description")
    private final String d;

    @bq7(FirebaseAnalytics.Param.DESTINATION)
    private final String e;

    @bq7("icon")
    private final String f;

    @bq7("rules")
    private final String g;

    public tz8(int i, int i2, int i3, String str, String str2, String str3, String str4) {
        x7.b(str, str2, str4);
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
    }

    public final String a() {
        return this.d;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.a;
    }

    public final String d() {
        return this.e;
    }

    public final String e() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tz8)) {
            return false;
        }
        tz8 tz8Var = (tz8) obj;
        return this.a == tz8Var.a && this.b == tz8Var.b && this.c == tz8Var.c && aa4.e(this.d, tz8Var.d) && aa4.e(this.e, tz8Var.e) && aa4.e(this.f, tz8Var.f) && aa4.e(this.g, tz8Var.g);
    }

    public final String f() {
        return this.g;
    }

    public final int g() {
        return this.c;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(ej0.b(this.c, ej0.b(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31, this.d), 31, this.e);
        String str = this.f;
        return this.g.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        int i3 = this.c;
        String str = this.d;
        String str2 = this.e;
        String str3 = this.f;
        String str4 = this.g;
        StringBuilder sbF = bg.f(i, i2, "TransferPhoneInfoResponse(minimalSumInKopeikas=", ", maximumSumInKopeikas=", ", sum=");
        sbF.append(i3);
        sbF.append(", description=");
        sbF.append(str);
        sbF.append(", phone=");
        kv2.c(sbF, str2, ", phoneOperatorIconUrl=", str3, ", rules=");
        return me0.d(sbF, str4, ")");
    }
}
