package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xf3 extends yf3 {
    public final float a;
    public final float b;
    public final float c;

    public xf3(float f, float f2, float f3) {
        this.a = f;
        this.b = f2;
        this.c = f3;
    }

    public static xf3 a(xf3 xf3Var, float f, float f2, int i) {
        if ((i & 2) != 0) {
            f2 = xf3Var.b;
        }
        return new xf3(f, f2, xf3Var.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xf3)) {
            return false;
        }
        xf3 xf3Var = (xf3) obj;
        return Float.compare(this.a, xf3Var.a) == 0 && Float.compare(this.b, xf3Var.b) == 0 && Float.compare(this.c, xf3Var.c) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.c) + rp0.a(Float.hashCode(this.a) * 31, this.b, 31);
    }

    public final String toString() {
        float f = this.a;
        float f2 = this.b;
        float f3 = this.c;
        StringBuilder sb = new StringBuilder("RoundedRect(itemWidth=");
        sb.append(f);
        sb.append(", itemHeight=");
        sb.append(f2);
        sb.append(", cornerRadius=");
        return defpackage.xy.e(sb, ")", f3);
    }
}
