package defpackage;

import androidx.core.app.NotificationCompat;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class n37 {

    @bq7(NotificationCompat.CATEGORY_STATUS)
    private final j88 a;

    @bq7(TJAdUnitConstants.String.MESSAGE)
    private final String b;

    public n37(j88 j88Var, String str) {
        j88Var.getClass();
        this.a = j88Var;
        this.b = str;
    }

    public final String a() {
        return this.b;
    }

    public final j88 b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n37)) {
            return false;
        }
        n37 n37Var = (n37) obj;
        return this.a == n37Var.a && aa4.e(this.b, n37Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "RequestID(status=" + this.a + ", message=" + this.b + ")";
    }
}
