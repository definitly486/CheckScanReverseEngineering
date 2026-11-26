package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class am implements kv {
    public static final am h = new am(0, 0, 1, 1, 0);
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public zl g;

    public am(int i, int i2, int i3, int i4, int i5) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && am.class == obj.getClass()) {
            am amVar = (am) obj;
            if (this.b == amVar.b && this.c == amVar.c && this.d == amVar.d && this.e == amVar.e && this.f == amVar.f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.b + 527) * 31) + this.c) * 31) + this.d) * 31) + this.e) * 31) + this.f;
    }
}
