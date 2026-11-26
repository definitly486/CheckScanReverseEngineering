package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class ut6 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("text")
    private final String b;

    @bq7("exampleImageUrl")
    private final String c;

    public /* synthetic */ ut6(String str, String str2, String str3, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new String() : str, (i & 2) != 0 ? new String() : str2, (i & 4) != 0 ? new String() : str3);
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ut6)) {
            return false;
        }
        ut6 ut6Var = (ut6) obj;
        return aa4.e(this.a, ut6Var.a) && aa4.e(this.b, ut6Var.b) && aa4.e(this.c, ut6Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return me0.d(ad2.d("PurchaseShopInfoResponse(title=", str, ", text=", str2, ", exampleImageUrl="), this.c, ")");
    }

    public ut6(String str, String str2, String str3) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public ut6() {
        this(null, null, null, 7, null);
    }
}
