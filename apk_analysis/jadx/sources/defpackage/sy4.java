package defpackage;

import com.google.firebase.perf.util.Constants;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class sy4 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7(Constants.ENABLE_DISABLE)
    private final Boolean b;

    public sy4(String str, Boolean bool) {
        str.getClass();
        this.a = str;
        this.b = bool;
    }

    public final String a() {
        return this.a;
    }

    public final Boolean b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sy4)) {
            return false;
        }
        sy4 sy4Var = (sy4) obj;
        return aa4.e(this.a, sy4Var.a) && aa4.e(this.b, sy4Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Boolean bool = this.b;
        return iHashCode + (bool == null ? 0 : bool.hashCode());
    }

    public final String toString() {
        return "MainButtonResponse(title=" + this.a + ", isEnabled=" + this.b + ")";
    }
}
