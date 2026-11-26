package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ag3 extends bg3 {
    public final int a;
    public final xf3 b;
    public final float c;
    public final int d;

    public ag3(int i, xf3 xf3Var, float f, int i2) {
        this.a = i;
        this.b = xf3Var;
        this.c = f;
        this.d = i2;
    }

    @Override // yads.bg3
    public final int a() {
        return this.a;
    }

    @Override // yads.bg3
    public final yf3 b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ag3)) {
            return false;
        }
        ag3 ag3Var = (ag3) obj;
        return this.a == ag3Var.a && defpackage.aa4.e(this.b, ag3Var.b) && Float.compare(this.c, ag3Var.c) == 0 && this.d == ag3Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + rp0.a((this.b.hashCode() + (Integer.hashCode(this.a) * 31)) * 31, this.c, 31);
    }

    public final String toString() {
        return "RoundedRect(color=" + this.a + ", itemSize=" + this.b + ", strokeWidth=" + this.c + ", strokeColor=" + this.d + ")";
    }
}
