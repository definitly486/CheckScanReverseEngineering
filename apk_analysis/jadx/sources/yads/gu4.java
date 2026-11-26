package yads;

import android.graphics.Bitmap;
import androidx.work.WorkInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes6.dex */
public final class gu4 extends xk5 {
    public final os4 m = new os4();
    public final os4 n = new os4();
    public final fu4 o = new fu4();
    public Inflater p;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:21:0x007c  */
    @Override // yads.xk5
    public final mt5 a(byte[] bArr, int i, boolean z) {
        char c;
        sb0 sb0Var;
        int i2;
        os4 os4Var;
        int i3;
        int iK;
        int i4;
        int i5;
        int iM;
        os4 os4Var2 = this.m;
        os4Var2.a = bArr;
        os4Var2.c = i;
        int i6 = 0;
        os4Var2.b = 0;
        char c2 = 255;
        if (i > 0 && (bArr[0] & 255) == 120) {
            Inflater inflater = this.p;
            if (inflater == null) {
                inflater = new Inflater();
                this.p = inflater;
            }
            if (u56.a(os4Var2, this.n, inflater)) {
                os4 os4Var3 = this.n;
                byte[] bArr2 = os4Var3.a;
                int i7 = os4Var3.c;
                os4Var2.a = bArr2;
                os4Var2.c = i7;
                os4Var2.b = 0;
            }
        }
        fu4 fu4Var = this.o;
        fu4Var.d = 0;
        fu4Var.e = 0;
        fu4Var.f = 0;
        fu4Var.g = 0;
        fu4Var.h = 0;
        fu4Var.i = 0;
        fu4Var.a.c(0);
        fu4Var.c = false;
        ArrayList arrayList = new ArrayList();
        while (true) {
            os4 os4Var4 = this.m;
            int i8 = os4Var4.c;
            if (i8 - os4Var4.b < 3) {
                return new hu4(Collections.unmodifiableList(arrayList));
            }
            fu4 fu4Var2 = this.o;
            int iK2 = os4Var4.k();
            int iP = os4Var4.p();
            int i9 = os4Var4.b + iP;
            if (i9 > i8) {
                os4Var4.e(i8);
                i2 = i6;
                c = c2;
                sb0Var = null;
            } else {
                int i10 = 128;
                if (iK2 != 128) {
                    switch (iK2) {
                        case 20:
                            fu4Var2.getClass();
                            if (iP % 5 == 2) {
                                os4Var4.e(os4Var4.b + 2);
                                Arrays.fill(fu4Var2.b, i6);
                                int i11 = iP / 5;
                                int i12 = i6;
                                while (i12 < i11) {
                                    int iK3 = os4Var4.k();
                                    int iK4 = os4Var4.k();
                                    int iK5 = os4Var4.k();
                                    int iK6 = os4Var4.k();
                                    int iK7 = os4Var4.k();
                                    double d = iK4;
                                    double d2 = iK5 - i10;
                                    int i13 = i10;
                                    int i14 = (int) ((1.402d * d2) + d);
                                    double d3 = iK6 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                                    int i15 = (int) ((d - (0.34414d * d3)) - (d2 * 0.71414d));
                                    int i16 = (int) ((d3 * 1.772d) + d);
                                    fu4Var2 = fu4Var2;
                                    int[] iArr = fu4Var2.b;
                                    int i17 = u56.a;
                                    iArr[iK3] = (Math.max(0, Math.min(i14, 255)) << 16) | (iK7 << 24) | (Math.max(0, Math.min(i15, 255)) << 8) | Math.max(0, Math.min(i16, 255));
                                    i12++;
                                    c2 = 255;
                                    i10 = i13;
                                }
                                c = c2;
                                fu4Var2.c = true;
                            } else {
                                c = c2;
                            }
                            break;
                        case 21:
                            fu4Var2.getClass();
                            if (iP >= 4) {
                                os4Var4.e(os4Var4.b + 3);
                                int i18 = iP - 4;
                                if (((128 & os4Var4.k()) != 0 ? 1 : i6) == 0) {
                                    os4 os4Var5 = fu4Var2.a;
                                    i4 = os4Var5.b;
                                    i5 = os4Var5.c;
                                    if (i4 < i5 && i18 > 0) {
                                        int iMin = Math.min(i18, i5 - i4);
                                        os4Var4.a(fu4Var2.a.a, i4, iMin);
                                        fu4Var2.a.e(i4 + iMin);
                                    }
                                } else if (i18 >= 7 && (iM = os4Var4.m()) >= 4) {
                                    fu4Var2.h = os4Var4.p();
                                    fu4Var2.i = os4Var4.p();
                                    fu4Var2.a.c(iM - 4);
                                    i18 = iP - 11;
                                    os4 os4Var6 = fu4Var2.a;
                                    i4 = os4Var6.b;
                                    i5 = os4Var6.c;
                                    if (i4 < i5) {
                                        int iMin2 = Math.min(i18, i5 - i4);
                                        os4Var4.a(fu4Var2.a.a, i4, iMin2);
                                        fu4Var2.a.e(i4 + iMin2);
                                    }
                                }
                            }
                            c = c2;
                            break;
                        case 22:
                            fu4Var2.getClass();
                            if (iP >= 19) {
                                fu4Var2.d = os4Var4.p();
                                fu4Var2.e = os4Var4.p();
                                os4Var4.e(os4Var4.b + 11);
                                fu4Var2.f = os4Var4.p();
                                fu4Var2.g = os4Var4.p();
                            }
                            c = c2;
                            break;
                        default:
                            c = c2;
                            break;
                    }
                    sb0Var = null;
                    i2 = 0;
                } else {
                    c = c2;
                    if (fu4Var2.d == 0 || fu4Var2.e == 0 || fu4Var2.h == 0 || fu4Var2.i == 0 || (i3 = (os4Var = fu4Var2.a).c) == 0 || os4Var.b != i3 || !fu4Var2.c) {
                        sb0Var = null;
                    } else {
                        os4Var.e(0);
                        int i19 = fu4Var2.h * fu4Var2.i;
                        int[] iArr2 = new int[i19];
                        int i20 = 0;
                        while (i20 < i19) {
                            int iK8 = fu4Var2.a.k();
                            if (iK8 != 0) {
                                iK = i20 + 1;
                                iArr2[i20] = fu4Var2.b[iK8];
                            } else {
                                int iK9 = fu4Var2.a.k();
                                if (iK9 != 0) {
                                    iK = ((iK9 & 64) == 0 ? iK9 & 63 : ((iK9 & 63) << 8) | fu4Var2.a.k()) + i20;
                                    Arrays.fill(iArr2, i20, iK, (iK9 & 128) == 0 ? 0 : fu4Var2.b[fu4Var2.a.k()]);
                                }
                            }
                            i20 = iK;
                        }
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr2, fu4Var2.h, fu4Var2.i, Bitmap.Config.ARGB_8888);
                        float f = fu4Var2.f;
                        float f2 = fu4Var2.d;
                        float f3 = f / f2;
                        float f4 = fu4Var2.g;
                        float f5 = fu4Var2.e;
                        sb0Var = new sb0(null, null, null, bitmapCreateBitmap, f4 / f5, 0, 0, f3, 0, Integer.MIN_VALUE, -3.4028235E38f, fu4Var2.h / f2, fu4Var2.i / f5, false, -16777216, Integer.MIN_VALUE, 0.0f);
                    }
                    i2 = 0;
                    fu4Var2.d = 0;
                    fu4Var2.e = 0;
                    fu4Var2.f = 0;
                    fu4Var2.g = 0;
                    fu4Var2.h = 0;
                    fu4Var2.i = 0;
                    fu4Var2.a.c(0);
                    fu4Var2.c = false;
                }
                os4Var4.e(i9);
            }
            if (sb0Var != null) {
                arrayList.add(sb0Var);
            }
            c2 = c;
            i6 = i2;
        }
    }
}
