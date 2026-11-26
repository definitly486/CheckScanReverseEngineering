package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class hz {
    public final k06 a;
    public final int b;
    public final int c;
    public final long d;
    public final int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public long[] k;
    public int[] l;

    public hz(int i, int i2, long j, int i3, k06 k06Var) {
        if (i2 != 1 && i2 != 2) {
            defpackage.mi2.b();
            throw null;
        }
        this.d = j;
        this.e = i3;
        this.a = k06Var;
        int i4 = (((i % 10) + 48) << 8) | ((i / 10) + 48);
        this.b = (i2 == 2 ? 1667497984 : 1651965952) | i4;
        this.c = i2 == 2 ? i4 | 1650720768 : -1;
        this.k = new long[512];
        this.l = new int[512];
    }

    public final void a(long j) {
        int i = this.j;
        int[] iArrCopyOf = this.l;
        if (i == iArrCopyOf.length) {
            long[] jArr = this.k;
            this.k = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
            int[] iArr = this.l;
            iArrCopyOf = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
            this.l = iArrCopyOf;
        }
        long[] jArr2 = this.k;
        int i2 = this.j;
        jArr2[i2] = j;
        iArrCopyOf[i2] = this.i;
        this.j = i2 + 1;
    }

    public final qh5 b(long j) {
        int i = (int) (j / (this.d / ((long) this.e)));
        int iA = u56.a(this.l, i, true, true);
        int[] iArr = this.l;
        int i2 = iArr[iA];
        if (i2 == i) {
            uh5 uh5Var = new uh5((this.d / ((long) this.e)) * ((long) i2), this.k[iA]);
            return new qh5(uh5Var, uh5Var);
        }
        long j2 = this.d / ((long) this.e);
        long[] jArr = this.k;
        uh5 uh5Var2 = new uh5(((long) i2) * j2, jArr[iA]);
        int i3 = iA + 1;
        return i3 < jArr.length ? new qh5(uh5Var2, new uh5(j2 * ((long) iArr[i3]), jArr[i3])) : new qh5(uh5Var2, uh5Var2);
    }

    public final void a() {
        this.k = Arrays.copyOf(this.k, this.j);
        this.l = Arrays.copyOf(this.l, this.j);
    }
}
