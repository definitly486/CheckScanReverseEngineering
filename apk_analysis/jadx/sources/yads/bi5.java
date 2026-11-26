package yads;

import androidx.media3.common.C;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class bi5 extends zh5 {
    public final y46 j;
    public final y46 k;
    public final long l;

    public bi5(y35 y35Var, long j, long j2, long j3, long j4, long j5, List list, long j6, y46 y46Var, y46 y46Var2, long j7, long j8) {
        super(y35Var, j, j2, j3, j5, list, j6, j7, j8);
        this.j = y46Var;
        this.k = y46Var2;
        this.l = j4;
    }

    @Override // yads.zh5
    public final long a(long j) {
        List list = this.f;
        if (list != null) {
            return list.size();
        }
        long j2 = this.l;
        if (j2 != -1) {
            return (j2 - this.d) + 1;
        }
        if (j == C.TIME_UNSET) {
            return -1L;
        }
        BigInteger bigIntegerMultiply = BigInteger.valueOf(j).multiply(BigInteger.valueOf(this.b));
        BigInteger bigIntegerMultiply2 = BigInteger.valueOf(this.e).multiply(BigInteger.valueOf(1000000L));
        RoundingMode roundingMode = RoundingMode.CEILING;
        int i = gt.a;
        return new BigDecimal(bigIntegerMultiply).divide(new BigDecimal(bigIntegerMultiply2), 0, roundingMode).toBigIntegerExact().longValue();
    }

    @Override // yads.zh5
    public final y35 a(m75 m75Var, long j) {
        long j2;
        List list = this.f;
        long j3 = this.d;
        if (list != null) {
            j2 = ((ci5) list.get((int) (j - j3))).a;
        } else {
            j2 = (j - j3) * this.e;
        }
        long j4 = j2;
        y46 y46Var = this.k;
        vz2 vz2Var = m75Var.a;
        return new y35(y46Var.a(vz2Var.b, j, vz2Var.i, j4), 0L, -1L);
    }

    @Override // yads.ei5
    public final y35 a(o75 o75Var) {
        y46 y46Var = this.j;
        if (y46Var != null) {
            vz2 vz2Var = o75Var.a;
            return new y35(y46Var.a(vz2Var.b, 0L, vz2Var.i, 0L), 0L, -1L);
        }
        return this.a;
    }
}
