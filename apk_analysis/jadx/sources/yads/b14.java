package yads;

/* JADX INFO: loaded from: classes6.dex */
public class b14 {
    public final Object a;
    public final int b;
    public final int c;
    public final long d;
    public final int e;

    public b14(b14 b14Var) {
        this.a = b14Var.a;
        this.b = b14Var.b;
        this.c = b14Var.c;
        this.d = b14Var.d;
        this.e = b14Var.e;
    }

    public final boolean a() {
        return this.b != -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b14)) {
            return false;
        }
        b14 b14Var = (b14) obj;
        return this.a.equals(b14Var.a) && this.b == b14Var.b && this.c == b14Var.c && this.d == b14Var.d && this.e == b14Var.e;
    }

    public final int hashCode() {
        return ((((((((this.a.hashCode() + 527) * 31) + this.b) * 31) + this.c) * 31) + ((int) this.d)) * 31) + this.e;
    }

    public b14(Object obj, int i, int i2, long j, int i3) {
        this.a = obj;
        this.b = i;
        this.c = i2;
        this.d = j;
        this.e = i3;
    }
}
