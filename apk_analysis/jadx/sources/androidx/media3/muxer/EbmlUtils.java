package androidx.media3.muxer;

import defpackage.bg;
import defpackage.fg;
import defpackage.o8;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class EbmlUtils {
    private EbmlUtils() {
    }

    public static int calculateMinimumVIntLength(long j) {
        o8.e(j >= 0);
        if (j <= 126) {
            return 1;
        }
        if (j <= 16382) {
            return 2;
        }
        if (j <= 2097150) {
            return 3;
        }
        if (j <= 268435454) {
            return 4;
        }
        if (j <= 34359738366L) {
            return 5;
        }
        if (j <= 4398046511102L) {
            return 6;
        }
        if (j <= 562949953421310L) {
            return 7;
        }
        if (j <= 72057594037927934L) {
            return 8;
        }
        fg.c(bg.d(j, "Value ", " is too large for a VINT."));
        return 0;
    }

    public static ByteBuffer encodeVInt(long j) {
        return encodeVIntWithWidth(j, calculateMinimumVIntLength(j));
    }

    public static ByteBuffer encodeVIntWithWidth(long j, int i) {
        o8.e(i >= 1 && i <= 8);
        byte[] bArr = new byte[i];
        long j2 = j | (1 << (i * 7));
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (j2 >>> (((i - 1) - i2) * 8));
        }
        return ByteBuffer.wrap(bArr);
    }
}
