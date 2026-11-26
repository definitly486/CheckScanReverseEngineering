package defpackage;

import com.google.zxing.NotFoundException;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes4.dex */
public final class oi0 {
    public final jz3 a;
    public qi0 b;

    public oi0(jz3 jz3Var) {
        this.a = jz3Var;
    }

    public final qi0 a() throws NotFoundException {
        int[] iArr;
        qi0 qi0Var = this.b;
        if (qi0Var != null) {
            return qi0Var;
        }
        jz3 jz3Var = this.a;
        qi0 qi0Var2 = jz3Var.d;
        if (qi0Var2 == null) {
            x86 x86Var = jz3Var.a;
            int i = x86Var.a;
            int i2 = x86Var.b;
            int i3 = 0;
            boolean z = true;
            if (i < 40 || i2 < 40) {
                qi0 qi0Var3 = new qi0(i, i2);
                if (jz3Var.b.length < i) {
                    jz3Var.b = new byte[i];
                }
                int i4 = 0;
                while (true) {
                    iArr = jz3Var.c;
                    if (i4 >= 32) {
                        break;
                    }
                    iArr[i4] = 0;
                    i4++;
                }
                for (int i5 = 1; i5 < 5; i5++) {
                    byte[] bArrB = x86Var.b((i2 * i5) / 5, jz3Var.b);
                    int i6 = (i * 4) / 5;
                    for (int i7 = i / 5; i7 < i6; i7++) {
                        int i8 = (bArrB[i7] & 255) >> 3;
                        iArr[i8] = iArr[i8] + 1;
                    }
                }
                int length = iArr.length;
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                for (int i12 = 0; i12 < length; i12++) {
                    int i13 = iArr[i12];
                    if (i13 > i9) {
                        i11 = i12;
                        i9 = i13;
                    }
                    if (i13 > i10) {
                        i10 = i13;
                    }
                }
                int i14 = 0;
                int i15 = 0;
                for (int i16 = 0; i16 < length; i16++) {
                    int i17 = i16 - i11;
                    int i18 = iArr[i16] * i17 * i17;
                    if (i18 > i15) {
                        i14 = i16;
                        i15 = i18;
                    }
                }
                if (i11 <= i14) {
                    int i19 = i11;
                    i11 = i14;
                    i14 = i19;
                }
                if (i11 - i14 <= length / 16) {
                    throw NotFoundException.d;
                }
                int i20 = i11 - 1;
                int i21 = -1;
                int i22 = i20;
                while (i20 > i14) {
                    int i23 = i20 - i14;
                    int i24 = (i10 - iArr[i20]) * (i11 - i20) * i23 * i23;
                    if (i24 > i21) {
                        i22 = i20;
                        i21 = i24;
                    }
                    i20--;
                }
                int i25 = i22 << 3;
                byte[] bArrA = x86Var.a();
                for (int i26 = 0; i26 < i2; i26++) {
                    int i27 = i26 * i;
                    for (int i28 = 0; i28 < i; i28++) {
                        if ((bArrA[i27 + i28] & 255) < i25) {
                            qi0Var3.d(i28, i26);
                        }
                    }
                }
                jz3Var.d = qi0Var3;
                qi0Var2 = qi0Var3;
            } else {
                byte[] bArrA2 = x86Var.a();
                int i29 = i >> 3;
                if ((i & 7) != 0) {
                    i29++;
                }
                int i30 = i2 >> 3;
                if ((i2 & 7) != 0) {
                    i30++;
                }
                int i31 = 2;
                int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i30, i29);
                int i32 = 0;
                while (true) {
                    int i33 = 8;
                    if (i32 >= i30) {
                        break;
                    }
                    int i34 = i32 << 3;
                    int i35 = i2 - 8;
                    if (i34 > i35) {
                        i34 = i35;
                    }
                    int i36 = i3;
                    while (i36 < i29) {
                        int i37 = i3;
                        int i38 = i36 << 3;
                        boolean z2 = z;
                        int i39 = i - 8;
                        if (i38 > i39) {
                            i38 = i39;
                        }
                        int i40 = (i34 * i) + i38;
                        int i41 = i31;
                        int i42 = i37;
                        int i43 = i42;
                        int i44 = i43;
                        int i45 = 255;
                        while (i42 < i33) {
                            byte[] bArr = bArrA2;
                            int i46 = i37;
                            int i47 = i44;
                            while (i46 < i33) {
                                int i48 = i46;
                                int i49 = bArr[i40 + i46] & 255;
                                i43 += i49;
                                if (i49 < i45) {
                                    i45 = i49;
                                }
                                if (i49 > i47) {
                                    i47 = i49;
                                }
                                i46 = i48 + 1;
                                i33 = 8;
                            }
                            if (i47 - i45 > 24) {
                                i42++;
                                while (true) {
                                    i40 += i;
                                    if (i42 < 8) {
                                        int i50 = i37;
                                        for (int i51 = 8; i50 < i51; i51 = 8) {
                                            i43 += bArr[i40 + i50] & 255;
                                            i50++;
                                            i42 = i42;
                                        }
                                        i42++;
                                    }
                                }
                            }
                            i42++;
                            i40 += i;
                            i44 = i47;
                            bArrA2 = bArr;
                            i33 = 8;
                        }
                        byte[] bArr2 = bArrA2;
                        int i52 = i43 >> 6;
                        if (i44 - i45 <= 24) {
                            i52 = i45 / 2;
                            if (i32 > 0 && i36 > 0) {
                                int[] iArr3 = iArr2[i32 - 1];
                                int i53 = i36 - 1;
                                int i54 = (((iArr2[i32][i53] * 2) + iArr3[i36]) + iArr3[i53]) / 4;
                                if (i45 < i54) {
                                    i52 = i54;
                                }
                            }
                        }
                        iArr2[i32][i36] = i52;
                        i36++;
                        i3 = i37;
                        z = z2;
                        i31 = i41;
                        bArrA2 = bArr2;
                        i33 = 8;
                    }
                    i32++;
                }
                byte[] bArr3 = bArrA2;
                int i55 = i3;
                int i56 = i31;
                qi0Var2 = new qi0(i, i2);
                while (i3 < i30) {
                    int i57 = i3 << 3;
                    int i58 = i2 - 8;
                    if (i57 > i58) {
                        i57 = i58;
                    }
                    for (int i59 = i55; i59 < i29; i59++) {
                        int i60 = i59 << 3;
                        int i61 = i - 8;
                        if (i60 > i61) {
                            i60 = i61;
                        }
                        int i62 = i29 - 3;
                        int i63 = i56;
                        if (i59 < i63) {
                            i62 = i63;
                        } else if (i59 <= i62) {
                            i62 = i59;
                        }
                        int i64 = i30 - 3;
                        if (i3 < i63) {
                            i64 = i63;
                        } else if (i3 <= i64) {
                            i64 = i3;
                        }
                        int i65 = -2;
                        int i66 = i55;
                        while (i65 <= i63) {
                            int[] iArr4 = iArr2[i64 + i65];
                            i66 = iArr4[i62 - 2] + iArr4[i62 - 1] + iArr4[i62] + iArr4[i62 + 1] + iArr4[i62 + 2] + i66;
                            i65++;
                            i63 = 2;
                        }
                        i56 = i63;
                        int i67 = i66 / 25;
                        int i68 = (i57 * i) + i60;
                        int i69 = i55;
                        while (true) {
                            if (i69 < 8) {
                                int i70 = i29;
                                int i71 = i55;
                                for (int i72 = 8; i71 < i72; i72 = 8) {
                                    int i73 = i71;
                                    if ((bArr3[i68 + i71] & 255) <= i67) {
                                        qi0Var2.d(i60 + i73, i57 + i69);
                                    }
                                    i71 = i73 + 1;
                                }
                                i69++;
                                i68 += i;
                                i29 = i70;
                            }
                        }
                    }
                    i3++;
                }
                jz3Var.d = qi0Var2;
            }
        }
        this.b = qi0Var2;
        return qi0Var2;
    }

    public final String toString() {
        try {
            return a().toString();
        } catch (NotFoundException unused) {
            return "";
        }
    }
}
