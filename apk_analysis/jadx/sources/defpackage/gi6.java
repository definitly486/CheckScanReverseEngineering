package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class gi6 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    @bq7("name")
    private final String b;

    @bq7(FirebaseAnalytics.Param.PRICE)
    private final int c;

    @bq7("catId")
    private final int d;

    @bq7(FirebaseAnalytics.Param.QUANTITY)
    private final float e;

    @bq7("sum")
    private final int f;

    @bq7("isPromotional")
    private final boolean g;

    @bq7("prodId")
    private final long h;

    @bq7("datetime")
    private final String i;

    @bq7("shop")
    private final vu7 j;

    public gi6(long j, String str, int i, int i2, float f, int i3, boolean z, long j2, String str2, vu7 vu7Var) {
        str.getClass();
        str2.getClass();
        vu7Var.getClass();
        this.a = j;
        this.b = str;
        this.c = i;
        this.d = i2;
        this.e = f;
        this.f = i3;
        this.g = z;
        this.h = j2;
        this.i = str2;
        this.j = vu7Var;
    }

    public final int a() {
        return this.d;
    }

    public final long b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final int d() {
        return this.c;
    }

    public final long e() {
        return this.h;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gi6)) {
            return false;
        }
        gi6 gi6Var = (gi6) obj;
        return this.a == gi6Var.a && aa4.e(this.b, gi6Var.b) && this.c == gi6Var.c && this.d == gi6Var.d && Float.compare(this.e, gi6Var.e) == 0 && this.f == gi6Var.f && this.g == gi6Var.g && this.h == gi6Var.h && aa4.e(this.i, gi6Var.i) && aa4.e(this.j, gi6Var.j);
    }

    public final float f() {
        return this.e;
    }

    public final int g() {
        return this.f;
    }

    public final boolean h() {
        return this.g;
    }

    public final int hashCode() {
        return this.j.hashCode() + zg.b(vg.b(tg.c(ej0.b(this.f, jn.b(this.e, ej0.b(this.d, ej0.b(this.c, zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31), 31), 31), 31), 31, this.g), 31, this.h), 31, this.i);
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        int i = this.c;
        int i2 = this.d;
        float f = this.e;
        int i3 = this.f;
        boolean z = this.g;
        long j2 = this.h;
        String str2 = this.i;
        vu7 vu7Var = this.j;
        StringBuilder sbD = ah.d(j, "ProductResponse(id=", ", name=", str);
        sbD.append(", price=");
        sbD.append(i);
        sbD.append(", categoryId=");
        sbD.append(i2);
        sbD.append(", quantity=");
        sbD.append(f);
        sbD.append(", sum=");
        sbD.append(i3);
        sbD.append(", isPromotional=");
        sbD.append(z);
        sbD.append(", productId=");
        sbD.append(j2);
        sbD.append(", datetime=");
        sbD.append(str2);
        sbD.append(", shop=");
        sbD.append(vu7Var);
        sbD.append(")");
        return sbD.toString();
    }
}
