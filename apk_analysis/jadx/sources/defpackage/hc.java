package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class hc {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("counterCurrentValue")
    private final int b;

    @bq7("counterMaxValue")
    private final int c;

    @bq7("counterText")
    private final String d;

    public hc(String str, int i, int i2, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = str2;
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        return this.c;
    }

    public final String c() {
        return this.d;
    }

    public final String d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hc)) {
            return false;
        }
        hc hcVar = (hc) obj;
        return aa4.e(this.a, hcVar.a) && this.b == hcVar.b && this.c == hcVar.c && aa4.e(this.d, hcVar.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ej0.b(this.c, ej0.b(this.b, this.a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        String str = this.a;
        int i = this.b;
        int i2 = this.c;
        String str2 = this.d;
        StringBuilder sbA = mz0.a(i, "AlfaChequesProgressResponse(title=", str, ", counterCurrentValue=", ", counterMaxValue=");
        sbA.append(i2);
        sbA.append(", counterText=");
        sbA.append(str2);
        sbA.append(")");
        return sbA.toString();
    }
}
