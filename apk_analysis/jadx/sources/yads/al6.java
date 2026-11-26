package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class al6 {
    public final int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public float k;

    public al6(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.e = -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof al6)) {
            return false;
        }
        al6 al6Var = (al6) obj;
        return this.a == al6Var.a && this.b == al6Var.b && this.c == al6Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + i96.a(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        return defpackage.l2.e(defpackage.bg.f(i, i2, "WrapLine(firstIndex=", ", mainSize=", ", itemCount="), ")", this.c);
    }

    public /* synthetic */ al6(int i, int i2) {
        this(0, (i2 & 2) != 0 ? 0 : i, 0);
    }
}
