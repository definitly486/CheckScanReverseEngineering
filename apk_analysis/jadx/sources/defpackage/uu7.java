package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class uu7 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("name")
    private final String b;

    @bq7("city")
    private final String c;

    @bq7("street")
    private final String d;

    @bq7("build")
    private final String e;

    @bq7(FirebaseAnalytics.Param.LOCATION)
    private final nu4 f;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final String g;

    @bq7("url")
    private final String h;

    public uu7(int i, String str, String str2, String str3, String str4, nu4 nu4Var, String str5, String str6) {
        str.getClass();
        str5.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = nu4Var;
        this.g = str5;
        this.h = str6;
    }

    public final String a() {
        return this.b;
    }

    public final lu7 b() {
        Integer numValueOf = Integer.valueOf(this.a);
        String str = this.b;
        String str2 = this.d;
        String str3 = this.e;
        nu4 nu4Var = this.f;
        return new lu7(numValueOf, str, str2, str3, nu4Var != null ? nu4Var.a() : null, this.c, this.g, this.h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uu7)) {
            return false;
        }
        uu7 uu7Var = (uu7) obj;
        return this.a == uu7Var.a && aa4.e(this.b, uu7Var.b) && aa4.e(this.c, uu7Var.c) && aa4.e(this.d, uu7Var.d) && aa4.e(this.e, uu7Var.e) && aa4.e(this.f, uu7Var.f) && aa4.e(this.g, uu7Var.g) && aa4.e(this.h, uu7Var.h);
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        nu4 nu4Var = this.f;
        int iB2 = zg.b((iHashCode3 + (nu4Var == null ? 0 : nu4Var.hashCode())) * 31, 31, this.g);
        String str4 = this.h;
        return iB2 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        nu4 nu4Var = this.f;
        String str5 = this.g;
        String str6 = this.h;
        StringBuilder sbE = ng.e(i, "ShopResponse2(id=", ", name=", str, ", city=");
        kv2.c(sbE, str2, ", street=", str3, ", build=");
        sbE.append(str4);
        sbE.append(", location=");
        sbE.append(nu4Var);
        sbE.append(", type=");
        return dg.c(sbE, str5, ", url=", str6, ")");
    }
}
