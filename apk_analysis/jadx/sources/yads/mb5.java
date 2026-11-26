package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class mb5 {
    public final float a;
    public final float b;
    public final int c;
    public final float d;
    public final Integer e;
    public final Float f;

    public mb5(float f, float f2, int i, float f3, Integer num, Float f4) {
        this.a = f;
        this.b = f2;
        this.c = i;
        this.d = f3;
        this.e = num;
        this.f = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mb5)) {
            return false;
        }
        mb5 mb5Var = (mb5) obj;
        return Float.compare(this.a, mb5Var.a) == 0 && Float.compare(this.b, mb5Var.b) == 0 && this.c == mb5Var.c && Float.compare(this.d, mb5Var.d) == 0 && defpackage.aa4.e(this.e, mb5Var.e) && defpackage.aa4.e(this.f, mb5Var.f);
    }

    public final int hashCode() {
        int iA = rp0.a(i96.a(this.c, rp0.a(Float.hashCode(this.a) * 31, this.b, 31), 31), this.d, 31);
        Integer num = this.e;
        int iHashCode = (iA + (num == null ? 0 : num.hashCode())) * 31;
        Float f = this.f;
        return iHashCode + (f != null ? f.hashCode() : 0);
    }

    public final String toString() {
        return "Params(width=" + this.a + ", height=" + this.b + ", color=" + this.c + ", radius=" + this.d + ", strokeColor=" + this.e + ", strokeWidth=" + this.f + ")";
    }
}
