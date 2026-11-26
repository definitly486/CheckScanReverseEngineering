package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class l06 {
    public final c06 a;
    public final int b;
    public final long[] c;
    public final int[] d;
    public final int e;
    public final long[] f;
    public final int[] g;
    public final long h;

    public l06(c06 c06Var, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        if (iArr.length != jArr2.length) {
            defpackage.mi2.b();
            throw null;
        }
        if (jArr.length != jArr2.length) {
            defpackage.mi2.b();
            throw null;
        }
        if (iArr2.length != jArr2.length) {
            defpackage.mi2.b();
            throw null;
        }
        this.a = c06Var;
        this.c = jArr;
        this.d = iArr;
        this.e = i;
        this.f = jArr2;
        this.g = iArr2;
        this.h = j;
        this.b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public final int a(long j) {
        for (int iA = u56.a(this.f, j, true); iA < this.f.length; iA++) {
            if ((this.g[iA] & 1) != 0) {
                return iA;
            }
        }
        return -1;
    }
}
