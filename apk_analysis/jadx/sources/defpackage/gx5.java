package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class gx5 {

    @bq7("imageUrl")
    private final String a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("text")
    private final String c;

    @bq7("mainButton")
    private final zv0 d;

    @bq7("secondaryButton")
    private final zv0 e;

    @bq7("eventName")
    private final String f;

    @bq7("experimentGroup")
    private final String g;

    public gx5(String str, String str2, String str3, zv0 zv0Var, zv0 zv0Var2, String str4, String str5) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = zv0Var;
        this.e = zv0Var2;
        this.f = str4;
        this.g = str5;
    }

    public final String a() {
        return this.f;
    }

    public final String b() {
        return this.g;
    }

    public final String c() {
        return this.a;
    }

    public final zv0 d() {
        return this.d;
    }

    public final zv0 e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gx5)) {
            return false;
        }
        gx5 gx5Var = (gx5) obj;
        return aa4.e(this.a, gx5Var.a) && aa4.e(this.b, gx5Var.b) && aa4.e(this.c, gx5Var.c) && aa4.e(this.d, gx5Var.d) && aa4.e(this.e, gx5Var.e) && aa4.e(this.f, gx5Var.f) && aa4.e(this.g, gx5Var.g);
    }

    public final String f() {
        return this.c;
    }

    public final String g() {
        return this.b;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        zv0 zv0Var = this.d;
        int iHashCode = (iB + (zv0Var == null ? 0 : zv0Var.hashCode())) * 31;
        zv0 zv0Var2 = this.e;
        int iHashCode2 = (iHashCode + (zv0Var2 == null ? 0 : zv0Var2.hashCode())) * 31;
        String str = this.f;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        zv0 zv0Var = this.d;
        zv0 zv0Var2 = this.e;
        String str4 = this.f;
        String str5 = this.g;
        StringBuilder sbD = ad2.d("OnboardingSubSlideResponse(imageUrl=", str, ", title=", str2, ", text=");
        sbD.append(str3);
        sbD.append(", mainButton=");
        sbD.append(zv0Var);
        sbD.append(", secondaryButton=");
        sbD.append(zv0Var2);
        sbD.append(", eventName=");
        sbD.append(str4);
        sbD.append(", experimentGroup=");
        return me0.d(sbD, str5, ")");
    }
}
