package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class x50 implements wh5, sh5 {
    public final long a;
    public final long b;
    public final int c;
    public final long d;
    public final int e;
    public final long f;
    public final boolean g;

    public x50(long j, long j2, ab4 ab4Var, boolean z) {
        int i = ab4Var.f;
        int i2 = ab4Var.c;
        this.a = j;
        this.b = j2;
        this.c = i2 == -1 ? 1 : i2;
        this.e = i;
        this.g = z;
        if (j == -1) {
            this.d = -1L;
            this.f = C.TIME_UNSET;
        } else {
            this.d = j - j2;
            this.f = a(i, j, j2);
        }
    }

    public static long a(int i, long j, long j2) {
        return (Math.max(0L, j - j2) * 8000000) / ((long) i);
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        long j2 = this.d;
        if (j2 == -1 && !this.g) {
            uh5 uh5Var = new uh5(0L, this.b);
            return new qh5(uh5Var, uh5Var);
        }
        long j3 = (((long) this.e) * j) / 8000000;
        long j4 = this.c;
        long jMin = (j3 / j4) * j4;
        if (j2 != -1) {
            jMin = Math.min(jMin, j2 - j4);
        }
        long jMax = Math.max(jMin, 0L);
        long j5 = this.b;
        long j6 = jMax + j5;
        long jA = a(this.e, j6, j5);
        uh5 uh5Var2 = new uh5(jA, j6);
        if (this.d != -1 && jA < j) {
            long j7 = j6 + ((long) this.c);
            if (j7 < this.a) {
                return new qh5(uh5Var2, new uh5(a(this.e, j7, this.b), j7));
            }
        }
        return new qh5(uh5Var2, uh5Var2);
    }

    @Override // yads.sh5
    public final long c() {
        return this.f;
    }

    @Override // yads.wh5
    public final long a(long j) {
        return a(this.e, j, this.b);
    }

    @Override // yads.wh5
    public final long a() {
        return -1L;
    }

    @Override // yads.sh5
    public final boolean b() {
        return this.d != -1 || this.g;
    }
}
