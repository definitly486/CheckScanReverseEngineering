package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class x25 {
    public boolean c;
    public boolean d;
    public boolean e;
    public final vx5 a = new vx5(0);
    public long f = C.TIME_UNSET;
    public long g = C.TIME_UNSET;
    public long h = C.TIME_UNSET;
    public final os4 b = new os4();

    public static long a(os4 os4Var) {
        int i = os4Var.b;
        if (os4Var.c - i < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        os4Var.a(bArr, 0, 9);
        os4Var.e(i);
        byte b = bArr[0];
        if ((b & 196) == 68) {
            byte b2 = bArr[2];
            if ((b2 & 4) == 4) {
                byte b3 = bArr[4];
                if ((b3 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                    long j = b;
                    long j2 = b2;
                    return ((j2 & 3) << 13) | ((j & 3) << 28) | (((56 & j) >> 3) << 30) | ((((long) bArr[1]) & 255) << 20) | (((j2 & 248) >> 3) << 15) | ((((long) bArr[3]) & 255) << 5) | ((((long) b3) & 248) >> 3);
                }
            }
        }
        return C.TIME_UNSET;
    }
}
