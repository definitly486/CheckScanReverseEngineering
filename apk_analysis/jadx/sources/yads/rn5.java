package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class rn5 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    public rn5(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i3 * i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rn5)) {
            return false;
        }
        rn5 rn5Var = (rn5) obj;
        return this.a == rn5Var.a && this.b == rn5Var.b && this.c == rn5Var.c && this.d == rn5Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + i96.a(this.c, i96.a(this.b, Integer.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        int i3 = this.c;
        int i4 = this.d;
        StringBuilder sbF = defpackage.bg.f(i, i2, "SmartCenter(x=", ", y=", ", width=");
        sbF.append(i3);
        sbF.append(", height=");
        sbF.append(i4);
        sbF.append(")");
        return sbF.toString();
    }
}
