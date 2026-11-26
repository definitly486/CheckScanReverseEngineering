package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class mm1 implements nm1<Float> {
    public final float b;
    public final float c;

    public mm1(float f, float f2) {
        this.b = f;
        this.c = f2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nm1
    public final boolean a(Comparable comparable, Comparable comparable2) {
        return ((Number) comparable).floatValue() <= ((Number) comparable2).floatValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nm1
    public final boolean contains(Comparable comparable) {
        float fFloatValue = ((Number) comparable).floatValue();
        return fFloatValue >= this.b && fFloatValue <= this.c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof mm1)) {
            return false;
        }
        if (isEmpty() && ((mm1) obj).isEmpty()) {
            return true;
        }
        mm1 mm1Var = (mm1) obj;
        return this.b == mm1Var.b && this.c == mm1Var.c;
    }

    @Override // defpackage.om1
    public final Comparable getEndInclusive() {
        return Float.valueOf(this.c);
    }

    @Override // defpackage.om1
    public final Comparable getStart() {
        return Float.valueOf(this.b);
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return Float.hashCode(this.c) + (Float.hashCode(this.b) * 31);
    }

    @Override // defpackage.om1
    public final boolean isEmpty() {
        return this.b > this.c;
    }

    public final String toString() {
        return this.b + ".." + this.c;
    }
}
