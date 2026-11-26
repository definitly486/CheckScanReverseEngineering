package defpackage;

import com.google.zxing.NotFoundException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class bm2 {
    public Object a;
    public Object b;

    public float a(sa3 sa3Var, sa3 sa3Var2) {
        int i = (int) sa3Var.a;
        int i2 = (int) sa3Var.b;
        int i3 = (int) sa3Var2.a;
        int i4 = (int) sa3Var2.b;
        float fD = d(i, i2, i3, i4);
        float fD2 = d((int) sa3Var2.a, i4, (int) sa3Var.a, i2);
        if (Float.isNaN(fD)) {
            return fD2 / 7.0f;
        }
        return Float.isNaN(fD2) ? fD / 7.0f : (fD + fD2) / 14.0f;
    }

    public mc b(float f, float f2, int i, int i2) throws NotFoundException {
        mc mcVarB;
        mc mcVarB2;
        int i3 = (int) (f2 * f);
        int iMax = Math.max(0, i - i3);
        qi0 qi0Var = (qi0) this.a;
        int iMin = Math.min(qi0Var.b - 1, i + i3) - iMax;
        float f3 = 3.0f * f;
        if (iMin < f3) {
            throw NotFoundException.d;
        }
        int iMax2 = Math.max(0, i2 - i3);
        int iMin2 = Math.min(qi0Var.c - 1, i2 + i3) - iMax2;
        if (iMin2 < f3) {
            throw NotFoundException.d;
        }
        qi0 qi0Var2 = (qi0) this.a;
        nc ncVar = new nc(qi0Var2, iMax, iMax2, iMin, iMin2, f, (x57) this.b);
        int i4 = ncVar.e;
        int i5 = ncVar.c;
        int i6 = i4 + i5;
        int i7 = ncVar.f;
        int i8 = (i7 / 2) + ncVar.d;
        int[] iArr = new int[3];
        for (int i9 = 0; i9 < i7; i9++) {
            int i10 = ((i9 & 1) == 0 ? (i9 + 1) / 2 : -((i9 + 1) / 2)) + i8;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i11 = i5;
            while (i11 < i6 && !qi0Var2.c(i11, i10)) {
                i11++;
            }
            int i12 = 0;
            while (i11 < i6) {
                if (!qi0Var2.c(i11, i10)) {
                    if (i12 == 1) {
                        i12++;
                    }
                    iArr[i12] = iArr[i12] + 1;
                } else if (i12 == 1) {
                    iArr[i12] = iArr[i12] + 1;
                } else if (i12 != 2) {
                    i12++;
                    iArr[i12] = iArr[i12] + 1;
                } else {
                    if (ncVar.a(iArr) && (mcVarB2 = ncVar.b(iArr, i10, i11)) != null) {
                        return mcVarB2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i12 = 1;
                }
                i11++;
            }
            if (ncVar.a(iArr) && (mcVarB = ncVar.b(iArr, i10, i6)) != null) {
                return mcVarB;
            }
        }
        ArrayList arrayList = ncVar.b;
        if (arrayList.isEmpty()) {
            throw NotFoundException.d;
        }
        return (mc) arrayList.get(0);
    }

    public float c(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        double dSqrt;
        int i11 = 1;
        boolean z = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (z) {
            i6 = i;
            i5 = i2;
            i8 = i3;
            i7 = i4;
        } else {
            i5 = i;
            i6 = i2;
            i7 = i3;
            i8 = i4;
        }
        int iAbs = Math.abs(i7 - i5);
        int i12 = i8 - i6;
        int iAbs2 = Math.abs(i12);
        int i13 = 2;
        int i14 = (-iAbs) / 2;
        int i15 = i5 < i7 ? 1 : -1;
        int i16 = i6 < i8 ? 1 : -1;
        int i17 = i7 + i15;
        int i18 = i5;
        int i19 = i6;
        int i20 = 0;
        while (true) {
            if (i18 == i17) {
                i9 = i5;
                i10 = i13;
                break;
            }
            boolean z2 = z;
            i9 = i5;
            if ((i20 == i11 ? i11 : 0) == ((qi0) this.a).c(z ? i19 : i18, z ? i18 : i19)) {
                if (i20 == 2) {
                    int i21 = i18 - i9;
                    int i22 = i19 - i6;
                    dSqrt = Math.sqrt((i22 * i22) + (i21 * i21));
                } else {
                    i20++;
                }
                return (float) dSqrt;
            }
            i14 += iAbs2;
            if (i14 > 0) {
                if (i19 == i8) {
                    i10 = 2;
                    break;
                }
                i19 += i16;
                i14 -= iAbs;
            }
            i18 += i15;
            i5 = i9;
            i6 = i6;
            z = z2;
            i11 = 1;
            i13 = 2;
        }
        if (i20 != i10) {
            return Float.NaN;
        }
        int i23 = i17 - i9;
        dSqrt = Math.sqrt((i12 * i12) + (i23 * i23));
        return (float) dSqrt;
    }

    public float d(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        qi0 qi0Var = (qi0) this.a;
        float fC = c(i, i2, i3, i4);
        int i5 = i - (i3 - i);
        int i6 = 0;
        if (i5 < 0) {
            f = i / (i - i5);
            i5 = 0;
        } else {
            int i7 = qi0Var.b;
            if (i5 >= i7) {
                float f3 = ((i7 - 1) - i) / (i5 - i);
                int i8 = i7 - 1;
                f = f3;
                i5 = i8;
            } else {
                f = 1.0f;
            }
        }
        float f4 = i2;
        int i9 = (int) (f4 - ((i4 - i2) * f));
        if (i9 < 0) {
            f2 = f4 / (i2 - i9);
        } else {
            int i10 = qi0Var.c;
            if (i9 >= i10) {
                f2 = ((i10 - 1) - i2) / (i9 - i2);
                i6 = i10 - 1;
            } else {
                i6 = i9;
                f2 = 1.0f;
            }
        }
        return (c(i, i2, (int) (((i5 - i) * f2) + i), i6) + fC) - 1.0f;
    }
}
