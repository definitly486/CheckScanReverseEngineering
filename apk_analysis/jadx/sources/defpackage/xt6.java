package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class xt6 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("text")
    private final String b;

    @bq7("buttonText")
    private final String c;

    public /* synthetic */ xt6(String str, String str2, String str3, int i, jh2 jh2Var) {
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
        if (!(obj instanceof xt6)) {
            return false;
        }
        xt6 xt6Var = (xt6) obj;
        return aa4.e(this.a, xt6Var.a) && aa4.e(this.b, xt6Var.b) && aa4.e(this.c, xt6Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return me0.d(ad2.d("PurchaseSubmitInfoResponse(title=", str, ", text=", str2, ", buttonText="), this.c, ")");
    }

    public xt6(String str, String str2, String str3) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public xt6() {
        this(null, null, null, 7, null);
    }
}
