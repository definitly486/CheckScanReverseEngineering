package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes5.dex */
public final class yb7 {

    @bq7("limit")
    private final int a;

    @bq7(TypedValues.CycleType.S_WAVE_OFFSET)
    private final int b;

    @bq7("dateFrom")
    private final String c;

    @bq7("dateTo")
    private final String d;

    @bq7("orderBy")
    private final String e;

    public yb7(int i, int i2, String str, String str2, String str3) {
        x7.b(str, str2, str3);
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yb7)) {
            return false;
        }
        yb7 yb7Var = (yb7) obj;
        return this.a == yb7Var.a && this.b == yb7Var.b && aa4.e(this.c, yb7Var.c) && aa4.e(this.d, yb7Var.d) && aa4.e(this.e, yb7Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + zg.b(zg.b(ej0.b(this.b, Integer.hashCode(this.a) * 31, 31), 31, this.c), 31, this.d);
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        String str = this.c;
        String str2 = this.d;
        String str3 = this.e;
        StringBuilder sbF = bg.f(i, i2, "SampleDate(limit=", ", offset=", ", dateFrom=");
        kv2.c(sbF, str, ", dateTo=", str2, ", orderBy=");
        return me0.d(sbF, str3, ")");
    }
}
