package yads;

import androidx.media3.extractor.ts.PsExtractor;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ey2 {
    /* JADX WARN: Code duplicated, block: B:62:0x00be  */
    /* JADX WARN: Code duplicated, block: B:64:0x00cb A[LOOP:0: B:63:0x00c9->B:64:0x00cb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00db A[RETURN] */
    public static boolean a(os4 os4Var, ky2 ky2Var, int i, dy2 dy2Var) {
        int i2;
        int i3;
        int i4;
        int iK;
        int iK2;
        byte[] bArr;
        int i5;
        int i6;
        long jL = os4Var.l();
        long j = jL >>> 16;
        if (j != i) {
            return false;
        }
        boolean z = (j & 1) == 1;
        int i7 = (int) ((jL >> 12) & 15);
        int i8 = (int) ((jL >> 8) & 15);
        int i9 = (int) ((jL >> 4) & 15);
        int i10 = (int) ((jL >> 1) & 7);
        boolean z2 = (jL & 1) == 1;
        if (i9 > 7 ? !(i9 > 10 || ky2Var.g != 2) : i9 == ky2Var.g - 1) {
            if ((i10 == 0 || i10 == ky2Var.i) && !z2) {
                try {
                    long jQ = os4Var.q();
                    if (!z) {
                        jQ *= (long) ky2Var.b;
                    }
                    dy2Var.a = jQ;
                    switch (i7) {
                        case 1:
                            i2 = PsExtractor.AUDIO_STREAM;
                            break;
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                            i3 = i7 - 2;
                            i4 = 576;
                            i2 = i4 << i3;
                            break;
                        case 6:
                            iK = os4Var.k();
                            i2 = iK + 1;
                            break;
                        case 7:
                            iK = os4Var.p();
                            i2 = iK + 1;
                            break;
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                            i3 = i7 - 8;
                            i4 = 256;
                            i2 = i4 << i3;
                            break;
                        default:
                            i2 = -1;
                            break;
                    }
                    if (i2 != -1 && i2 <= ky2Var.b) {
                        int i11 = ky2Var.e;
                        if (i8 == 0) {
                            iK2 = os4Var.k();
                            int i12 = os4Var.b;
                            bArr = os4Var.a;
                            i5 = i12 - 1;
                            i6 = 0;
                            for (int i13 = os4Var.b; i13 < i5; i13++) {
                                i6 = u56.o[i6 ^ (bArr[i13] & 255)];
                            }
                            int i14 = u56.a;
                            if (iK2 == i6) {
                                return true;
                            }
                        } else if (i8 <= 11) {
                            if (i8 == ky2Var.f) {
                                iK2 = os4Var.k();
                                int i15 = os4Var.b;
                                bArr = os4Var.a;
                                i5 = i15 - 1;
                                i6 = 0;
                                while (i13 < i5) {
                                    i6 = u56.o[i6 ^ (bArr[i13] & 255)];
                                }
                                int i16 = u56.a;
                                if (iK2 == i6) {
                                    return true;
                                }
                            }
                        } else if (i8 == 12) {
                            if (os4Var.k() * 1000 == i11) {
                                iK2 = os4Var.k();
                                int i17 = os4Var.b;
                                bArr = os4Var.a;
                                i5 = i17 - 1;
                                i6 = 0;
                                while (i13 < i5) {
                                    i6 = u56.o[i6 ^ (bArr[i13] & 255)];
                                }
                                int i18 = u56.a;
                                if (iK2 == i6) {
                                    return true;
                                }
                            }
                        } else if (i8 <= 14) {
                            int iP = os4Var.p();
                            if (i8 == 14) {
                                iP *= 10;
                            }
                            if (iP == i11) {
                                iK2 = os4Var.k();
                                int i19 = os4Var.b;
                                bArr = os4Var.a;
                                i5 = i19 - 1;
                                i6 = 0;
                                while (i13 < i5) {
                                    i6 = u56.o[i6 ^ (bArr[i13] & 255)];
                                }
                                int i110 = u56.a;
                                if (iK2 == i6) {
                                    return true;
                                }
                            }
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return false;
    }
}
