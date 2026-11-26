package yads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public abstract class qd4 {
    public static final byte[] a = {0, 0, 0, 1};
    public static final float[] b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    public static final Object c = new Object();
    public static int[] d = new int[10];

    public static nd4 a(byte[] bArr, int i, int i2) {
        int i3 = 2;
        ps4 ps4Var = new ps4(bArr, i + 2, i2);
        int i4 = 4;
        ps4Var.d(4);
        int iB = ps4Var.b(3);
        ps4Var.f();
        int iB2 = ps4Var.b(2);
        boolean zC = ps4Var.c();
        int iB3 = ps4Var.b(5);
        int i5 = 0;
        for (int i6 = 0; i6 < 32; i6++) {
            if (ps4Var.c()) {
                i5 |= 1 << i6;
            }
        }
        int i7 = 6;
        int[] iArr = new int[6];
        for (int i8 = 0; i8 < 6; i8++) {
            iArr[i8] = ps4Var.b(8);
        }
        int i9 = i5;
        int iB4 = ps4Var.b(8);
        int i10 = 0;
        for (int i11 = 0; i11 < iB; i11++) {
            if (ps4Var.c()) {
                i10 += 89;
            }
            if (ps4Var.c()) {
                i10 += 8;
            }
        }
        ps4Var.d(i10);
        if (iB > 0) {
            ps4Var.d((8 - iB) * 2);
        }
        ps4Var.d();
        int iD = ps4Var.d();
        if (iD == 3) {
            ps4Var.f();
        }
        int iD2 = ps4Var.d();
        int iD3 = ps4Var.d();
        if (ps4Var.c()) {
            int iD4 = ps4Var.d();
            int iD5 = ps4Var.d();
            int iD6 = ps4Var.d();
            int iD7 = ps4Var.d();
            iD2 -= (iD4 + iD5) * ((iD == 1 || iD == 2) ? 2 : 1);
            iD3 -= (iD6 + iD7) * (iD == 1 ? 2 : 1);
        }
        ps4Var.d();
        ps4Var.d();
        int iD8 = ps4Var.d();
        for (int i12 = ps4Var.c() ? 0 : iB; i12 <= iB; i12++) {
            ps4Var.d();
            ps4Var.d();
            ps4Var.d();
        }
        ps4Var.d();
        ps4Var.d();
        ps4Var.d();
        ps4Var.d();
        ps4Var.d();
        ps4Var.d();
        if (ps4Var.c() && ps4Var.c()) {
            int i13 = 0;
            while (i13 < i4) {
                int i14 = 0;
                while (i14 < i7) {
                    if (ps4Var.c()) {
                        int iMin = Math.min(64, 1 << ((i13 << 1) + 4));
                        if (i13 > 1) {
                            ps4Var.e();
                        }
                        for (int i15 = 0; i15 < iMin; i15++) {
                            ps4Var.e();
                        }
                    } else {
                        ps4Var.d();
                    }
                    i14 += i13 == 3 ? 3 : 1;
                    i7 = 6;
                }
                i13++;
                i4 = 4;
                i7 = 6;
            }
        }
        ps4Var.d(2);
        if (ps4Var.c()) {
            ps4Var.d(8);
            ps4Var.d();
            ps4Var.d();
            ps4Var.f();
        }
        int iD9 = ps4Var.d();
        int[] iArrCopyOf = new int[0];
        int[] iArrCopyOf2 = new int[0];
        int i16 = -1;
        int i17 = 0;
        int i18 = -1;
        while (i17 < iD9) {
            if (i17 == 0 || !ps4Var.c()) {
                int iD10 = ps4Var.d();
                int iD11 = ps4Var.d();
                int[] iArr2 = new int[iD10];
                for (int i19 = 0; i19 < iD10; i19++) {
                    iArr2[i19] = ps4Var.d() + 1;
                    ps4Var.f();
                }
                int[] iArr3 = new int[iD11];
                for (int i20 = 0; i20 < iD11; i20++) {
                    iArr3[i20] = ps4Var.d() + 1;
                    ps4Var.f();
                }
                i16 = iD10;
                iArrCopyOf2 = iArr3;
                iArrCopyOf = iArr2;
                i18 = iD11;
            } else {
                int i21 = i16 + i18;
                int iD12 = (1 - ((ps4Var.c() ? 1 : 0) * 2)) * (ps4Var.d() + 1);
                int i22 = i21 + 1;
                int[] iArr4 = iArrCopyOf;
                boolean[] zArr = new boolean[i22];
                for (int i23 = 0; i23 <= i21; i23++) {
                    if (ps4Var.c()) {
                        zArr[i23] = true;
                    } else {
                        zArr[i23] = ps4Var.c();
                    }
                }
                int[] iArr5 = new int[i22];
                int[] iArr6 = new int[i22];
                int i24 = 0;
                for (int i25 = i18 - 1; i25 >= 0; i25--) {
                    int i26 = iArrCopyOf2[i25] + iD12;
                    if (i26 < 0 && zArr[i16 + i25]) {
                        iArr5[i24] = i26;
                        i24++;
                    }
                }
                if (iD12 < 0 && zArr[i21]) {
                    iArr5[i24] = iD12;
                    i24++;
                }
                int i27 = i24;
                for (int i28 = 0; i28 < i16; i28++) {
                    int i29 = iArr4[i28] + iD12;
                    if (i29 < 0 && zArr[i28]) {
                        iArr5[i27] = i29;
                        i27++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr5, i27);
                int i30 = 0;
                for (int i31 = i16 - 1; i31 >= 0; i31--) {
                    int i32 = iArr4[i31] + iD12;
                    if (i32 > 0 && zArr[i31]) {
                        iArr6[i30] = i32;
                        i30++;
                    }
                }
                if (iD12 > 0 && zArr[i21]) {
                    iArr6[i30] = iD12;
                    i30++;
                }
                int i33 = i27;
                int i34 = i30;
                for (int i35 = 0; i35 < i18; i35++) {
                    int i36 = iArrCopyOf2[i35] + iD12;
                    if (i36 > 0 && zArr[i16 + i35]) {
                        iArr6[i34] = i36;
                        i34++;
                    }
                }
                iArrCopyOf2 = Arrays.copyOf(iArr6, i34);
                i18 = i34;
                i16 = i33;
            }
            i17++;
            i3 = i3;
            iD9 = iD9;
            iD8 = iD8;
        }
        int i37 = i3;
        int i38 = iD8;
        if (ps4Var.c()) {
            for (int i39 = 0; i39 < ps4Var.d(); i39++) {
                ps4Var.d(i38 + 5);
            }
        }
        ps4Var.d(i37);
        float f = 1.0f;
        if (ps4Var.c()) {
            if (ps4Var.c()) {
                int iB5 = ps4Var.b(8);
                if (iB5 == 255) {
                    int iB6 = ps4Var.b(16);
                    int iB7 = ps4Var.b(16);
                    if (iB6 != 0 && iB7 != 0) {
                        f = iB6 / iB7;
                    }
                } else {
                    float[] fArr = b;
                    if (iB5 < 17) {
                        f = fArr[iB5];
                    } else {
                        qt3.a(iB5, "Unexpected aspect_ratio_idc value: ", "NalUnitUtil");
                    }
                }
            }
            if (ps4Var.c()) {
                ps4Var.f();
            }
            if (ps4Var.c()) {
                ps4Var.d(4);
                if (ps4Var.c()) {
                    ps4Var.d(24);
                }
            }
            if (ps4Var.c()) {
                ps4Var.d();
                ps4Var.d();
            }
            ps4Var.f();
            if (ps4Var.c()) {
                iD3 *= 2;
            }
        }
        return new nd4(iB2, zC, iB3, i9, iArr, iB4, iD2, iD3, f);
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:66:0x010c  */
    /* JADX WARN: Code duplicated, block: B:69:0x011f  */
    /* JADX WARN: Code duplicated, block: B:71:0x0123  */
    /* JADX WARN: Code duplicated, block: B:72:0x0125  */
    /* JADX WARN: Code duplicated, block: B:74:0x0129  */
    /* JADX WARN: Code duplicated, block: B:91:0x0171  */
    public static pd4 b(byte[] bArr, int i, int i2) {
        int iD;
        boolean zC;
        int i3;
        int iD2;
        boolean z;
        boolean zC2;
        int i4;
        int i5;
        int i6;
        float f;
        int i7;
        int i8 = 1;
        ps4 ps4Var = new ps4(bArr, i + 1, i2);
        int i9 = 8;
        int iB = ps4Var.b(8);
        int iB2 = ps4Var.b(8);
        int iB3 = ps4Var.b(8);
        int iD3 = ps4Var.d();
        if (iB == 100 || iB == 110 || iB == 122 || iB == 244 || iB == 44 || iB == 83 || iB == 86 || iB == 118 || iB == 128 || iB == 138) {
            iD = ps4Var.d();
            zC = iD == 3 ? ps4Var.c() : false;
            ps4Var.d();
            ps4Var.d();
            ps4Var.f();
            if (ps4Var.c()) {
                int i10 = iD != 3 ? 8 : 12;
                int i11 = 0;
                while (i11 < i10) {
                    if (ps4Var.c()) {
                        int i12 = i11 < 6 ? 16 : 64;
                        int iE = 8;
                        int i13 = 8;
                        for (int i14 = 0; i14 < i12; i14++) {
                            if (iE != 0) {
                                iE = ((ps4Var.e() + i13) + 256) % 256;
                            }
                            if (iE != 0) {
                                i13 = iE;
                            }
                        }
                    }
                    i11++;
                }
            }
        } else {
            iD = 1;
            zC = false;
        }
        int iD4 = ps4Var.d() + 4;
        int iD5 = ps4Var.d();
        if (iD5 != 0) {
            if (iD5 == 1) {
                boolean zC3 = ps4Var.c();
                ps4Var.e();
                ps4Var.e();
                i3 = 16;
                long jD = ps4Var.d();
                ps4Var = ps4Var;
                for (int i15 = 0; i15 < jD; i15++) {
                    ps4Var.d();
                }
                z = zC3;
                i9 = 8;
                iD2 = 0;
            } else {
                i3 = 16;
                iD2 = 0;
            }
            ps4Var.d();
            ps4Var.f();
            int iD6 = ps4Var.d() + 1;
            int iD7 = ps4Var.d() + 1;
            zC2 = ps4Var.c();
            i4 = 2 - (zC2 ? 1 : 0);
            int i16 = iD7 * i4;
            if (!zC2) {
                ps4Var.f();
            }
            ps4Var.f();
            i5 = iD6 * 16;
            i6 = i16 * 16;
            if (ps4Var.c()) {
                int iD8 = ps4Var.d();
                int iD9 = ps4Var.d();
                int iD10 = ps4Var.d();
                int iD11 = ps4Var.d();
                if (iD != 0) {
                    if (iD == 3) {
                        i7 = 1;
                    } else {
                        i7 = 2;
                    }
                    i4 *= iD == 1 ? 2 : 1;
                    i8 = i7;
                }
                i5 -= (iD8 + iD9) * i8;
                i6 -= (iD10 + iD11) * i4;
            }
            int i17 = i5;
            if (ps4Var.c() || !ps4Var.c()) {
                f = 1.0f;
            } else {
                int iB4 = ps4Var.b(i9);
                if (iB4 == 255) {
                    int i18 = i3;
                    int iB5 = ps4Var.b(i18);
                    int iB6 = ps4Var.b(i18);
                    if (iB5 == 0 || iB6 == 0) {
                        f = 1.0f;
                    } else {
                        f = iB5 / iB6;
                    }
                } else {
                    float[] fArr = b;
                    if (iB4 < 17) {
                        f = fArr[iB4];
                    } else {
                        qt3.a(iB4, "Unexpected aspect_ratio_idc value: ", "NalUnitUtil");
                        f = 1.0f;
                    }
                }
            }
            return new pd4(iB, iB2, iB3, iD3, i17, i6, f, zC, zC2, iD4, iD5, iD2, z);
        }
        iD2 = ps4Var.d() + 4;
        i3 = 16;
        z = false;
        ps4Var.d();
        ps4Var.f();
        int iD12 = ps4Var.d() + 1;
        int iD13 = ps4Var.d() + 1;
        zC2 = ps4Var.c();
        i4 = 2 - (zC2 ? 1 : 0);
        int i19 = iD13 * i4;
        if (!zC2) {
            ps4Var.f();
        }
        ps4Var.f();
        i5 = iD12 * 16;
        i6 = i19 * 16;
        if (ps4Var.c()) {
            int iD14 = ps4Var.d();
            int iD15 = ps4Var.d();
            int iD16 = ps4Var.d();
            int iD17 = ps4Var.d();
            if (iD != 0) {
                if (iD == 3) {
                    i7 = 1;
                } else {
                    i7 = 2;
                }
                i4 *= iD == 1 ? 2 : 1;
                i8 = i7;
            }
            i5 -= (iD14 + iD15) * i8;
            i6 -= (iD16 + iD17) * i4;
        }
        int i110 = i5;
        if (ps4Var.c()) {
            f = 1.0f;
        } else {
            f = 1.0f;
        }
        return new pd4(iB, iB2, iB3, iD3, i110, i6, f, zC, zC2, iD4, iD5, iD2, z);
    }

    public static int a(byte[] bArr, int i) {
        int i2;
        synchronized (c) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                while (true) {
                    if (i3 >= i - 2) {
                        i3 = i;
                        break;
                    }
                    try {
                        if (bArr[i3] == 0 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 3) {
                            break;
                        }
                        i3++;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i3 < i) {
                    int[] iArrCopyOf = d;
                    if (iArrCopyOf.length <= i4) {
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, iArrCopyOf.length * 2);
                        d = iArrCopyOf;
                    }
                    iArrCopyOf[i4] = i3;
                    i3 += 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                int i8 = d[i7] - i6;
                System.arraycopy(bArr, i6, bArr, i5, i8);
                int i9 = i5 + i8;
                int i10 = i9 + 1;
                bArr[i9] = 0;
                i5 = i9 + 2;
                bArr[i10] = 0;
                i6 += i8 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i5, i2 - i5);
        }
        return i2;
    }

    public static int a(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        if (i3 < 0) {
            defpackage.ud.g();
            return 0;
        }
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            a(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            a(zArr);
            return i - 2;
        }
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            a(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            byte b2 = bArr[i5];
            if ((b2 & 254) == 0) {
                int i6 = i5 - 2;
                if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b2 == 1) {
                    a(zArr);
                    return i6;
                }
                i5 -= 2;
            }
            i5 += 3;
        }
        zArr[0] = i3 <= 2 ? !(i3 != 2 ? !(zArr[1] && bArr[i4] == 1) : !(zArr[2] && bArr[i2 + (-2)] == 0 && bArr[i4] == 1)) : bArr[i2 + (-3)] == 0 && bArr[i2 + (-2)] == 0 && bArr[i4] == 1;
        zArr[1] = i3 <= 1 ? zArr[2] && bArr[i4] == 0 : bArr[i2 + (-2)] == 0 && bArr[i4] == 0;
        zArr[2] = bArr[i4] == 0;
        return i2;
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }
}
