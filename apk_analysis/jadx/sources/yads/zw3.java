package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class zw3 extends bx3 {
    public final int a;
    public final float b;
    public final boolean c;
    public final boolean d;
    public final float e;

    public zw3(int i, float f, boolean z, boolean z2, float f2) {
        this.a = i;
        this.b = f;
        this.c = z;
        this.d = z2;
        this.e = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zw3)) {
            return false;
        }
        zw3 zw3Var = (zw3) obj;
        return this.a == zw3Var.a && Float.compare(this.b, zw3Var.b) == 0 && this.c == zw3Var.c && this.d == zw3Var.d && Float.compare(this.e, zw3Var.e) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.e) + m7.a(m7.a(rp0.a(Integer.hashCode(this.a) * 31, this.b, 31), 31, this.c), 31, this.d);
    }

    public final String toString() {
        int i = this.a;
        float f = this.b;
        boolean z = this.c;
        boolean z2 = this.d;
        float f2 = this.e;
        StringBuilder sb = new StringBuilder("Particles(color=");
        sb.append(i);
        sb.append(", density=");
        sb.append(f);
        sb.append(", isAnimated=");
        sb.append(z);
        sb.append(", isEnabled=");
        sb.append(z2);
        sb.append(", particleSize=");
        return defpackage.xy.e(sb, ")", f2);
    }
}
