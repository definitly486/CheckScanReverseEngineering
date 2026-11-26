package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class fy5 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("steps")
    private final List<String> b;

    public fy5(String str, List<String> list) {
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
        if (!(obj instanceof fy5)) {
            return false;
        }
        fy5 fy5Var = (fy5) obj;
        return aa4.e(this.a, fy5Var.a) && aa4.e(this.b, fy5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "OnlineShopsStepsResponse(title=" + this.a + ", steps=" + this.b + ")";
    }
}
