package defpackage;

import com.google.android.gms.internal.stats.zze;

/* JADX INFO: loaded from: classes5.dex */
public final class g implements zze {
    public static final String a() {
        byte[] bArr = new byte[16];
        bl7.a.nextBytes(bArr);
        byte b = (byte) (bArr[6] & 15);
        bArr[6] = b;
        bArr[6] = (byte) (b | 64);
        byte b2 = (byte) (bArr[8] & 63);
        bArr[8] = b2;
        bArr[8] = (byte) (b2 | 128);
        long jD = ea6.d(0, bArr);
        long jD2 = ea6.d(8, bArr);
        return ((jD == 0 && jD2 == 0) ? tb9.d : new tb9(jD, jD2)).toString();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0021 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x0022  */
    public static final int b(ul7 ul7Var, int i) {
        int i2;
        int[] iArr = ul7Var.g;
        int i3 = i + 1;
        int length = ul7Var.f.length - 1;
        int i4 = 0;
        while (i4 <= length) {
            i2 = (i4 + length) >>> 1;
            int i5 = iArr[i2];
            if (i5 < i3) {
                i4 = i2 + 1;
            } else {
                if (i5 <= i3) {
                    if (i2 >= 0) {
                        return i2;
                    }
                    return ~i2;
                }
                length = i2 - 1;
            }
        }
        i2 = (-i4) - 1;
        if (i2 >= 0) {
            return i2;
        }
        return ~i2;
    }
}
