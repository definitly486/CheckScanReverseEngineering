package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class dnb extends dta {
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
        if (pnb.f) {
            pnb.d(obj, j, z);
        } else {
            pnb.e(obj, j, z);
        }
    }

    @Override // defpackage.dta
    public final void h(Object obj, long j, double d) {
        this.a.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // defpackage.dta
    public final void j(Object obj, long j, float f) {
        this.a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // defpackage.dta
    public final boolean m(Object obj, long j) {
        return pnb.f ? pnb.h(obj, j) : pnb.i(obj, j);
    }
}
