package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class lv0 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("titleColor")
    private final String b;

    @bq7("backgroundColor")
    private final String c;

    public lv0(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lv0)) {
            return false;
        }
        lv0 lv0Var = (lv0) obj;
        return aa4.e(this.a, lv0Var.a) && aa4.e(this.b, lv0Var.b) && aa4.e(this.c, lv0Var.c);
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return me0.d(ad2.d("ButtonData(title=", str, ", titleColor=", str2, ", backgroundColor="), this.c, ")");
    }
}
