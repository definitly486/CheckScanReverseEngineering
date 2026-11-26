package yads;

import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.mp4.Sniffer;

/* JADX INFO: loaded from: classes6.dex */
public abstract class fo5 {
    public static final int[] a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Mp4Box.TYPE_avc1, Mp4Box.TYPE_hvc1, Mp4Box.TYPE_hev1, Mp4Box.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, Sniffer.BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(xs2 xs2Var, boolean z, boolean z2) {
        boolean z3;
        int i;
        long jA = xs2Var.a();
        long j = -1;
        int i2 = (jA > (-1L) ? 1 : (jA == (-1L) ? 0 : -1));
        long j2 = 4096;
        if (i2 != 0 && jA <= 4096) {
            j2 = jA;
        }
        int i3 = (int) j2;
        os4 os4Var = new os4(64);
        int i4 = 0;
        int i5 = 0;
        boolean z4 = false;
        while (true) {
            if (i5 < i3) {
                os4Var.c(8);
                if (xs2Var.b(os4Var.a, i4, 8, true)) {
                    long jL = os4Var.l();
                    int iA = os4Var.a();
                    if (jL == 1) {
                        xs2Var.a(os4Var.a, 8, 8);
                        os4Var.d(16);
                        i = 16;
                        jL = os4Var.g();
                    } else {
                        if (jL == 0) {
                            long jA2 = xs2Var.a();
                            if (jA2 != j) {
                                jL = (jA2 - xs2Var.e()) + 8;
                            }
                        }
                        i = 8;
                    }
                    long j3 = i;
                    if (jL < j3) {
                        return i4;
                    }
                    int i6 = i5 + i;
                    boolean z5 = i4;
                    if (iA == 1836019574) {
                        i3 += (int) jL;
                        if (i2 != 0 && i3 > jA) {
                            i3 = (int) jA;
                        }
                        i5 = i6;
                        i4 = z5 ? 1 : 0;
                        j = -1;
                    } else {
                        if (iA == 1836019558 || iA == 1836475768) {
                            z3 = true;
                            return z4 && z == z3;
                        }
                        int i7 = i2;
                        if ((((long) i6) + jL) - j3 < i3) {
                            int i8 = (int) (jL - j3);
                            i5 = i6 + i8;
                            if (iA == 1718909296) {
                                if (i8 < 8) {
                                    return z5;
                                }
                                os4Var.c(i8);
                                xs2Var.a(os4Var.a, z5 ? 1 : 0, i8);
                                int i9 = i8 / 4;
                                for (int i10 = 0; i10 < i9; i10++) {
                                    if (i10 != 1) {
                                        int iA2 = os4Var.a();
                                        if ((iA2 >>> 8) != 3368816 && (iA2 != 1751476579 || !z2)) {
                                            int[] iArr = a;
                                            int i11 = 0;
                                            while (true) {
                                                if (i11 >= 29) {
                                                    continue;
                                                } else if (iArr[i11] != iA2) {
                                                    i11++;
                                                }
                                            }
                                        }
                                        z4 = true;
                                        break;
                                    }
                                    os4Var.e(os4Var.b + 4);
                                }
                                if (!z4) {
                                    return false;
                                }
                            } else if (i8 != 0) {
                                xs2Var.b(i8);
                            }
                            i2 = i7;
                            j = -1;
                            i4 = 0;
                        }
                    }
                }
            }
            z3 = false;
            if (z4) {
                return false;
            }
        }
    }
}
