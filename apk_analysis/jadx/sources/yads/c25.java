package yads;

import java.util.ArrayList;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c25 {
    /* JADX WARN: Code duplicated, block: B:29:0x0068  */
    public static ArrayList a(os4 os4Var) {
        ArrayList arrayList;
        boolean z;
        int i;
        Object z15Var;
        os4 os4Var2 = os4Var;
        ArrayList arrayList2 = null;
        if (os4Var2.k() != 0) {
            return null;
        }
        os4Var2.e(os4Var2.b + 7);
        int iA = os4Var2.a();
        boolean z2 = true;
        if (iA == 1684433976) {
            os4 os4Var3 = new os4();
            Inflater inflater = new Inflater(true);
            try {
                if (!u56.a(os4Var2, os4Var3, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                os4Var2 = os4Var3;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (iA != 1918990112) {
            return null;
        }
        ArrayList arrayList3 = new ArrayList();
        int i2 = os4Var2.b;
        int i3 = os4Var2.c;
        while (i2 < i3) {
            int iA2 = os4Var2.a() + i2;
            if (iA2 <= i2 || iA2 > i3) {
                return arrayList2;
            }
            if (os4Var2.a() == 1835365224) {
                int iA3 = os4Var2.a();
                if (iA3 > 10000) {
                    arrayList = arrayList2;
                    z = z2;
                    i = i3;
                    z15Var = arrayList;
                } else {
                    float[] fArr = new float[iA3];
                    for (int i4 = 0; i4 < iA3; i4++) {
                        fArr[i4] = Float.intBitsToFloat(os4Var2.a());
                    }
                    int iA4 = os4Var2.a();
                    if (iA4 > 32000) {
                        arrayList = arrayList2;
                        z = z2;
                    } else {
                        double dLog = Math.log(2.0d);
                        int iCeil = (int) Math.ceil(Math.log(((double) iA3) * 2.0d) / dLog);
                        arrayList = arrayList2;
                        ns4 ns4Var = new ns4(os4Var2.a);
                        z = z2;
                        ns4Var.b(os4Var2.b * 8);
                        float[] fArr2 = new float[iA4 * 5];
                        int i5 = 5;
                        int[] iArr = new int[5];
                        int i6 = 0;
                        int i7 = 0;
                        while (true) {
                            if (i6 < iA4) {
                                int i8 = 0;
                                while (true) {
                                    if (i8 < i5) {
                                        int i9 = iArr[i8];
                                        int iA5 = ns4Var.a(iCeil);
                                        int i10 = ((iA5 >> 1) ^ (-(iA5 & 1))) + i9;
                                        if (i10 < iA3 && i10 >= 0) {
                                            fArr2[i7] = fArr[i10];
                                            iArr[i8] = i10;
                                            i8++;
                                            i7++;
                                            i5 = 5;
                                        }
                                    } else {
                                        i6++;
                                        i5 = 5;
                                    }
                                }
                            } else {
                                ns4Var.b((ns4Var.d() + 7) & (-8));
                                int i11 = 32;
                                int iA6 = ns4Var.a(32);
                                a25[] a25VarArr = new a25[iA6];
                                int i12 = 0;
                                while (true) {
                                    if (i12 < iA6) {
                                        int iA7 = ns4Var.a(8);
                                        int iA8 = ns4Var.a(8);
                                        int iA9 = ns4Var.a(i11);
                                        if (iA9 <= 128000) {
                                            float[] fArr3 = fArr2;
                                            int iCeil2 = (int) Math.ceil(Math.log(((double) iA4) * 2.0d) / dLog);
                                            float[] fArr4 = new float[iA9 * 3];
                                            int i13 = iA6;
                                            float[] fArr5 = new float[iA9 * 2];
                                            i = i3;
                                            int i14 = 0;
                                            int i15 = 0;
                                            while (true) {
                                                if (i14 < iA9) {
                                                    int iA10 = ns4Var.a(iCeil2);
                                                    int i16 = iCeil2;
                                                    int i17 = ((iA10 >> 1) ^ (-(iA10 & 1))) + i15;
                                                    if (i17 >= 0 && i17 < iA4) {
                                                        int i18 = i14 * 3;
                                                        int i19 = i17 * 5;
                                                        fArr4[i18] = fArr3[i19];
                                                        fArr4[i18 + 1] = fArr3[i19 + 1];
                                                        fArr4[i18 + 2] = fArr3[i19 + 2];
                                                        int i20 = i14 * 2;
                                                        fArr5[i20] = fArr3[i19 + 3];
                                                        fArr5[i20 + 1] = fArr3[i19 + 4];
                                                        i14++;
                                                        i15 = i17;
                                                        iCeil2 = i16;
                                                    }
                                                } else {
                                                    a25VarArr[i12] = new a25(iA7, fArr4, fArr5, iA8);
                                                    i12++;
                                                    fArr2 = fArr3;
                                                    iA6 = i13;
                                                    i3 = i;
                                                    i11 = 32;
                                                }
                                            }
                                        }
                                        z15Var = arrayList;
                                    } else {
                                        i = i3;
                                        z15Var = new z15(a25VarArr);
                                    }
                                }
                            }
                        }
                    }
                    i = i3;
                    z15Var = arrayList;
                }
                if (z15Var == null) {
                    return arrayList;
                }
                arrayList3.add(z15Var);
            } else {
                arrayList = arrayList2;
                z = z2;
                i = i3;
            }
            os4Var2.e(iA2);
            i2 = iA2;
            arrayList2 = arrayList;
            z2 = z;
            i3 = i;
        }
        return arrayList3;
    }
}
