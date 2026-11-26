package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class fg3 {
    public final int a;
    public final boolean b;
    public final float c;
    public final yf3 d;
    public final float e;

    public fg3(int i, boolean z, float f, yf3 yf3Var, float f2) {
        this.a = i;
        this.b = z;
        this.c = f;
        this.d = yf3Var;
        this.e = f2;
    }

    public static fg3 a(fg3 fg3Var, float f, yf3 yf3Var, float f2, int i) {
        int i2 = fg3Var.a;
        boolean z = fg3Var.b;
        if ((i & 4) != 0) {
            f = fg3Var.c;
        }
        float f3 = f;
        if ((i & 8) != 0) {
            yf3Var = fg3Var.d;
        }
        yf3 yf3Var2 = yf3Var;
        if ((i & 16) != 0) {
            f2 = fg3Var.e;
        }
        return new fg3(i2, z, f3, yf3Var2, f2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fg3)) {
            return false;
        }
        fg3 fg3Var = (fg3) obj;
        return this.a == fg3Var.a && this.b == fg3Var.b && Float.compare(this.c, fg3Var.c) == 0 && defpackage.aa4.e(this.d, fg3Var.d) && Float.compare(this.e, fg3Var.e) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.e) + ((this.d.hashCode() + rp0.a(m7.a(Integer.hashCode(this.a) * 31, 31, this.b), this.c, 31)) * 31);
    }

    public final String toString() {
        int i = this.a;
        boolean z = this.b;
        float f = this.c;
        yf3 yf3Var = this.d;
        float f2 = this.e;
        StringBuilder sb = new StringBuilder("Indicator(position=");
        sb.append(i);
        sb.append(", active=");
        sb.append(z);
        sb.append(", centerOffset=");
        sb.append(f);
        sb.append(", itemSize=");
        sb.append(yf3Var);
        sb.append(", scaleFactor=");
        return defpackage.xy.e(sb, ")", f2);
    }
}
