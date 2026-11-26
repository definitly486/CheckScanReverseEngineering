package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class he3 {
    public static int a(int i, int i2) {
        if (i2 < 0) {
            defpackage.xg.d("cannot store more than MAX_VALUE elements");
            return 0;
        }
        int iHighestOneBit = i + (i >> 1) + 1;
        if (iHighestOneBit < i2) {
            iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
        }
        if (iHighestOneBit < 0) {
            return Integer.MAX_VALUE;
        }
        return iHighestOneBit;
    }
}
