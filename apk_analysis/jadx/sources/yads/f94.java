package yads;

import android.util.Pair;
import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class f94 implements wh5 {
    public final long[] a;
    public final long[] b;
    public final long c;

    public f94(long j, long[] jArr, long[] jArr2) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j == C.TIME_UNSET ? u56.a(jArr2[jArr2.length - 1]) : j;
    }

    public static Pair a(long j, long[] jArr, long[] jArr2) {
        int iB = u56.b(jArr, j, true);
        long j2 = jArr[iB];
        long j3 = jArr2[iB];
        int i = iB + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? 0.0d : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        long j2 = this.c;
        int i = u56.a;
        Pair pairA = a(u56.b(Math.max(0L, Math.min(j, j2))), this.b, this.a);
        uh5 uh5Var = new uh5(u56.a(((Long) pairA.first).longValue()), ((Long) pairA.second).longValue());
        return new qh5(uh5Var, uh5Var);
    }

    @Override // yads.sh5
    public final long c() {
        return this.c;
    }

    @Override // yads.sh5
    public final boolean b() {
        return true;
    }

    @Override // yads.wh5
    public final long a(long j) {
        return u56.a(((Long) a(j, this.a, this.b).second).longValue());
    }

    @Override // yads.wh5
    public final long a() {
        return -1L;
    }
}
