package defpackage;

import java.io.EOFException;

/* JADX INFO: loaded from: classes5.dex */
public final class b {
    public static final byte[] a;
    public static final long[] b;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(ha1.b);
        bytes.getClass();
        a = bytes;
        b = new long[]{-1, 9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, 9999999999L, 99999999999L, 999999999999L, 9999999999999L, 99999999999999L, 999999999999999L, 9999999999999999L, 99999999999999999L, 999999999999999999L, Long.MAX_VALUE};
    }

    public static final long a(bu0 bu0Var, gx0 gx0Var, long j, long j2, int i) {
        gl7 gl7Var;
        long j3 = j;
        long j4 = j2;
        gx0Var.getClass();
        long j5 = i;
        h.b(gx0Var.f(), 0L, j5);
        if (i <= 0) {
            fg.c("byteCount == 0");
            return 0L;
        }
        if (j3 < 0) {
            c9.f(r01.c(j3, "fromIndex < 0: "));
            return 0L;
        }
        if (j3 > j4) {
            StringBuilder sbF = xp.f(j3, "fromIndex > toIndex: ", " > ");
            sbF.append(j4);
            throw new IllegalArgumentException(sbF.toString().toString());
        }
        long j6 = bu0Var.c;
        if (j4 > j6) {
            j4 = j6;
        }
        if (j3 == j4 || (gl7Var = bu0Var.b) == null) {
            return -1L;
        }
        long j7 = 0;
        if (j6 - j3 < j3) {
            while (j6 > j3) {
                gl7Var = gl7Var.g;
                gl7Var.getClass();
                j6 -= (long) (gl7Var.c - gl7Var.b);
            }
            byte[] bArrK = gx0Var.k();
            byte b2 = bArrK[0];
            long jMin = Math.min(j4, (bu0Var.c - j5) + 1);
            while (j6 < jMin) {
                byte[] bArr = gl7Var.a;
                int iMin = (int) Math.min(gl7Var.c, (((long) gl7Var.b) + jMin) - j6);
                for (int i2 = (int) ((((long) gl7Var.b) + j3) - j6); i2 < iMin; i2++) {
                    if (bArr[i2] == b2 && b(gl7Var, i2 + 1, bArrK, 1, i)) {
                        return ((long) (i2 - gl7Var.b)) + j6;
                    }
                }
                j6 += (long) (gl7Var.c - gl7Var.b);
                gl7Var = gl7Var.f;
                gl7Var.getClass();
                j3 = j6;
            }
            return -1L;
        }
        while (true) {
            long j8 = j7 + ((long) (gl7Var.c - gl7Var.b));
            if (j8 > j3) {
                break;
            }
            gl7Var = gl7Var.f;
            gl7Var.getClass();
            j7 = j8;
        }
        byte[] bArrK2 = gx0Var.k();
        byte b3 = bArrK2[0];
        long jMin2 = Math.min(j4, (bu0Var.c - j5) + 1);
        while (j7 < jMin2) {
            byte[] bArr2 = gl7Var.a;
            int iMin2 = (int) Math.min(gl7Var.c, (((long) gl7Var.b) + jMin2) - j7);
            for (int i3 = (int) ((((long) gl7Var.b) + j3) - j7); i3 < iMin2; i3++) {
                if (bArr2[i3] == b3 && b(gl7Var, i3 + 1, bArrK2, 1, i)) {
                    return ((long) (i3 - gl7Var.b)) + j7;
                }
            }
            j7 += (long) (gl7Var.c - gl7Var.b);
            gl7Var = gl7Var.f;
            gl7Var.getClass();
            j3 = j7;
        }
        return -1L;
    }

    public static final boolean b(gl7 gl7Var, int i, byte[] bArr, int i2, int i3) {
        int i4 = gl7Var.c;
        byte[] bArr2 = gl7Var.a;
        while (i2 < i3) {
            if (i == i4) {
                gl7Var = gl7Var.f;
                gl7Var.getClass();
                byte[] bArr3 = gl7Var.a;
                bArr2 = bArr3;
                i = gl7Var.b;
                i4 = gl7Var.c;
            }
            if (bArr2[i] != bArr[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static final String c(bu0 bu0Var, long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (bu0Var.Q(j2) == 13) {
                String strN0 = bu0Var.n0(j2, ha1.b);
                bu0Var.skip(2L);
                return strN0;
            }
        }
        String strN1 = bu0Var.n0(j, ha1.b);
        bu0Var.skip(1L);
        return strN1;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00a1 A[LOOP:0: B:8:0x001c->B:49:0x00a1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x00a0 A[SYNTHETIC] */
    public static final int d(bu0 bu0Var, yz5 yz5Var, boolean z) {
        int i;
        int i2;
        int i3;
        gl7 gl7Var;
        int i4;
        yz5Var.getClass();
        gl7 gl7Var2 = bu0Var.b;
        if (gl7Var2 == null) {
            return z ? -2 : -1;
        }
        byte[] bArr = gl7Var2.a;
        int i5 = gl7Var2.b;
        int i6 = gl7Var2.c;
        int[] iArr = yz5Var.d;
        gl7 gl7Var3 = gl7Var2;
        int i7 = -1;
        int i8 = 0;
        loop0: while (true) {
            int i9 = i8 + 1;
            int i10 = iArr[i8];
            int i11 = i8 + 2;
            int i12 = iArr[i9];
            if (i12 != -1) {
                i7 = i12;
            }
            if (gl7Var3 == null) {
                break;
            }
            if (i10 >= 0) {
                int i13 = i5 + 1;
                int i14 = bArr[i5] & 255;
                int i15 = i11 + i10;
                while (i11 != i15) {
                    if (i14 == iArr[i11]) {
                        i = iArr[i11 + i10];
                        if (i13 == i6) {
                            gl7Var3 = gl7Var3.f;
                            gl7Var3.getClass();
                            int i16 = gl7Var3.b;
                            byte[] bArr2 = gl7Var3.a;
                            i2 = gl7Var3.c;
                            if (gl7Var3 == gl7Var2) {
                                i3 = i16;
                                bArr = bArr2;
                                gl7Var3 = null;
                            } else {
                                i3 = i16;
                                bArr = bArr2;
                            }
                        } else {
                            i2 = i6;
                            i3 = i13;
                        }
                        if (i >= 0) {
                            return i;
                        }
                        int i17 = i2;
                        i8 = -i;
                        i5 = i3;
                        i6 = i17;
                    } else {
                        i11++;
                    }
                }
                return i7;
            }
            int i18 = (i10 * (-1)) + i11;
            while (true) {
                int i19 = i5 + 1;
                int i20 = i11 + 1;
                if ((bArr[i5] & 255) == iArr[i11]) {
                    boolean z2 = i20 == i18;
                    if (i19 == i6) {
                        gl7Var3.getClass();
                        gl7 gl7Var4 = gl7Var3.f;
                        gl7Var4.getClass();
                        i3 = gl7Var4.b;
                        byte[] bArr3 = gl7Var4.a;
                        i4 = gl7Var4.c;
                        if (gl7Var4 != gl7Var2) {
                            gl7Var = gl7Var4;
                            bArr = bArr3;
                        } else {
                            if (!z2) {
                                break loop0;
                            }
                            bArr = bArr3;
                            gl7Var = null;
                        }
                    } else {
                        gl7Var = gl7Var3;
                        i4 = i6;
                        i3 = i19;
                    }
                    if (z2) {
                        i = iArr[i20];
                        int i21 = i4;
                        gl7Var3 = gl7Var;
                        i2 = i21;
                        break;
                    }
                    i5 = i3;
                    i6 = i4;
                    gl7Var3 = gl7Var;
                    i11 = i20;
                }
                return i7;
            }
            if (i >= 0) {
                return i;
            }
            int i110 = i2;
            i8 = -i;
            i5 = i3;
            i6 = i110;
        }
        if (z) {
            return -2;
        }
        return i7;
    }
}
