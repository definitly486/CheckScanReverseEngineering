package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class ei2 implements fx5 {
    public final fx5.a a;

    @bq7("imageUrl")
    private final String b;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String c;

    @bq7("text")
    private final String d;

    @bq7("mainButton")
    private final zv0 e;

    @bq7("secondaryButton")
    private final zv0 f;

    @bq7("return")
    private final boolean g;

    @bq7("showConfetti")
    private final Boolean h;

    public ei2(fx5.a aVar, String str, String str2, String str3, zv0 zv0Var, zv0 zv0Var2, boolean z, Boolean bool) {
        aVar.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.a = aVar;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = zv0Var;
        this.f = zv0Var2;
        this.g = z;
        this.h = bool;
    }

    public final boolean a() {
        return this.g;
    }

    public final String b() {
        return this.b;
    }

    public final zv0 c() {
        return this.e;
    }

    public final zv0 d() {
        return this.f;
    }

    public final Boolean e() {
        return this.h;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ei2)) {
            return false;
        }
        ei2 ei2Var = (ei2) obj;
        return this.a == ei2Var.a && aa4.e(this.b, ei2Var.b) && aa4.e(this.c, ei2Var.c) && aa4.e(this.d, ei2Var.d) && aa4.e(this.e, ei2Var.e) && aa4.e(this.f, ei2Var.f) && this.g == ei2Var.g && aa4.e(this.h, ei2Var.h);
    }

    public final String f() {
        return this.d;
    }

    public final String g() {
        return this.c;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        zv0 zv0Var = this.e;
        int iHashCode = (iB + (zv0Var == null ? 0 : zv0Var.hashCode())) * 31;
        zv0 zv0Var2 = this.f;
        int iC = tg.c((iHashCode + (zv0Var2 == null ? 0 : zv0Var2.hashCode())) * 31, 31, this.g);
        Boolean bool = this.h;
        return iC + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        zv0 zv0Var = this.e;
        zv0 zv0Var2 = this.f;
        boolean z = this.g;
        Boolean bool = this.h;
        StringBuilder sb = new StringBuilder("DefaultOnboardingSlideResponse(type=");
        sb.append(this.a);
        sb.append(", imageUrl=");
        sb.append(str);
        sb.append(", title=");
        kv2.c(sb, str2, ", text=", str3, ", mainButton=");
        sb.append(zv0Var);
        sb.append(", secondaryButton=");
        sb.append(zv0Var2);
        sb.append(", canGoBack=");
        sb.append(z);
        sb.append(", showConfetti=");
        sb.append(bool);
        sb.append(")");
        return sb.toString();
    }

    public /* synthetic */ ei2(fx5.a aVar, String str, String str2, String str3, zv0 zv0Var, zv0 zv0Var2, boolean z, Boolean bool, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? fx5.a.DEFAULT : aVar, str, str2, str3, zv0Var, zv0Var2, z, bool);
    }
}
