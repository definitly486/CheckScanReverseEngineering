package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class ne {
    public final long a;
    public final kx5 b;
    public final int c;
    public final h14 d;
    public final long e;
    public final kx5 f;
    public final int g;
    public final h14 h;
    public final long i;
    public final long j;

    public ne(long j, kx5 kx5Var, int i, h14 h14Var, long j2, kx5 kx5Var2, int i2, h14 h14Var2, long j3, long j4) {
        this.a = j;
        this.b = kx5Var;
        this.c = i;
        this.d = h14Var;
        this.e = j2;
        this.f = kx5Var2;
        this.g = i2;
        this.h = h14Var2;
        this.i = j3;
        this.j = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ne.class == obj.getClass()) {
            ne neVar = (ne) obj;
            if (this.a == neVar.a && this.c == neVar.c && this.e == neVar.e && this.g == neVar.g && this.i == neVar.i && this.j == neVar.j && ep4.a(this.b, neVar.b) && ep4.a(this.d, neVar.d) && ep4.a(this.f, neVar.f) && ep4.a(this.h, neVar.h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.a), this.b, Integer.valueOf(this.c), this.d, Long.valueOf(this.e), this.f, Integer.valueOf(this.g), this.h, Long.valueOf(this.i), Long.valueOf(this.j)});
    }
}
