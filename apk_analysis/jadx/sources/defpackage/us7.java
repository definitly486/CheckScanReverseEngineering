package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes3.dex */
public final class us7 {

    @bq7("category")
    private final String a;

    @bq7("name")
    private final String b;

    @bq7(FirebaseAnalytics.Param.QUANTITY)
    private final float c;

    @bq7(FirebaseAnalytics.Param.PRICE)
    private final float d;

    @bq7("sum")
    private final float e;

    public us7(String str, String str2, float f, float f2, float f3) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = f;
        this.d = f2;
        this.e = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof us7)) {
            return false;
        }
        us7 us7Var = (us7) obj;
        return aa4.e(this.a, us7Var.a) && aa4.e(this.b, us7Var.b) && Float.compare(this.c, us7Var.c) == 0 && Float.compare(this.d, us7Var.d) == 0 && Float.compare(this.e, us7Var.e) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.e) + jn.b(this.d, jn.b(this.c, zg.b(this.a.hashCode() * 31, 31, this.b), 31), 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        float f = this.c;
        float f2 = this.d;
        float f3 = this.e;
        StringBuilder sbD = ad2.d("ShareProductJson(category=", str, ", name=", str2, ", count=");
        sbD.append(f);
        sbD.append(", price=");
        sbD.append(f2);
        sbD.append(", sum=");
        return xy.e(sbD, ")", f3);
    }
}
