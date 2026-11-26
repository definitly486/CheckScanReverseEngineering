package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ww3 {

    @bq7("logoUrl")
    private final String a;

    @bq7(FirebaseAnalytics.Param.DISCOUNT)
    private final String b;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String c;

    @bq7(FirebaseAnalytics.Param.PRICE)
    private final String d;

    @bq7("oldPrice")
    private final String e;

    @bq7("bottom")
    private final String f;

    @bq7("url")
    private final String g;

    @bq7("adult")
    private final boolean h;

    @bq7(TJAdUnitConstants.String.BUTTONS)
    private final List<lb8> i;

    @bq7("restrictionJson")
    private final String j;

    public ww3(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, List<lb8> list, String str8) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        str7.getClass();
        list.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        this.h = z;
        this.i = list;
        this.j = str8;
    }

    public final boolean a() {
        return this.h;
    }

    public final String b() {
        return this.f;
    }

    public final List<lb8> c() {
        return this.i;
    }

    public final String d() {
        return this.b;
    }

    public final String e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ww3)) {
            return false;
        }
        ww3 ww3Var = (ww3) obj;
        return aa4.e(this.a, ww3Var.a) && aa4.e(this.b, ww3Var.b) && aa4.e(this.c, ww3Var.c) && aa4.e(this.d, ww3Var.d) && aa4.e(this.e, ww3Var.e) && aa4.e(this.f, ww3Var.f) && aa4.e(this.g, ww3Var.g) && this.h == ww3Var.h && aa4.e(this.i, ww3Var.i) && aa4.e(this.j, ww3Var.j);
    }

    public final String f() {
        return this.e;
    }

    public final String g() {
        return this.d;
    }

    public final String h() {
        return this.j;
    }

    public final int hashCode() {
        int iB = e2.b(this.i, tg.c(zg.b(zg.b(zg.b(zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, this.h), 31);
        String str = this.j;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String i() {
        return this.c;
    }

    public final String j() {
        return this.g;
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        String str6 = this.f;
        String str7 = this.g;
        boolean z = this.h;
        List<lb8> list = this.i;
        String str8 = this.j;
        StringBuilder sbD = ad2.d("HotItemResponse(logoUrl=", str, ", discount=", str2, ", title=");
        kv2.c(sbD, str3, ", price=", str4, ", oldPrice=");
        kv2.c(sbD, str5, ", bottom=", str6, ", url=");
        ud.f(sbD, str7, ", adult=", z, ", buttons=");
        sbD.append(list);
        sbD.append(", restrictionJson=");
        sbD.append(str8);
        sbD.append(")");
        return sbD.toString();
    }
}
