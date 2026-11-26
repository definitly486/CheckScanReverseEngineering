package defpackage;

import android.graphics.Color;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class kv0 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("titleColor")
    private final String b;

    @bq7("backgroundColor")
    private final String c;

    public kv0(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final fw0 a() {
        Integer numValueOf = Integer.valueOf(Color.parseColor(this.b));
        String str = this.a;
        String str2 = this.c;
        return new fw0(str, numValueOf, str2 != null ? Integer.valueOf(Color.parseColor(str2)) : null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kv0)) {
            return false;
        }
        kv0 kv0Var = (kv0) obj;
        return aa4.e(this.a, kv0Var.a) && aa4.e(this.b, kv0Var.b) && aa4.e(this.c, kv0Var.c);
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
