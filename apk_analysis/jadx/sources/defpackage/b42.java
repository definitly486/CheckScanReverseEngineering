package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class b42 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("steps")
    private final List<String> b;

    public b42(String str, List<String> list) {
        str.getClass();
        list.getClass();
        this.a = str;
        this.b = list;
    }

    public final List<String> a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b42)) {
            return false;
        }
        b42 b42Var = (b42) obj;
        return aa4.e(this.a, b42Var.a) && aa4.e(this.b, b42Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "CouponStepsResponse(title=" + this.a + ", steps=" + this.b + ")";
    }
}
