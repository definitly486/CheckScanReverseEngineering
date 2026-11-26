package yads;

import android.graphics.RectF;

/* JADX INFO: loaded from: classes6.dex */
public final class qr2 {
    public final int a;
    public final RectF b;

    public qr2(int i, RectF rectF) {
        this.a = i;
        this.b = rectF;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qr2)) {
            return false;
        }
        qr2 qr2Var = (qr2) obj;
        return this.a == qr2Var.a && defpackage.aa4.e(this.b, qr2Var.b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        RectF rectF = this.b;
        return iHashCode + (rectF == null ? 0 : rectF.hashCode());
    }

    public final String toString() {
        return "Exposure(exposedPercentage=" + this.a + ", visibleRectangle=" + this.b + ")";
    }
}
