package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ye6 implements kv {
    public final int b;
    public final int c;
    public final int d;
    public final float e;

    public ye6(int i, int i2, int i3, float f) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ye6) {
            ye6 ye6Var = (ye6) obj;
            if (this.b == ye6Var.b && this.c == ye6Var.c && this.d == ye6Var.d && this.e == ye6Var.e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.e) + ((((((this.b + 217) * 31) + this.c) * 31) + this.d) * 31);
    }
}
