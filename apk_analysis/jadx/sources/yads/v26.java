package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public abstract class v26 {
    public static long a(os4 os4Var, int i, int i2) {
        os4Var.e(i);
        if (os4Var.c - os4Var.b < 5) {
            return C.TIME_UNSET;
        }
        int iA = os4Var.a();
        if ((8388608 & iA) != 0 || ((2096896 & iA) >> 8) != i2 || (iA & 32) == 0 || os4Var.k() < 7 || os4Var.c - os4Var.b < 7 || (os4Var.k() & 16) != 16) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[6];
        os4Var.a(bArr, 0, 6);
        return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((((long) bArr[4]) & 255) >> 7);
    }
}
