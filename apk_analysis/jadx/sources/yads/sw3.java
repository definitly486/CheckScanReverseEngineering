package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class sw3 {
    public final int a;
    public final int[] b;
    public final g06[] c;
    public final int[] d;
    public final int[][][] e;
    public final g06 f;

    public sw3(int[] iArr, g06[] g06VarArr, int[] iArr2, int[][][] iArr3, g06 g06Var) {
        this.b = iArr;
        this.c = g06VarArr;
        this.e = iArr3;
        this.d = iArr2;
        this.f = g06Var;
        this.a = iArr.length;
    }

    public final int a(int i, int i2) {
        int i3 = this.c[i].a(i2).b;
        int[] iArr = new int[i3];
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            if ((this.e[i][i2][i6] & 7) == 4) {
                iArr[i5] = i6;
                i5++;
            }
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr, i5);
        int iMin = 16;
        int i7 = 0;
        String str = null;
        boolean z = false;
        while (i4 < iArrCopyOf.length) {
            String str2 = this.c[i].a(i2).e[iArrCopyOf[i4]].m;
            int i8 = i7 + 1;
            if (i7 == 0) {
                str = str2;
            } else {
                z |= !u56.a(str, str2);
            }
            iMin = Math.min(iMin, this.e[i][i2][i4] & 24);
            i4++;
            i7 = i8;
        }
        return z ? Math.min(iMin, this.d[i]) : iMin;
    }
}
