package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class ptb extends dta {
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
        if (wtb.e) {
            wtb.e(obj, j, z);
        } else {
            wtb.f(obj, j, z);
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
        return wtb.e ? wtb.i(obj, j) : wtb.j(obj, j);
    }
}
