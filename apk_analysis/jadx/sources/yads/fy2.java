package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public abstract class fy2 {
    public static jy2 a(os4 os4Var) {
        os4Var.e(os4Var.b + 1);
        int iM = os4Var.m();
        long j = ((long) os4Var.b) + ((long) iM);
        int i = iM / 18;
        long[] jArrCopyOf = new long[i];
        long[] jArrCopyOf2 = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            long jG = os4Var.g();
            if (jG == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i2);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i2);
                break;
            }
            jArrCopyOf[i2] = jG;
            jArrCopyOf2[i2] = os4Var.g();
            os4Var.e(os4Var.b + 2);
        }
        int i3 = os4Var.b;
        os4Var.e(i3 + ((int) (j - ((long) i3))));
        return new jy2(jArrCopyOf, jArrCopyOf2);
    }
}
