package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class o16 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public o16(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o16)) {
            return false;
        }
        o16 o16Var = (o16) obj;
        return this.a == o16Var.a && this.b == o16Var.b && this.c == o16Var.c && this.d == o16Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + ej0.b(this.c, ej0.b(this.b, Integer.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbF = bg.f(this.a, this.b, "PaddingValues(left=", ", top=", ", right=");
        sbF.append(this.c);
        sbF.append(", bottom=");
        sbF.append(this.d);
        sbF.append(")");
        return sbF.toString();
    }
}
