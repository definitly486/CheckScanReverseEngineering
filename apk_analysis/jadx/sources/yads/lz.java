package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class lz {
    public final float a;
    public final int b;
    public final Integer c;
    public final Float d;

    public lz(float f, int i, Integer num, Float f2) {
        this.a = f;
        this.b = i;
        this.c = num;
        this.d = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lz)) {
            return false;
        }
        lz lzVar = (lz) obj;
        return Float.compare(this.a, lzVar.a) == 0 && this.b == lzVar.b && defpackage.aa4.e(this.c, lzVar.c) && defpackage.aa4.e(this.d, lzVar.d);
    }

    public final int hashCode() {
        int iA = i96.a(this.b, Float.hashCode(this.a) * 31, 31);
        Integer num = this.c;
        int iHashCode = (iA + (num == null ? 0 : num.hashCode())) * 31;
        Float f = this.d;
        return iHashCode + (f != null ? f.hashCode() : 0);
    }

    public final String toString() {
        return "Params(radius=" + this.a + ", color=" + this.b + ", strokeColor=" + this.c + ", strokeWidth=" + this.d + ")";
    }
}
