package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class zf3 extends bg3 {
    public final int a;
    public final wf3 b;

    public zf3(int i, wf3 wf3Var) {
        this.a = i;
        this.b = wf3Var;
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
        if (!(obj instanceof zf3)) {
            return false;
        }
        zf3 zf3Var = (zf3) obj;
        return this.a == zf3Var.a && defpackage.aa4.e(this.b, zf3Var.b);
    }

    public final int hashCode() {
        return Float.hashCode(this.b.a) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "Circle(color=" + this.a + ", itemSize=" + this.b + ")";
    }
}
