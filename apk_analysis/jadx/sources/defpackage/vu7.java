package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class vu7 {

    @bq7("build")
    private final String a;

    @bq7("city")
    private final String b;

    @bq7(TtmlNode.ATTR_ID)
    private final int c;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final String d;

    @bq7(FirebaseAnalytics.Param.LOCATION)
    private final nu4 e;

    @bq7("name")
    private final String f;

    @bq7("street")
    private final String g;

    @bq7("url")
    private final String h;

    @bq7("kladr")
    private final String i;

    public vu7(String str, String str2, int i, String str3, nu4 nu4Var, String str4, String str5, String str6, String str7) {
        x7.b(str3, str4, str7);
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = str3;
        this.e = nu4Var;
        this.f = str4;
        this.g = str5;
        this.h = str6;
        this.i = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vu7)) {
            return false;
        }
        vu7 vu7Var = (vu7) obj;
        return aa4.e(this.a, vu7Var.a) && aa4.e(this.b, vu7Var.b) && this.c == vu7Var.c && aa4.e(this.d, vu7Var.d) && aa4.e(this.e, vu7Var.e) && aa4.e(this.f, vu7Var.f) && aa4.e(this.g, vu7Var.g) && aa4.e(this.h, vu7Var.h) && aa4.e(this.i, vu7Var.i);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iB = zg.b(ej0.b(this.c, (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31), 31, this.d);
        nu4 nu4Var = this.e;
        int iB2 = zg.b((iB + (nu4Var == null ? 0 : nu4Var.hashCode())) * 31, 31, this.f);
        String str3 = this.g;
        int iHashCode2 = (iB2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.h;
        return this.i.hashCode() + ((iHashCode2 + (str4 != null ? str4.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        int i = this.c;
        String str3 = this.d;
        nu4 nu4Var = this.e;
        String str4 = this.f;
        String str5 = this.g;
        String str6 = this.h;
        String str7 = this.i;
        StringBuilder sbD = ad2.d("ShopResponse(build=", str, ", city=", str2, ", id=");
        sbD.append(i);
        sbD.append(", type=");
        sbD.append(str3);
        sbD.append(", location=");
        sbD.append(nu4Var);
        sbD.append(", name=");
        sbD.append(str4);
        sbD.append(", street=");
        kv2.c(sbD, str5, ", url=", str6, ", kladr=");
        return me0.d(sbD, str7, ")");
    }
}
