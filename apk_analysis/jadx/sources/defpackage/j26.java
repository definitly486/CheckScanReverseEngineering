package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class j26<CONTENT> {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final List<CONTENT> a;

    @bq7("totalElements")
    private final int b;

    @bq7("totalPages")
    private final int c;

    @bq7(TJAdUnitConstants.String.SIZE)
    private final int d;

    @bq7("number")
    private final int e;

    @bq7("first")
    private final Boolean f;

    @bq7("last")
    private final Boolean g;

    public /* synthetic */ j26(List list, int i, int i2, int i3, int i4, Boolean bool, Boolean bool2, int i5, jh2 jh2Var) {
        this(list, i, (i5 & 4) != 0 ? 0 : i2, (i5 & 8) != 0 ? 0 : i3, (i5 & 16) != 0 ? 0 : i4, (i5 & 32) != 0 ? null : bool, (i5 & 64) != 0 ? null : bool2);
    }

    public final List<CONTENT> a() {
        return this.a;
    }

    public final Boolean b() {
        return this.g;
    }

    public final int c() {
        return this.b;
    }

    public final int d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j26)) {
            return false;
        }
        j26 j26Var = (j26) obj;
        return aa4.e(this.a, j26Var.a) && this.b == j26Var.b && this.c == j26Var.c && this.d == j26Var.d && this.e == j26Var.e && aa4.e(this.f, j26Var.f) && aa4.e(this.g, j26Var.g);
    }

    public final int hashCode() {
        int iB = ej0.b(this.e, ej0.b(this.d, ej0.b(this.c, ej0.b(this.b, this.a.hashCode() * 31, 31), 31), 31), 31);
        Boolean bool = this.f;
        int iHashCode = (iB + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.g;
        return iHashCode + (bool2 != null ? bool2.hashCode() : 0);
    }

    public final String toString() {
        List<CONTENT> list = this.a;
        int i = this.b;
        int i2 = this.c;
        int i3 = this.d;
        int i4 = this.e;
        Boolean bool = this.f;
        Boolean bool2 = this.g;
        StringBuilder sb = new StringBuilder("PaginationResponse(content=");
        sb.append(list);
        sb.append(", totalElements=");
        sb.append(i);
        sb.append(", totalPages=");
        gg.e(sb, i2, ", size=", i3, ", number=");
        sb.append(i4);
        sb.append(", first=");
        sb.append(bool);
        sb.append(", last=");
        sb.append(bool2);
        sb.append(")");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j26(List<? extends CONTENT> list, int i, int i2, int i3, int i4, Boolean bool, Boolean bool2) {
        list.getClass();
        this.a = list;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = bool;
        this.g = bool2;
    }
}
