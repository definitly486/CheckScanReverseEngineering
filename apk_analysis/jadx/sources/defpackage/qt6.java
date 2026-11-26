package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class qt6 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("text")
    private final String b;

    public /* synthetic */ qt6(String str, String str2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new String() : str, (i & 2) != 0 ? new String() : str2);
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qt6)) {
            return false;
        }
        qt6 qt6Var = (qt6) obj;
        return aa4.e(this.a, qt6Var.a) && aa4.e(this.b, qt6Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("PurchaseBankInfoResponse(title=", this.a, ", text=", this.b, ")");
    }

    public qt6(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public qt6() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
