package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class bta extends dta {
    @Override // defpackage.dta
    public final void b(Object obj, long j, byte b) {
        if (eta.f) {
            eta.b(obj, j, b);
        } else {
            eta.c(obj, j, b);
        }
    }

    @Override // defpackage.dta
    public final boolean d(Object obj, long j) {
        return eta.f ? eta.m(obj, j) : eta.n(obj, j);
    }

    @Override // defpackage.dta
    public final void e(Object obj, long j, boolean z) {
        if (eta.f) {
            eta.b(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            eta.c(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // defpackage.dta
    public final float f(Object obj, long j) {
        return Float.intBitsToFloat(this.a.getInt(obj, j));
    }

    @Override // defpackage.dta
    public final void j(Object obj, long j, float f) {
        this.a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // defpackage.dta
    public final double k(Object obj, long j) {
        return Double.longBitsToDouble(this.a.getLong(obj, j));
    }

    @Override // defpackage.dta
    public final void n(Object obj, long j, double d) {
        this.a.putLong(obj, j, Double.doubleToLongBits(d));
    }
}
