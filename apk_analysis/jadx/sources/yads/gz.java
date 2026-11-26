package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class gz implements sh5 {
    public final int a;
    public final int[] b;
    public final long[] c;
    public final long[] d;
    public final long[] e;
    public final long f;

    public gz(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.b = iArr;
        this.c = jArr;
        this.d = jArr2;
        this.e = jArr3;
        int length = iArr.length;
        this.a = length;
        if (length <= 0) {
            this.f = 0L;
        } else {
            int i = length - 1;
            this.f = jArr2[i] + jArr3[i];
        }
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        int iB = u56.b(this.e, j, true);
        long[] jArr = this.e;
        long j2 = jArr[iB];
        long[] jArr2 = this.c;
        uh5 uh5Var = new uh5(j2, jArr2[iB]);
        if (j2 >= j || iB == this.a - 1) {
            return new qh5(uh5Var, uh5Var);
        }
        int i = iB + 1;
        return new qh5(uh5Var, new uh5(jArr[i], jArr2[i]));
    }

    @Override // yads.sh5
    public final long c() {
        return this.f;
    }

    public final String toString() {
        return "ChunkIndex(length=" + this.a + ", sizes=" + Arrays.toString(this.b) + ", offsets=" + Arrays.toString(this.c) + ", timeUs=" + Arrays.toString(this.e) + ", durationsUs=" + Arrays.toString(this.d) + ")";
    }

    @Override // yads.sh5
    public final boolean b() {
        return true;
    }
}
