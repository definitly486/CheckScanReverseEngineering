package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class wm6 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("value")
    private final String b;

    @bq7("hike")
    private final dw3 c;

    @bq7("hikeFixed")
    private final gw3 d;

    public wm6(String str, String str2, dw3 dw3Var, gw3 gw3Var) {
        this.a = str;
        this.b = str2;
        this.c = dw3Var;
        this.d = gw3Var;
    }

    public final dw3 a() {
        return this.c;
    }

    public final gw3 b() {
        return this.d;
    }

    public final String c() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wm6)) {
            return false;
        }
        wm6 wm6Var = (wm6) obj;
        return aa4.e(this.a, wm6Var.a) && aa4.e(this.b, wm6Var.b) && aa4.e(this.c, wm6Var.c) && aa4.e(this.d, wm6Var.d);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        dw3 dw3Var = this.c;
        int iHashCode3 = (iHashCode2 + (dw3Var == null ? 0 : dw3Var.hashCode())) * 31;
        gw3 gw3Var = this.d;
        return iHashCode3 + (gw3Var != null ? gw3Var.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        dw3 dw3Var = this.c;
        gw3 gw3Var = this.d;
        StringBuilder sbD = ad2.d("Profit(title=", str, ", value=", str2, ", hike=");
        sbD.append(dw3Var);
        sbD.append(", hikeFixed=");
        sbD.append(gw3Var);
        sbD.append(")");
        return sbD.toString();
    }
}
