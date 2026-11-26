package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ox6 {
    public final float a;
    public final float b;
    public final float c;
    public final float d;

    public ox6(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ox6)) {
            return false;
        }
        ox6 ox6Var = (ox6) obj;
        return Float.compare(this.a, ox6Var.a) == 0 && Float.compare(this.b, ox6Var.b) == 0 && Float.compare(this.c, ox6Var.c) == 0 && Float.compare(this.d, ox6Var.d) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + jn.b(this.c, jn.b(this.b, Float.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        return "RatingCoordinate(top=" + this.a + ", bottom=" + this.b + ", start=" + this.c + ", end=" + this.d + ")";
    }
}
