package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class th5 {
    public static final th5 c;
    public final long a;
    public final long b;

    static {
        th5 th5Var = new th5(0L, 0L);
        new th5(Long.MAX_VALUE, Long.MAX_VALUE);
        new th5(Long.MAX_VALUE, 0L);
        new th5(0L, Long.MAX_VALUE);
        c = th5Var;
    }

    public th5(long j, long j2) {
        if (j < 0) {
            defpackage.mi2.b();
            throw null;
        }
        if (j2 < 0) {
            defpackage.mi2.b();
            throw null;
        }
        this.a = j;
        this.b = j2;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x005e A[RETURN] */
    public final long a(long j, long j2, long j3) {
        long j4 = this.a;
        if (j4 == 0 && this.b == 0) {
            return j;
        }
        int i = u56.a;
        long j5 = j - j4;
        if (((j4 ^ j) & (j ^ j5)) < 0) {
            j5 = Long.MIN_VALUE;
        }
        long j6 = this.b;
        long j7 = j + j6;
        if (((j6 ^ j7) & (j ^ j7)) < 0) {
            j7 = Long.MAX_VALUE;
        }
        boolean z = false;
        boolean z2 = j5 <= j2 && j2 <= j7;
        if (j5 <= j3 && j3 <= j7) {
            z = true;
        }
        if (z2 && z) {
            if (Math.abs(j2 - j) <= Math.abs(j3 - j)) {
                return j2;
            }
            return j3;
        }
        if (!z2) {
            if (z) {
                return j3;
            }
            return j5;
        }
        return j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && th5.class == obj.getClass()) {
            th5 th5Var = (th5) obj;
            if (this.a == th5Var.a && this.b == th5Var.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }
}
