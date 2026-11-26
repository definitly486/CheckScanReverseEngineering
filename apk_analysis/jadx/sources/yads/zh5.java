package yads;

import androidx.media3.common.C;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zh5 extends ei5 {
    public final long d;
    public final long e;
    public final List f;
    public final long g;
    public final long h;
    public final long i;

    public zh5(y35 y35Var, long j, long j2, long j3, long j4, List list, long j5, long j6, long j7) {
        super(y35Var, j, j2);
        this.d = j3;
        this.e = j4;
        this.f = list;
        this.i = j5;
        this.g = j6;
        this.h = j7;
    }

    public abstract long a(long j);

    public final long a(long j, long j2) {
        if (a(j) == -1) {
            long j3 = this.g;
            if (j3 != C.TIME_UNSET) {
                return Math.max(this.d, c((j2 - this.h) - j3, j));
            }
        }
        return this.d;
    }

    public abstract y35 a(m75 m75Var, long j);

    public final long b(long j, long j2) {
        List list = this.f;
        if (list != null) {
            return (((ci5) list.get((int) (j - this.d))).b * 1000000) / this.b;
        }
        long jA = a(j2);
        return (jA == -1 || j != (this.d + jA) - 1) ? (this.e * 1000000) / this.b : j2 - b(j);
    }

    public final long c(long j, long j2) {
        long j3 = this.d;
        long jA = a(j2);
        if (jA != 0) {
            if (this.f != null) {
                long j4 = (jA + j3) - 1;
                long j5 = j3;
                while (j5 <= j4) {
                    long j6 = ((j4 - j5) / 2) + j5;
                    long jB = b(j6);
                    if (jB < j) {
                        j5 = j6 + 1;
                    } else {
                        if (jB <= j) {
                            return j6;
                        }
                        j4 = j6 - 1;
                    }
                }
                return j5 == j3 ? j5 : j4;
            }
            long j7 = (j / ((this.e * 1000000) / this.b)) + this.d;
            if (j7 >= j3) {
                return jA == -1 ? j7 : Math.min(j7, (j3 + jA) - 1);
            }
        }
        return j3;
    }

    public boolean a() {
        return this.f != null;
    }

    public final long b(long j) {
        long j2;
        List list = this.f;
        long j3 = this.d;
        if (list != null) {
            j2 = ((ci5) list.get((int) (j - j3))).a - this.c;
        } else {
            j2 = (j - j3) * this.e;
        }
        return u56.a(j2, 1000000L, this.b);
    }
}
