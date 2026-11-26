package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class cx3 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final List<ww3> a;

    @bq7("empty")
    private final boolean b;

    @bq7("first")
    private final boolean c;

    @bq7("last")
    private final boolean d;

    @bq7("number")
    private final int e;

    @bq7("numberOfElements")
    private final int f;

    @bq7("pageable")
    private final vw3 g;

    @bq7(TJAdUnitConstants.String.SIZE)
    private final int h;

    @bq7("sort")
    private final xw3 i;

    @bq7("totalElements")
    private final int j;

    @bq7("totalPages")
    private final int k;

    public cx3(List<ww3> list, boolean z, boolean z2, boolean z3, int i, int i2, vw3 vw3Var, int i3, xw3 xw3Var, int i4, int i5) {
        list.getClass();
        vw3Var.getClass();
        xw3Var.getClass();
        this.a = list;
        this.b = z;
        this.c = z2;
        this.d = z3;
        this.e = i;
        this.f = i2;
        this.g = vw3Var;
        this.h = i3;
        this.i = xw3Var;
        this.j = i4;
        this.k = i5;
    }

    public final List<ww3> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cx3)) {
            return false;
        }
        cx3 cx3Var = (cx3) obj;
        return aa4.e(this.a, cx3Var.a) && this.b == cx3Var.b && this.c == cx3Var.c && this.d == cx3Var.d && this.e == cx3Var.e && this.f == cx3Var.f && aa4.e(this.g, cx3Var.g) && this.h == cx3Var.h && aa4.e(this.i, cx3Var.i) && this.j == cx3Var.j && this.k == cx3Var.k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.k) + ej0.b(this.j, (this.i.hashCode() + ej0.b(this.h, (this.g.hashCode() + ej0.b(this.f, ej0.b(this.e, tg.c(tg.c(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31), 31)) * 31, 31)) * 31, 31);
    }

    public final String toString() {
        List<ww3> list = this.a;
        boolean z = this.b;
        boolean z2 = this.c;
        boolean z3 = this.d;
        int i = this.e;
        int i2 = this.f;
        vw3 vw3Var = this.g;
        int i3 = this.h;
        xw3 xw3Var = this.i;
        int i4 = this.j;
        int i5 = this.k;
        StringBuilder sb = new StringBuilder("HotItemsResponse(content=");
        sb.append(list);
        sb.append(", empty=");
        sb.append(z);
        sb.append(", first=");
        sb.append(z2);
        sb.append(", last=");
        sb.append(z3);
        sb.append(", number=");
        gg.e(sb, i, ", numberOfElements=", i2, ", pageable=");
        sb.append(vw3Var);
        sb.append(", size=");
        sb.append(i3);
        sb.append(", sort=");
        sb.append(xw3Var);
        sb.append(", totalElements=");
        sb.append(i4);
        sb.append(", totalPages=");
        return l2.e(sb, ")", i5);
    }
}
