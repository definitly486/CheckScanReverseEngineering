package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class c14 {
    public final h14 a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;

    public c14(h14 h14Var, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        if (z4 && !z2) {
            defpackage.mi2.b();
            throw null;
        }
        if (z3 && !z2) {
            defpackage.mi2.b();
            throw null;
        }
        if (z && (z2 || z3 || z4)) {
            defpackage.mi2.b();
            throw null;
        }
        this.a = h14Var;
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && c14.class == obj.getClass()) {
            c14 c14Var = (c14) obj;
            if (this.b == c14Var.b && this.c == c14Var.c && this.d == c14Var.d && this.e == c14Var.e && this.f == c14Var.f && this.g == c14Var.g && this.h == c14Var.h && this.i == c14Var.i && u56.a(this.a, c14Var.a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((((this.a.hashCode() + 527) * 31) + ((int) this.b)) * 31) + ((int) this.c)) * 31) + ((int) this.d)) * 31) + ((int) this.e)) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.h ? 1 : 0)) * 31) + (this.i ? 1 : 0);
    }
}
