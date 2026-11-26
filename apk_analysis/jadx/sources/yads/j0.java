package yads;

import androidx.media3.common.PlaybackException;
import androidx.window.core.layout.WindowSizeClass;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j0 {
    public static final int[] a = {PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT, 2000, 1920, 1601, WindowSizeClass.WIDTH_DP_EXTRA_LARGE_LOWER_BOUND, 1001, 1000, 960, 800, 800, WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND, 400, 400, 2048};

    /* JADX WARN: Code duplicated, block: B:44:0x008b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0090  */
    /* JADX WARN: Code duplicated, block: B:48:0x0092  */
    /* JADX WARN: Code duplicated, block: B:49:0x0095  */
    public static i0 a(ns4 ns4Var) {
        int i;
        int i2;
        int iA = ns4Var.a(16);
        int iA2 = ns4Var.a(16);
        if (iA2 == 65535) {
            iA2 = ns4Var.a(24);
            i = 7;
        } else {
            i = 4;
        }
        int i3 = iA2 + i;
        if (iA == 44097) {
            i3 += 2;
        }
        if (ns4Var.a(2) == 3) {
            do {
                ns4Var.a(2);
            } while (ns4Var.e());
        }
        int iA3 = ns4Var.a(10);
        if (ns4Var.e() && ns4Var.a(3) > 0) {
            ns4Var.c(2);
        }
        int i4 = ns4Var.e() ? 48000 : 44100;
        int iA4 = ns4Var.a(4);
        if (i4 == 44100 && iA4 == 13) {
            i2 = a[iA4];
        } else if (i4 == 48000) {
            int[] iArr = a;
            if (iA4 < 14) {
                int i5 = iArr[iA4];
                int i6 = iA3 % 5;
                if (i6 == 1) {
                    if (iA4 != 3 || iA4 == 8) {
                        i2 = i5 + 1;
                    } else {
                        i2 = i5;
                    }
                } else if (i6 != 2) {
                    if (i6 == 3) {
                        if (iA4 != 3) {
                        }
                        i2 = i5 + 1;
                    } else if (i6 == 4 && (iA4 == 3 || iA4 == 8 || iA4 == 11)) {
                        i2 = i5 + 1;
                    } else {
                        i2 = i5;
                    }
                } else if (iA4 == 8 || iA4 == 11) {
                    i2 = i5 + 1;
                } else {
                    i2 = i5;
                }
            } else {
                i2 = 0;
            }
        } else {
            i2 = 0;
        }
        return new i0(i4, i3, i2);
    }

    public static void a(int i, os4 os4Var) {
        os4Var.c(7);
        byte[] bArr = os4Var.a;
        bArr[0] = -84;
        bArr[1] = 64;
        bArr[2] = -1;
        bArr[3] = -1;
        bArr[4] = (byte) ((i >> 16) & 255);
        bArr[5] = (byte) ((i >> 8) & 255);
        bArr[6] = (byte) (i & 255);
    }
}
