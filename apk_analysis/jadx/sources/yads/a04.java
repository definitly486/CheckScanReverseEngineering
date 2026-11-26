package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class a04 {
    public final int a;
    public final int b;
    public final int c;

    public a04(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a04)) {
            return false;
        }
        a04 a04Var = (a04) obj;
        return this.a == a04Var.a && this.b == a04Var.b && this.c == a04Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + i96.a(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        return defpackage.l2.e(defpackage.bg.f(i, i2, "MediaFileInfo(width=", ", height=", ", bitrate="), ")", this.c);
    }
}
