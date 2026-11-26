package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ts7 {

    @bq7("date")
    private final String a;

    @bq7("shopName")
    private final String b;

    @bq7("shopAddress")
    private final String c;

    @bq7("totalSum")
    private final float d;

    @bq7("products")
    private final List<us7> e;

    public ts7(String str, String str2, String str3, float f, List<us7> list) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = f;
        this.e = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ts7)) {
            return false;
        }
        ts7 ts7Var = (ts7) obj;
        return aa4.e(this.a, ts7Var.a) && aa4.e(this.b, ts7Var.b) && aa4.e(this.c, ts7Var.c) && Float.compare(this.d, ts7Var.d) == 0 && aa4.e(this.e, ts7Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + jn.b(this.d, zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        float f = this.d;
        List<us7> list = this.e;
        StringBuilder sbD = ad2.d("ShareChequeJson(date=", str, ", shopName=", str2, ", shopAddress=");
        sbD.append(str3);
        sbD.append(", totalSum=");
        sbD.append(f);
        sbD.append(", products=");
        return bg.e(")", list, sbD);
    }
}
