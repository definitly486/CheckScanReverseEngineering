package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class alb extends dta {
    @Override // defpackage.dta
    public final double a(Object obj, long j) {
        return Double.longBitsToDouble(this.a.getLong(obj, j));
    }

    @Override // defpackage.dta
    public final float c(Object obj, long j) {
        return Float.intBitsToFloat(this.a.getInt(obj, j));
    }

    @Override // defpackage.dta
    public final void e(Object obj, long j, boolean z) {
        if (qlb.g) {
            qlb.c(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            qlb.d(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // defpackage.dta
    public final void g(Object obj, long j, byte b) {
        if (qlb.g) {
            qlb.c(obj, j, b);
        } else {
            qlb.d(obj, j, b);
        }
    }

    @Override // defpackage.dta
    public final void i(Object obj, long j, double d) {
        this.a.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // defpackage.dta
    public final void l(Object obj, long j, float f) {
        this.a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // defpackage.dta
    public final boolean o(Object obj, long j) {
        return qlb.g ? qlb.j(obj, j) : qlb.k(obj, j);
    }
}
