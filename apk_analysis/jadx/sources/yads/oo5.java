package yads;

import io.appmetrica.analytics.coreutils.internal.limitation.MapTrimmers;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class oo5 {
    public final int a;
    public final int b;
    public final float c;
    public final float d;
    public final float e;
    public final int f;
    public final int g;
    public final int h;
    public final short[] i;
    public short[] j;
    public int k;
    public short[] l;
    public int m;
    public short[] n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;

    public oo5(int i, int i2, float f, float f2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = f;
        this.d = f2;
        this.e = i / i3;
        this.f = i / 400;
        int i4 = i / 65;
        this.g = i4;
        int i5 = i4 * 2;
        this.h = i5;
        this.i = new short[i5];
        int i6 = i5 * i2;
        this.j = new short[i6];
        this.l = new short[i6];
        this.n = new short[i6];
    }

    /* JADX WARN: Code duplicated, block: B:100:0x025e A[LOOP:4: B:13:0x004c->B:100:0x025e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:110:0x018d A[EDGE_INSN: B:110:0x018d->B:65:0x018d BREAK  A[LOOP:4: B:13:0x004c->B:100:0x025e], SYNTHETIC] */
    public final void a() {
        float f;
        int iA;
        int iMin;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.m;
        float f2 = this.c;
        float f3 = this.d;
        float f4 = f2 / f3;
        float f5 = this.e * f3;
        double d = f4;
        int i7 = 1;
        if (d > 1.00001d || d < 0.99999d) {
            int i8 = this.k;
            if (i8 >= this.h) {
                int i9 = 0;
                while (true) {
                    int i10 = this.r;
                    if (i10 > 0) {
                        iMin = Math.min(this.h, i10);
                        short[] sArr = this.j;
                        short[] sArrB = b(this.l, this.m, iMin);
                        this.l = sArrB;
                        int i11 = this.b;
                        f = 1.0f;
                        System.arraycopy(sArr, i9 * i11, sArrB, this.m * i11, i11 * iMin);
                        this.m += iMin;
                        this.r -= iMin;
                        i = i9;
                    } else {
                        f = 1.0f;
                        short[] sArr2 = this.j;
                        int i12 = this.a;
                        int i13 = i12 > 4000 ? i12 / MapTrimmers.DEFAULT_VALUE_MAX_LENGTH : i7;
                        if (this.b == i7 && i13 == i7) {
                            iA = a(sArr2, i9, this.f, this.g);
                        } else {
                            a(sArr2, i9, i13);
                            int iA2 = a(this.i, 0, this.f / i13, this.g / i13);
                            if (i13 != i7) {
                                int i14 = iA2 * i13;
                                int i15 = i13 * 4;
                                int i16 = i14 - i15;
                                int i17 = i14 + i15;
                                int i18 = this.f;
                                if (i16 < i18) {
                                    i16 = i18;
                                }
                                int i19 = this.g;
                                if (i17 > i19) {
                                    i17 = i19;
                                }
                                if (this.b == i7) {
                                    iA = a(sArr2, i9, i16, i17);
                                } else {
                                    a(sArr2, i9, i7);
                                    iA = a(this.i, 0, i16, i17);
                                }
                            } else {
                                iA = iA2;
                            }
                        }
                        int i20 = this.u;
                        int i21 = (i20 == 0 || (i3 = this.s) == 0 || this.v > i20 * 3 || i20 * 2 <= this.t * 3) ? iA : i3;
                        this.t = i20;
                        this.s = iA;
                        short[] sArr3 = this.j;
                        if (d > 1.0d) {
                            if (f4 >= 2.0f) {
                                i2 = (int) (i21 / (f4 - 1.0f));
                            } else {
                                this.r = (int) (((2.0f - f4) * i21) / (f4 - 1.0f));
                                i2 = i21;
                            }
                            short[] sArrB2 = b(this.l, this.m, i2);
                            this.l = sArrB2;
                            int i22 = i21;
                            int i23 = i9;
                            a(i2, this.b, sArrB2, this.m, sArr3, i23, sArr3, i9 + i22);
                            this.m += i2;
                            i7 = i7;
                            i9 = i22 + i2 + i23;
                        } else {
                            int i24 = i9;
                            int i25 = i21;
                            if (f4 < 0.5f) {
                                iMin = (int) ((i25 * f4) / (1.0f - f4));
                            } else {
                                this.r = (int) ((((2.0f * f4) - 1.0f) * i25) / (1.0f - f4));
                                iMin = i25;
                            }
                            int i26 = i25 + iMin;
                            short[] sArrB3 = b(this.l, this.m, i26);
                            this.l = sArrB3;
                            int i27 = this.b;
                            System.arraycopy(sArr3, i24 * i27, sArrB3, this.m * i27, i27 * i25);
                            a(iMin, this.b, this.l, this.m + i25, sArr3, i24 + i25, sArr3, i24);
                            i = i24;
                            this.m += i26;
                        }
                        if (this.h + i9 > i8) {
                            break;
                        } else {
                            i7 = i7;
                        }
                    }
                    i9 = i + iMin;
                    if (this.h + i9 > i8) {
                        break;
                        break;
                    }
                    i7 = i7;
                }
                int i28 = this.k - i9;
                short[] sArr4 = this.j;
                int i29 = this.b;
                System.arraycopy(sArr4, i9 * i29, sArr4, 0, i29 * i28);
                this.k = i28;
            }
            if (f5 != f || this.m == i6) {
            }
            int i30 = this.a;
            int i31 = (int) (i30 / f5);
            while (true) {
                if (i31 <= 16384 && i30 <= 16384) {
                    break;
                }
                i31 /= 2;
                i30 /= 2;
            }
            int i32 = this.m - i6;
            short[] sArrB4 = b(this.n, this.o, i32);
            this.n = sArrB4;
            short[] sArr5 = this.l;
            int i33 = this.b;
            System.arraycopy(sArr5, i6 * i33, sArrB4, this.o * i33, i33 * i32);
            this.m = i6;
            this.o += i32;
            int i34 = 0;
            while (true) {
                int i35 = this.o;
                int i36 = i35 - 1;
                if (i34 >= i36) {
                    if (i36 == 0) {
                        return;
                    }
                    short[] sArr6 = this.n;
                    int i37 = this.b;
                    System.arraycopy(sArr6, i36 * i37, sArr6, 0, (i35 - i36) * i37);
                    this.o -= i36;
                    return;
                }
                while (true) {
                    i4 = this.p + 1;
                    int i38 = i4 * i31;
                    i5 = this.q;
                    if (i38 <= i5 * i30) {
                        break;
                    }
                    this.l = b(this.l, this.m, i7);
                    int i39 = 0;
                    while (true) {
                        int i40 = this.b;
                        if (i39 < i40) {
                            short[] sArr7 = this.l;
                            int i41 = (this.m * i40) + i39;
                            short[] sArr8 = this.n;
                            int i42 = (i34 * i40) + i39;
                            short s = sArr8[i42];
                            short s2 = sArr8[i42 + i40];
                            int i43 = this.q * i30;
                            int i44 = this.p;
                            int i45 = i44 * i31;
                            int i46 = (i44 + 1) * i31;
                            int i47 = i46 - i43;
                            int i48 = i46 - i45;
                            sArr7[i41] = (short) ((((i48 - i47) * s2) + (s * i47)) / i48);
                            i39++;
                        }
                    }
                    i7 = 1;
                    this.q++;
                    this.m++;
                }
                this.p = i4;
                if (i4 == i30) {
                    this.p = 0;
                    if (i5 != i31) {
                        defpackage.ud.g();
                        return;
                    }
                    this.q = 0;
                }
                i34++;
            }
        } else {
            short[] sArr9 = this.j;
            int i49 = this.k;
            short[] sArrB5 = b(this.l, i6, i49);
            this.l = sArrB5;
            int i50 = this.b;
            System.arraycopy(sArr9, 0, sArrB5, this.m * i50, i50 * i49);
            this.m += i49;
            this.k = 0;
        }
        i7 = 1;
        f = 1.0f;
        if (f5 != f) {
        }
    }

    public final short[] b(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.b;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    public final int a(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.b;
        int i5 = 255;
        int i6 = 1;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int iAbs = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                iAbs += Math.abs(sArr[i4 + i9] - sArr[(i4 + i2) + i9]);
            }
            if (iAbs * i7 < i6 * i2) {
                i7 = i2;
                i6 = iAbs;
            }
            if (iAbs * i5 > i8 * i2) {
                i5 = i2;
                i8 = iAbs;
            }
            i2++;
        }
        this.u = i6 / i7;
        this.v = i8 / i5;
        return i7;
    }

    public final void a(short[] sArr, int i, int i2) {
        int i3 = this.h / i2;
        int i4 = this.b;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[defpackage.ti0.b(i7, i5, i6, i9)];
            }
            this.i[i7] = (short) (i8 / i5);
        }
    }

    public static void a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr3[i8] * i10) + ((i - i10) * sArr2[i9])) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }
}
