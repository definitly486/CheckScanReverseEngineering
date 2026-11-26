package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class li4 {

    @bq7(FirebaseAnalytics.Param.SUCCESS)
    private final boolean a;

    @bq7("text")
    private final String b;

    @bq7("description")
    private final String c;

    @bq7("buttonText")
    private final String d;

    @bq7("buttonUrl")
    private final String e;

    @bq7("confirmDetails")
    private final yv1 f;

    public li4(boolean z, String str, String str2, String str3, String str4, yv1 yv1Var) {
        str.getClass();
        str2.getClass();
        this.a = z;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = yv1Var;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.e;
    }

    public final String c() {
        return this.c;
    }

    public final boolean d() {
        return this.a;
    }

    public final String e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof li4)) {
            return false;
        }
        li4 li4Var = (li4) obj;
        return this.a == li4Var.a && aa4.e(this.b, li4Var.b) && aa4.e(this.c, li4Var.c) && aa4.e(this.d, li4Var.d) && aa4.e(this.e, li4Var.e) && aa4.e(this.f, li4Var.f);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(Boolean.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        yv1 yv1Var = this.f;
        return iHashCode2 + (yv1Var != null ? yv1Var.hashCode() : 0);
    }

    public final String toString() {
        boolean z = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        yv1 yv1Var = this.f;
        StringBuilder sb = new StringBuilder("LandingConfirmResponse(success=");
        sb.append(z);
        sb.append(", text=");
        sb.append(str);
        sb.append(", description=");
        kv2.c(sb, str2, ", buttonText=", str3, ", buttonUrl=");
        sb.append(str4);
        sb.append(", confirmDetails=");
        sb.append(yv1Var);
        sb.append(")");
        return sb.toString();
    }
}
