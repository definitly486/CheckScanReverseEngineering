package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class uf6 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("value")
    private final String b;

    public uf6(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uf6)) {
            return false;
        }
        uf6 uf6Var = (uf6) obj;
        return aa4.e(this.a, uf6Var.a) && aa4.e(this.b, uf6Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("Profit(title=", this.a, ", value=", this.b, ")");
    }
}
