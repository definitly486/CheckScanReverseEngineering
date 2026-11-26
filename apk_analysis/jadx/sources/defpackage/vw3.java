package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes5.dex */
public final class vw3 {

    @bq7(TypedValues.CycleType.S_WAVE_OFFSET)
    private final int a;

    @bq7("pageNumber")
    private final int b;

    @bq7("pageSize")
    private final int c;

    @bq7("paged")
    private final boolean d;

    @bq7("sort")
    private final xw3 e;

    @bq7("unpaged")
    private final boolean f;

    public vw3(int i, int i2, int i3, boolean z, xw3 xw3Var, boolean z2) {
        xw3Var.getClass();
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = z;
        this.e = xw3Var;
        this.f = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vw3)) {
            return false;
        }
        vw3 vw3Var = (vw3) obj;
        return this.a == vw3Var.a && this.b == vw3Var.b && this.c == vw3Var.c && this.d == vw3Var.d && aa4.e(this.e, vw3Var.e) && this.f == vw3Var.f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f) + ((this.e.hashCode() + tg.c(ej0.b(this.c, ej0.b(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31, this.d)) * 31);
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        int i3 = this.c;
        boolean z = this.d;
        xw3 xw3Var = this.e;
        boolean z2 = this.f;
        StringBuilder sbF = bg.f(i, i2, "HotItemPageableResponse(offset=", ", pageNumber=", ", pageSize=");
        sbF.append(i3);
        sbF.append(", paged=");
        sbF.append(z);
        sbF.append(", sort=");
        sbF.append(xw3Var);
        sbF.append(", unpaged=");
        sbF.append(z2);
        sbF.append(")");
        return sbF.toString();
    }
}
