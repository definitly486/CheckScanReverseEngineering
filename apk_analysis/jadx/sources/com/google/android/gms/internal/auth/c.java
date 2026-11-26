package com.google.android.gms.internal.auth;

import androidx.compose.ui.spatial.RectListKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.ad2;
import defpackage.anb;
import defpackage.cjb;
import defpackage.dta;
import defpackage.fg;
import defpackage.h7b;
import defpackage.jfb;
import defpackage.ljb;
import defpackage.mi2;
import defpackage.ogb;
import defpackage.pnb;
import defpackage.qib;
import defpackage.tlb;
import defpackage.ud;
import defpackage.yib;
import defpackage.zc5;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.security.AccessController;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class c<T> implements cjb<T> {
    public static final int[] k = new int[0];
    public static final Unsafe l;
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final zzfx e;
    public final int[] f;
    public final int g;
    public final int h;
    public final jfb i;
    public final tlb j;

    static {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new anb());
        } catch (Throwable unused) {
            unsafe = null;
        }
        l = unsafe;
    }

    public c(int[] iArr, Object[] objArr, int i, int i2, zzfx zzfxVar, int[] iArr2, int i3, int i4, jfb jfbVar, tlb tlbVar) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.f = iArr2;
        this.g = i3;
        this.h = i4;
        this.i = jfbVar;
        this.j = tlbVar;
        this.e = zzfxVar;
    }

    public static boolean h(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzev) {
            return ((zzev) obj).g();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:186:0x039f  */
    public static c k(ogb ogbVar, jfb jfbVar, tlb tlbVar) {
        int i;
        int iCharAt;
        int i2;
        int[] iArr;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        char cCharAt;
        int i9;
        char cCharAt2;
        int i10;
        char cCharAt3;
        int i11;
        char cCharAt4;
        int i12;
        char cCharAt5;
        int i13;
        char cCharAt6;
        int i14;
        char cCharAt7;
        int i15;
        char cCharAt8;
        int i16;
        int i17;
        int i18;
        int[] iArr2;
        int i19;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        char c;
        int i20;
        int i21;
        Field fieldT;
        int i22;
        char cCharAt9;
        int i23;
        Field fieldT2;
        Field fieldT3;
        int i24;
        char cCharAt10;
        int i25;
        int i26;
        char cCharAt11;
        int i27;
        char cCharAt12;
        int i28;
        char cCharAt13;
        if (!(ogbVar instanceof yib)) {
            throw null;
        }
        yib yibVar = (yib) ogbVar;
        String str = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a";
        char c2 = 55296;
        if ("\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(0) >= 55296) {
            int i29 = 1;
            while (true) {
                i = i29 + 1;
                if ("\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i29) < 55296) {
                    break;
                }
                i29 = i;
            }
        } else {
            i = 1;
        }
        int i30 = i + 1;
        int iCharAt2 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i);
        if (iCharAt2 >= 55296) {
            int i31 = iCharAt2 & 8191;
            int i32 = 13;
            while (true) {
                i28 = i30 + 1;
                cCharAt13 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i30);
                if (cCharAt13 < 55296) {
                    break;
                }
                i31 |= (cCharAt13 & 8191) << i32;
                i32 += 13;
                i30 = i28;
            }
            iCharAt2 = i31 | (cCharAt13 << i32);
            i30 = i28;
        }
        if (iCharAt2 == 0) {
            i4 = 0;
            i6 = 0;
            iCharAt = 0;
            i3 = 0;
            i5 = 0;
            i7 = 0;
            iArr = k;
            i2 = 0;
        } else {
            int i33 = i30 + 1;
            int iCharAt3 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i30);
            if (iCharAt3 >= 55296) {
                int i34 = iCharAt3 & 8191;
                int i35 = 13;
                while (true) {
                    i15 = i33 + 1;
                    cCharAt8 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i33);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i34 |= (cCharAt8 & 8191) << i35;
                    i35 += 13;
                    i33 = i15;
                }
                iCharAt3 = i34 | (cCharAt8 << i35);
                i33 = i15;
            }
            int i36 = i33 + 1;
            int iCharAt4 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i33);
            if (iCharAt4 >= 55296) {
                int i37 = iCharAt4 & 8191;
                int i38 = 13;
                while (true) {
                    i14 = i36 + 1;
                    cCharAt7 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i36);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i37 |= (cCharAt7 & 8191) << i38;
                    i38 += 13;
                    i36 = i14;
                }
                iCharAt4 = i37 | (cCharAt7 << i38);
                i36 = i14;
            }
            int i39 = i36 + 1;
            int iCharAt5 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i36);
            if (iCharAt5 >= 55296) {
                int i40 = iCharAt5 & 8191;
                int i41 = 13;
                while (true) {
                    i13 = i39 + 1;
                    cCharAt6 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i39);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt6 & 8191) << i41;
                    i41 += 13;
                    i39 = i13;
                }
                iCharAt5 = i40 | (cCharAt6 << i41);
                i39 = i13;
            }
            int i42 = i39 + 1;
            int iCharAt6 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i39);
            if (iCharAt6 >= 55296) {
                int i43 = iCharAt6 & 8191;
                int i44 = 13;
                while (true) {
                    i12 = i42 + 1;
                    cCharAt5 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i42);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt5 & 8191) << i44;
                    i44 += 13;
                    i42 = i12;
                }
                iCharAt6 = i43 | (cCharAt5 << i44);
                i42 = i12;
            }
            int i45 = i42 + 1;
            iCharAt = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i42);
            if (iCharAt >= 55296) {
                int i46 = iCharAt & 8191;
                int i47 = 13;
                while (true) {
                    i11 = i45 + 1;
                    cCharAt4 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i45);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt4 & 8191) << i47;
                    i47 += 13;
                    i45 = i11;
                }
                iCharAt = i46 | (cCharAt4 << i47);
                i45 = i11;
            }
            int i48 = i45 + 1;
            int iCharAt7 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i45);
            if (iCharAt7 >= 55296) {
                int i49 = iCharAt7 & 8191;
                int i50 = 13;
                while (true) {
                    i10 = i48 + 1;
                    cCharAt3 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i48);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt3 & 8191) << i50;
                    i50 += 13;
                    i48 = i10;
                }
                iCharAt7 = i49 | (cCharAt3 << i50);
                i48 = i10;
            }
            int i51 = i48 + 1;
            int iCharAt8 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i48);
            if (iCharAt8 >= 55296) {
                int i52 = iCharAt8 & 8191;
                int i53 = 13;
                while (true) {
                    i9 = i51 + 1;
                    cCharAt2 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i51);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt2 & 8191) << i53;
                    i53 += 13;
                    i51 = i9;
                }
                iCharAt8 = i52 | (cCharAt2 << i53);
                i51 = i9;
            }
            int i54 = i51 + 1;
            int iCharAt9 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i51);
            if (iCharAt9 >= 55296) {
                int i55 = iCharAt9 & 8191;
                int i56 = 13;
                while (true) {
                    i8 = i54 + 1;
                    cCharAt = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i54);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i55 |= (cCharAt & 8191) << i56;
                    i56 += 13;
                    i54 = i8;
                }
                iCharAt9 = i55 | (cCharAt << i56);
                i54 = i8;
            }
            int i57 = iCharAt9 + iCharAt7 + iCharAt8;
            int i58 = iCharAt3 + iCharAt3 + iCharAt4;
            i2 = iCharAt3;
            i30 = i54;
            iArr = new int[i57];
            int i59 = iCharAt7;
            i3 = iCharAt5;
            i4 = i59;
            i5 = iCharAt6;
            i6 = i58;
            i7 = iCharAt9;
        }
        Object[] objArr = yibVar.b;
        Class<?> cls = yibVar.a.getClass();
        int i60 = i7 + i4;
        int i61 = iCharAt + iCharAt;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr2 = new Object[i61];
        int i62 = i7;
        int i63 = i60;
        int i64 = 0;
        int i65 = 0;
        while (i30 < 12) {
            int i66 = i30 + 1;
            int iCharAt10 = str.charAt(i30);
            if (iCharAt10 >= c2) {
                int i67 = iCharAt10 & 8191;
                int i68 = i66;
                int i69 = 13;
                while (true) {
                    i27 = i68 + 1;
                    cCharAt12 = str.charAt(i68);
                    if (cCharAt12 < c2) {
                        break;
                    }
                    i67 |= (cCharAt12 & 8191) << i69;
                    i69 += 13;
                    i68 = i27;
                }
                iCharAt10 = i67 | (cCharAt12 << i69);
                i16 = i27;
            } else {
                i16 = i66;
            }
            int i70 = i16 + 1;
            int iCharAt11 = str.charAt(i16);
            if (iCharAt11 >= c2) {
                int i71 = iCharAt11 & 8191;
                int i72 = i70;
                int i73 = 13;
                while (true) {
                    i26 = i72 + 1;
                    cCharAt11 = str.charAt(i72);
                    i17 = iCharAt10;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i71 |= (cCharAt11 & 8191) << i73;
                    i73 += 13;
                    i72 = i26;
                    iCharAt10 = i17;
                }
                iCharAt11 = i71 | (cCharAt11 << i73);
                i18 = i26;
            } else {
                i17 = iCharAt10;
                i18 = i70;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i65] = i64;
                i65++;
            }
            int i74 = iCharAt11 & 255;
            int i75 = i2;
            Unsafe unsafe = l;
            Object[] objArr3 = objArr2;
            if (i74 >= 51) {
                int i76 = i18 + 1;
                int iCharAt12 = str.charAt(i18);
                if (iCharAt12 >= 55296) {
                    int i77 = iCharAt12 & 8191;
                    int i78 = i76;
                    int i79 = 13;
                    while (true) {
                        i24 = i78 + 1;
                        cCharAt10 = str.charAt(i78);
                        i25 = i77;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i77 = i25 | ((cCharAt10 & 8191) << i79);
                        i79 += 13;
                        i78 = i24;
                    }
                    iCharAt12 = i25 | (cCharAt10 << i79);
                    i23 = i24;
                } else {
                    i23 = i76;
                }
                int i80 = iCharAt12;
                int i81 = i74 - 51;
                int i82 = i23;
                if (i81 == 9 || i81 == 17) {
                    objArr3[ud.b(i64, 3, 1)] = objArr[i6];
                    i6++;
                } else if (i81 == 12 && (yibVar.zzc() == 1 || (iCharAt11 & 2048) != 0)) {
                    objArr3[ud.b(i64, 3, 1)] = objArr[i6];
                    i6++;
                }
                int i83 = i80 + i80;
                Object obj = objArr[i83];
                if (obj instanceof Field) {
                    fieldT2 = (Field) obj;
                } else {
                    fieldT2 = t(cls, (String) obj);
                    objArr[i83] = fieldT2;
                }
                int i84 = i6;
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldT2);
                int i85 = i83 + 1;
                Object obj2 = objArr[i85];
                if (obj2 instanceof Field) {
                    fieldT3 = (Field) obj2;
                } else {
                    fieldT3 = t(cls, (String) obj2);
                    objArr[i85] = fieldT3;
                }
                str = str;
                cls = cls;
                i19 = i84;
                iObjectFieldOffset = iObjectFieldOffset3;
                i20 = i82;
                c = 55296;
                iArr2 = iArr3;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldT3);
                i21 = 0;
            } else {
                int i86 = i6 + 1;
                Field fieldT4 = t(cls, (String) objArr[i6]);
                int i87 = i6;
                if (i74 == 9 || i74 == 17) {
                    iArr2 = iArr3;
                    objArr3[ud.b(i64, 3, 1)] = fieldT4.getType();
                } else {
                    if (i74 == 27 || i74 == 49) {
                        iArr2 = iArr3;
                        i19 = i87 + 2;
                        objArr3[ud.b(i64, 3, 1)] = objArr[i86];
                    } else if (i74 == 12 || i74 == 30 || i74 == 44) {
                        iArr2 = iArr3;
                        if (yibVar.zzc() == 1 || (iCharAt11 & 2048) != 0) {
                            i19 = i87 + 2;
                            objArr3[ud.b(i64, 3, 1)] = objArr[i86];
                        }
                    } else if (i74 == 50) {
                        int i88 = i62 + 1;
                        iArr[i62] = i64;
                        int i89 = i64 / 3;
                        int i90 = i87 + 2;
                        int i91 = i89 + i89;
                        objArr3[i91] = objArr[i86];
                        if ((iCharAt11 & 2048) != 0) {
                            objArr3[i91 + 1] = objArr[i90];
                            i19 = i87 + 3;
                            iArr2 = iArr3;
                            i62 = i88;
                        } else {
                            i19 = i90;
                            i62 = i88;
                            iArr2 = iArr3;
                        }
                    } else {
                        iArr2 = iArr3;
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldT4);
                    iObjectFieldOffset2 = 1048575;
                    if ((iCharAt11 & 4096) != 0 || i74 > 17) {
                        c = 55296;
                        i20 = i18;
                        i21 = 0;
                    } else {
                        i20 = i18 + 1;
                        int iCharAt13 = str.charAt(i18);
                        if (iCharAt13 >= 55296) {
                            int i92 = iCharAt13 & 8191;
                            int i93 = 13;
                            while (true) {
                                i22 = i20 + 1;
                                cCharAt9 = str.charAt(i20);
                                if (cCharAt9 < 55296) {
                                    break;
                                }
                                i92 |= (cCharAt9 & 8191) << i93;
                                i93 += 13;
                                i20 = i22;
                            }
                            iCharAt13 = i92 | (cCharAt9 << i93);
                            i20 = i22;
                        }
                        int i94 = (iCharAt13 / 32) + i75 + i75;
                        Object obj3 = objArr[i94];
                        if (obj3 instanceof Field) {
                            fieldT = (Field) obj3;
                        } else {
                            fieldT = t(cls, (String) obj3);
                            objArr[i94] = fieldT;
                        }
                        i21 = iCharAt13 % 32;
                        iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldT);
                        c = 55296;
                    }
                    if (i74 >= 18 && i74 <= 49) {
                        iArr[i63] = iObjectFieldOffset;
                        i63++;
                    }
                }
                i19 = i86;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldT4);
                iObjectFieldOffset2 = 1048575;
                if ((iCharAt11 & 4096) != 0) {
                    c = 55296;
                    i20 = i18;
                    i21 = 0;
                } else {
                    c = 55296;
                    i20 = i18;
                    i21 = 0;
                }
                if (i74 >= 18) {
                    iArr[i63] = iObjectFieldOffset;
                    i63++;
                }
            }
            int i95 = i64 + 1;
            iArr2[i64] = i17;
            int i96 = i64 + 2;
            iArr2[i95] = ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0) | (i74 << 20) | iObjectFieldOffset;
            i64 += 3;
            iArr2[i96] = (i21 << 20) | iObjectFieldOffset2;
            i30 = i20;
            i6 = i19;
            i2 = i75;
            iArr3 = iArr2;
            c2 = c;
            cls = cls;
            str = str;
            objArr2 = objArr3;
        }
        return new c(iArr3, objArr2, i3, i5, yibVar.a, iArr, i7, i60, jfbVar, tlbVar);
    }

    public static int l(zzev zzevVar, long j) {
        return ((Integer) pnb.c(zzevVar, j)).intValue();
    }

    public static int n(int i) {
        return (i >>> 20) & 255;
    }

    public static Field t(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sbD = ad2.d("Field ", str, " for ", name, " not found. Known fields are ");
            sbD.append(string);
            throw new RuntimeException(sbD.toString());
        }
    }

    @Override // defpackage.cjb
    public final int a(zzev zzevVar) {
        int i;
        long jDoubleToLongBits;
        int i2;
        int iFloatToIntBits;
        int[] iArr = this.a;
        int length = iArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int iO = o(i4);
            int i5 = iArr[i4];
            long j = 1048575 & iO;
            int iHashCode = 37;
            switch (n(iO)) {
                case 0:
                    i = i3 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(pnb.c.a(zzevVar, j));
                    Charset charset = zzfa.a;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i3 * 53;
                    iFloatToIntBits = Float.floatToIntBits(pnb.c.c(zzevVar, j));
                    i3 = iFloatToIntBits + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    jDoubleToLongBits = pnb.b(zzevVar, j);
                    Charset charset2 = zzfa.a;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i3 * 53;
                    jDoubleToLongBits = pnb.b(zzevVar, j);
                    Charset charset3 = zzfa.a;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 4:
                    i2 = i3 * 53;
                    iFloatToIntBits = pnb.a(zzevVar, j);
                    i3 = iFloatToIntBits + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    jDoubleToLongBits = pnb.b(zzevVar, j);
                    Charset charset4 = zzfa.a;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 6:
                    i2 = i3 * 53;
                    iFloatToIntBits = pnb.a(zzevVar, j);
                    i3 = iFloatToIntBits + i2;
                    break;
                case 7:
                    i2 = i3 * 53;
                    iFloatToIntBits = zzfa.zza(pnb.c.m(zzevVar, j));
                    i3 = iFloatToIntBits + i2;
                    break;
                case 8:
                    i2 = i3 * 53;
                    iFloatToIntBits = ((String) pnb.c(zzevVar, j)).hashCode();
                    i3 = iFloatToIntBits + i2;
                    break;
                case 9:
                    Object objC = pnb.c(zzevVar, j);
                    if (objC != null) {
                        iHashCode = objC.hashCode();
                    }
                    i3 = (i3 * 53) + iHashCode;
                    break;
                case 10:
                    i2 = i3 * 53;
                    iFloatToIntBits = pnb.c(zzevVar, j).hashCode();
                    i3 = iFloatToIntBits + i2;
                    break;
                case 11:
                    i2 = i3 * 53;
                    iFloatToIntBits = pnb.a(zzevVar, j);
                    i3 = iFloatToIntBits + i2;
                    break;
                case 12:
                    i2 = i3 * 53;
                    iFloatToIntBits = pnb.a(zzevVar, j);
                    i3 = iFloatToIntBits + i2;
                    break;
                case 13:
                    i2 = i3 * 53;
                    iFloatToIntBits = pnb.a(zzevVar, j);
                    i3 = iFloatToIntBits + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    jDoubleToLongBits = pnb.b(zzevVar, j);
                    Charset charset5 = zzfa.a;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 15:
                    i2 = i3 * 53;
                    iFloatToIntBits = pnb.a(zzevVar, j);
                    i3 = iFloatToIntBits + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    jDoubleToLongBits = pnb.b(zzevVar, j);
                    Charset charset6 = zzfa.a;
                    i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    break;
                case 17:
                    Object objC2 = pnb.c(zzevVar, j);
                    if (objC2 != null) {
                        iHashCode = objC2.hashCode();
                    }
                    i3 = (i3 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i2 = i3 * 53;
                    iFloatToIntBits = pnb.c(zzevVar, j).hashCode();
                    i3 = iFloatToIntBits + i2;
                    break;
                case 50:
                    i2 = i3 * 53;
                    iFloatToIntBits = pnb.c(zzevVar, j).hashCode();
                    i3 = iFloatToIntBits + i2;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (i(i5, i4, zzevVar)) {
                        i = i3 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(((Double) pnb.c(zzevVar, j)).doubleValue());
                        Charset charset7 = zzfa.a;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 52:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = Float.floatToIntBits(((Float) pnb.c(zzevVar, j)).floatValue());
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
                case 53:
                    if (i(i5, i4, zzevVar)) {
                        i = i3 * 53;
                        jDoubleToLongBits = ((Long) pnb.c(zzevVar, j)).longValue();
                        Charset charset8 = zzfa.a;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 54:
                    if (i(i5, i4, zzevVar)) {
                        i = i3 * 53;
                        jDoubleToLongBits = ((Long) pnb.c(zzevVar, j)).longValue();
                        Charset charset9 = zzfa.a;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = l(zzevVar, j);
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
                case 56:
                    if (i(i5, i4, zzevVar)) {
                        i = i3 * 53;
                        jDoubleToLongBits = ((Long) pnb.c(zzevVar, j)).longValue();
                        Charset charset10 = zzfa.a;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 57:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = l(zzevVar, j);
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
                case 58:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = zzfa.zza(((Boolean) pnb.c(zzevVar, j)).booleanValue());
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
                case 59:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = ((String) pnb.c(zzevVar, j)).hashCode();
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
                case 60:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = pnb.c(zzevVar, j).hashCode();
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = pnb.c(zzevVar, j).hashCode();
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
                case RectListKt.BitOffsetForGesturable /* 62 */:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = l(zzevVar, j);
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
                case 63:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = l(zzevVar, j);
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
                case 64:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = l(zzevVar, j);
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
                case 65:
                    if (i(i5, i4, zzevVar)) {
                        i = i3 * 53;
                        jDoubleToLongBits = ((Long) pnb.c(zzevVar, j)).longValue();
                        Charset charset11 = zzfa.a;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 66:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = l(zzevVar, j);
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
                case 67:
                    if (i(i5, i4, zzevVar)) {
                        i = i3 * 53;
                        jDoubleToLongBits = ((Long) pnb.c(zzevVar, j)).longValue();
                        Charset charset12 = zzfa.a;
                        i3 = i + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
                    }
                    break;
                case 68:
                    if (i(i5, i4, zzevVar)) {
                        i2 = i3 * 53;
                        iFloatToIntBits = pnb.c(zzevVar, j).hashCode();
                        i3 = iFloatToIntBits + i2;
                    }
                    break;
            }
        }
        return this.j.b(zzevVar).hashCode() + (i3 * 53);
    }

    @Override // defpackage.cjb
    public final boolean b(zzev zzevVar, zzev zzevVar2) {
        boolean zA;
        int[] iArr = this.a;
        int length = iArr.length;
        for (int i = 0; i < length; i += 3) {
            int iO = o(i);
            long j = iO & 1048575;
            switch (n(iO)) {
                case 0:
                    if (f(zzevVar, zzevVar2, i)) {
                        dta dtaVar = pnb.c;
                        if (Double.doubleToLongBits(dtaVar.a(zzevVar, j)) == Double.doubleToLongBits(dtaVar.a(zzevVar2, j))) {
                            continue;
                            break;
                        }
                    }
                case 1:
                    if (f(zzevVar, zzevVar2, i)) {
                        dta dtaVar2 = pnb.c;
                        if (Float.floatToIntBits(dtaVar2.c(zzevVar, j)) == Float.floatToIntBits(dtaVar2.c(zzevVar2, j))) {
                            continue;
                            break;
                        }
                    }
                case 2:
                    if (f(zzevVar, zzevVar2, i) && pnb.b(zzevVar, j) == pnb.b(zzevVar2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 3:
                    if (f(zzevVar, zzevVar2, i) && pnb.b(zzevVar, j) == pnb.b(zzevVar2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 4:
                    if (f(zzevVar, zzevVar2, i) && pnb.a(zzevVar, j) == pnb.a(zzevVar2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 5:
                    if (f(zzevVar, zzevVar2, i) && pnb.b(zzevVar, j) == pnb.b(zzevVar2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 6:
                    if (f(zzevVar, zzevVar2, i) && pnb.a(zzevVar, j) == pnb.a(zzevVar2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 7:
                    if (f(zzevVar, zzevVar2, i)) {
                        dta dtaVar3 = pnb.c;
                        if (dtaVar3.m(zzevVar, j) == dtaVar3.m(zzevVar2, j)) {
                            continue;
                            break;
                        }
                    }
                case 8:
                    if (f(zzevVar, zzevVar2, i) && ljb.a(pnb.c(zzevVar, j), pnb.c(zzevVar2, j))) {
                        continue;
                        break;
                    }
                    break;
                case 9:
                    if (f(zzevVar, zzevVar2, i) && ljb.a(pnb.c(zzevVar, j), pnb.c(zzevVar2, j))) {
                        continue;
                        break;
                    }
                    break;
                case 10:
                    if (f(zzevVar, zzevVar2, i) && ljb.a(pnb.c(zzevVar, j), pnb.c(zzevVar2, j))) {
                        continue;
                        break;
                    }
                    break;
                case 11:
                    if (f(zzevVar, zzevVar2, i) && pnb.a(zzevVar, j) == pnb.a(zzevVar2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 12:
                    if (f(zzevVar, zzevVar2, i) && pnb.a(zzevVar, j) == pnb.a(zzevVar2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 13:
                    if (f(zzevVar, zzevVar2, i) && pnb.a(zzevVar, j) == pnb.a(zzevVar2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 14:
                    if (f(zzevVar, zzevVar2, i) && pnb.b(zzevVar, j) == pnb.b(zzevVar2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 15:
                    if (f(zzevVar, zzevVar2, i) && pnb.a(zzevVar, j) == pnb.a(zzevVar2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 16:
                    if (f(zzevVar, zzevVar2, i) && pnb.b(zzevVar, j) == pnb.b(zzevVar2, j)) {
                        continue;
                        break;
                    }
                    break;
                case 17:
                    if (f(zzevVar, zzevVar2, i) && ljb.a(pnb.c(zzevVar, j), pnb.c(zzevVar2, j))) {
                        continue;
                        break;
                    }
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zA = ljb.a(pnb.c(zzevVar, j), pnb.c(zzevVar2, j));
                    break;
                case 50:
                    zA = ljb.a(pnb.c(zzevVar, j), pnb.c(zzevVar2, j));
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                case 52:
                case 53:
                case 54:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case RectListKt.BitOffsetForFocusable /* 61 */:
                case RectListKt.BitOffsetForGesturable /* 62 */:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long j2 = iArr[i + 2] & 1048575;
                    if (pnb.a(zzevVar, j2) == pnb.a(zzevVar2, j2) && ljb.a(pnb.c(zzevVar, j), pnb.c(zzevVar2, j))) {
                        continue;
                        break;
                    }
                    break;
                default:
                    continue;
                    break;
            }
            if (zA) {
            }
        }
        tlb tlbVar = this.j;
        return tlbVar.b(zzevVar).equals(tlbVar.b(zzevVar2));
    }

    @Override // defpackage.cjb
    public final void c(Object obj, Object obj2) {
        Object obj3;
        if (!h(obj)) {
            fg.c("Mutating immutable message: ".concat(String.valueOf(obj)));
            return;
        }
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                Object obj4 = obj;
                Class cls = ljb.a;
                tlb tlbVar = this.j;
                tlbVar.f(obj4, tlbVar.c(tlbVar.b(obj4), tlbVar.b(obj2)));
                return;
            }
            int iO = o(i);
            int i2 = iArr[i];
            long j = iO & 1048575;
            switch (n(iO)) {
                case 0:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        dta dtaVar = pnb.c;
                        dtaVar.h(obj3, j, dtaVar.a(obj2, j));
                        w(i, obj3);
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 1:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        dta dtaVar2 = pnb.c;
                        dtaVar2.j(obj3, j, dtaVar2.c(obj2, j));
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 2:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.c.a.putLong(obj3, j, pnb.b(obj2, j));
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 3:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.c.a.putLong(obj3, j, pnb.b(obj2, j));
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 4:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.f(pnb.a(obj2, j), j, obj3);
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 5:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.c.a.putLong(obj3, j, pnb.b(obj2, j));
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 6:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.f(pnb.a(obj2, j), j, obj3);
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 7:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        dta dtaVar3 = pnb.c;
                        dtaVar3.e(obj3, j, dtaVar3.m(obj2, j));
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 8:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.g(j, obj3, pnb.c(obj2, j));
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 9:
                    obj3 = obj;
                    u(i, obj3, obj2);
                    continue;
                    i += 3;
                    obj = obj3;
                    break;
                case 10:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.g(j, obj3, pnb.c(obj2, j));
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 11:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.f(pnb.a(obj2, j), j, obj3);
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 12:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.f(pnb.a(obj2, j), j, obj3);
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 13:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.f(pnb.a(obj2, j), j, obj3);
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 14:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.c.a.putLong(obj3, j, pnb.b(obj2, j));
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 15:
                    obj3 = obj;
                    if (g(i, obj2)) {
                        pnb.f(pnb.a(obj2, j), j, obj3);
                        w(i, obj3);
                    } else {
                        continue;
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 16:
                    if (g(i, obj2)) {
                        obj3 = obj;
                        pnb.c.a.putLong(obj3, j, pnb.b(obj2, j));
                        w(i, obj3);
                    }
                    i += 3;
                    obj = obj3;
                    break;
                case 17:
                    u(i, obj, obj2);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.i.b(j, obj, obj2);
                    break;
                case 50:
                    Class cls2 = ljb.a;
                    zzfr zzfrVarZzb = (zzfr) pnb.c(obj, j);
                    zzfr zzfrVar = (zzfr) pnb.c(obj2, j);
                    if (!zzfrVar.isEmpty()) {
                        if (!zzfrVarZzb.zze()) {
                            zzfrVarZzb = zzfrVarZzb.zzb();
                        }
                        zzfrVarZzb.zzd(zzfrVar);
                    }
                    pnb.g(j, obj, zzfrVarZzb);
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                case 52:
                case 53:
                case 54:
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (i(i2, i, obj2)) {
                        pnb.g(j, obj, pnb.c(obj2, j));
                        pnb.f(i2, iArr[i + 2] & 1048575, obj);
                    }
                    break;
                case 60:
                    v(i, obj, obj2);
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                case RectListKt.BitOffsetForGesturable /* 62 */:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (i(i2, i, obj2)) {
                        pnb.g(j, obj, pnb.c(obj2, j));
                        pnb.f(i2, iArr[i + 2] & 1048575, obj);
                    }
                    break;
                case 68:
                    v(i, obj, obj2);
                    break;
            }
            obj3 = obj;
            i += 3;
            obj = obj3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0043  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cc  */
    @Override // defpackage.cjb
    public final boolean d(Object obj) {
        int iN;
        int i = 0;
        int i2 = 0;
        int i3 = 1048575;
        while (true) {
            boolean zG = true;
            if (i >= this.g) {
                return true;
            }
            int i4 = this.f[i];
            int[] iArr = this.a;
            int i5 = iArr[i4];
            int iO = o(i4);
            int i6 = iArr[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i3) {
                if (i7 != 1048575) {
                    i2 = l.getInt(obj, i7);
                }
                i3 = i7;
            }
            if ((268435456 & iO) == 0) {
                iN = n(iO);
                if (iN != 9 || iN == 17) {
                    if (i3 == 1048575) {
                        zG = g(i4, obj);
                    } else if ((i8 & i2) == 0) {
                        zG = false;
                    }
                    if (!zG || q(i4).d(pnb.c(obj, iO & 1048575))) {
                        i++;
                    }
                } else {
                    if (iN != 27) {
                        if (iN == 60 || iN == 68) {
                            if (!i(i5, i4, obj) || q(i4).d(pnb.c(obj, iO & 1048575))) {
                            }
                        } else if (iN != 49) {
                            if (iN == 50 && !((zzfr) pnb.c(obj, iO & 1048575)).isEmpty()) {
                                int i9 = i4 / 3;
                                throw null;
                            }
                        }
                        i++;
                    }
                    List list = (List) pnb.c(obj, iO & 1048575);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        cjb cjbVarQ = q(i4);
                        for (int i10 = 0; i10 < list.size(); i10++) {
                            if (cjbVarQ.d(list.get(i10))) {
                            }
                        }
                    }
                    i++;
                }
            } else {
                if (i3 == 1048575 ? g(i4, obj) : (i2 & i8) != 0) {
                    iN = n(iO);
                    if (iN != 9) {
                    }
                    if (i3 == 1048575) {
                        zG = g(i4, obj);
                    } else if ((i8 & i2) == 0) {
                        zG = false;
                    }
                    if (!zG) {
                        continue;
                    }
                    i++;
                }
            }
            return false;
        }
    }

    @Override // defpackage.cjb
    public final void e(Object obj, byte[] bArr, int i, int i2, h7b h7bVar) {
        j(obj, bArr, i, i2, 0, h7bVar);
    }

    public final boolean f(zzev zzevVar, zzev zzevVar2, int i) {
        return g(i, zzevVar) == g(i, zzevVar2);
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f6 A[RETURN] */
    public final boolean g(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = i2 & 1048575;
        if (j != 1048575) {
            if (((1 << (i2 >>> 20)) & pnb.a(obj, j)) != 0) {
                return true;
            }
            return false;
        }
        int iO = o(i);
        long j2 = iO & 1048575;
        switch (n(iO)) {
            case 0:
                if (Double.doubleToRawLongBits(pnb.c.a(obj, j2)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(pnb.c.c(obj, j2)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (pnb.b(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (pnb.b(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (pnb.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (pnb.b(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (pnb.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 7:
                return pnb.c.m(obj, j2);
            case 8:
                Object objC = pnb.c(obj, j2);
                if (objC instanceof String) {
                    if (((String) objC).isEmpty()) {
                        return false;
                    }
                    return true;
                }
                if (!(objC instanceof zzef)) {
                    mi2.b();
                    return false;
                }
                if (zzef.zzb.equals(objC)) {
                    return false;
                }
                return true;
            case 9:
                if (pnb.c(obj, j2) != null) {
                    return true;
                }
                return false;
            case 10:
                if (zzef.zzb.equals(pnb.c(obj, j2))) {
                    return false;
                }
                return true;
            case 11:
                if (pnb.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (pnb.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (pnb.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (pnb.b(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (pnb.a(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 16:
                if (pnb.b(obj, j2) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (pnb.c(obj, j2) != null) {
                    return true;
                }
                return false;
            default:
                mi2.b();
                return false;
        }
    }

    public final boolean i(int i, int i2, Object obj) {
        return pnb.a(obj, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 40441. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int j(java.lang.Object r34, byte[] r35, int r36, int r37, int r38, defpackage.h7b r39) {
        /*
            Method dump skipped, instruction units count: 4044
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.c.j(java.lang.Object, byte[], int, int, int, h7b):int");
    }

    public final int m(int i, int i2) {
        int[] iArr = this.a;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    public final int o(int i) {
        return this.a[i + 1];
    }

    public final zzey p(int i) {
        int i2 = i / 3;
        return (zzey) this.b[i2 + i2 + 1];
    }

    public final cjb q(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.b;
        cjb cjbVar = (cjb) objArr[i3];
        if (cjbVar != null) {
            return cjbVar;
        }
        cjb cjbVarA = qib.c.a((Class) objArr[i3 + 1]);
        objArr[i3] = cjbVarA;
        return cjbVarA;
    }

    public final Object r(int i, Object obj) {
        cjb cjbVarQ = q(i);
        int iO = o(i) & 1048575;
        if (!g(i, obj)) {
            return cjbVarQ.zzd();
        }
        Object object = l.getObject(obj, iO);
        if (h(object)) {
            return object;
        }
        Object objZzd = cjbVarQ.zzd();
        if (object != null) {
            cjbVarQ.c(objZzd, object);
        }
        return objZzd;
    }

    public final Object s(int i, int i2, Object obj) {
        cjb cjbVarQ = q(i2);
        if (!i(i, i2, obj)) {
            return cjbVarQ.zzd();
        }
        Object object = l.getObject(obj, o(i2) & 1048575);
        if (h(object)) {
            return object;
        }
        Object objZzd = cjbVarQ.zzd();
        if (object != null) {
            cjbVarQ.c(objZzd, object);
        }
        return objZzd;
    }

    public final void u(int i, Object obj, Object obj2) {
        if (g(i, obj2)) {
            long jO = o(i) & 1048575;
            Unsafe unsafe = l;
            Object object = unsafe.getObject(obj2, jO);
            if (object == null) {
                zc5.c(this.a[i], obj2);
                return;
            }
            cjb cjbVarQ = q(i);
            if (!g(i, obj)) {
                if (h(object)) {
                    Object objZzd = cjbVarQ.zzd();
                    cjbVarQ.c(objZzd, object);
                    unsafe.putObject(obj, jO, objZzd);
                } else {
                    unsafe.putObject(obj, jO, object);
                }
                w(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jO);
            if (!h(object2)) {
                Object objZzd2 = cjbVarQ.zzd();
                cjbVarQ.c(objZzd2, object2);
                unsafe.putObject(obj, jO, objZzd2);
                object2 = objZzd2;
            }
            cjbVarQ.c(object2, object);
        }
    }

    public final void v(int i, Object obj, Object obj2) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (i(i2, i, obj2)) {
            long jO = o(i) & 1048575;
            Unsafe unsafe = l;
            Object object = unsafe.getObject(obj2, jO);
            if (object == null) {
                zc5.c(iArr[i], obj2);
                return;
            }
            cjb cjbVarQ = q(i);
            if (!i(i2, i, obj)) {
                if (h(object)) {
                    Object objZzd = cjbVarQ.zzd();
                    cjbVarQ.c(objZzd, object);
                    unsafe.putObject(obj, jO, objZzd);
                } else {
                    unsafe.putObject(obj, jO, object);
                }
                pnb.f(i2, iArr[i + 2] & 1048575, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, jO);
            if (!h(object2)) {
                Object objZzd2 = cjbVarQ.zzd();
                cjbVarQ.c(objZzd2, object2);
                unsafe.putObject(obj, jO, objZzd2);
                object2 = objZzd2;
            }
            cjbVarQ.c(object2, object);
        }
    }

    public final void w(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        pnb.f((1 << (i2 >>> 20)) | pnb.a(obj, j), j, obj);
    }

    @Override // defpackage.cjb
    public final Object zzd() {
        return ((zzev) this.e).b();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0065  */
    /* JADX WARN: Code duplicated, block: B:27:0x006b  */
    /* JADX WARN: Code duplicated, block: B:38:0x0076 A[SYNTHETIC] */
    @Override // defpackage.cjb
    public final void zze(Object obj) {
        if (h(obj)) {
            if (obj instanceof zzev) {
                zzev zzevVar = (zzev) obj;
                zzevVar.f();
                zzevVar.zza = 0;
                zzevVar.d();
            }
            int[] iArr = this.a;
            int length = iArr.length;
            for (int i = 0; i < length; i += 3) {
                int iO = o(i);
                int i2 = 1048575 & iO;
                int iN = n(iO);
                long j = i2;
                Unsafe unsafe = l;
                if (iN != 9) {
                    if (iN != 60 && iN != 68) {
                        switch (iN) {
                            case 17:
                                if (g(i, obj)) {
                                    q(i).zze(unsafe.getObject(obj, j));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                this.i.a(obj, j);
                                break;
                            case 50:
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zzfr) object).zzc();
                                    unsafe.putObject(obj, j, object);
                                }
                                break;
                        }
                    } else if (i(iArr[i], i, obj)) {
                        q(i).zze(unsafe.getObject(obj, j));
                    }
                } else if (g(i, obj)) {
                    q(i).zze(unsafe.getObject(obj, j));
                }
            }
            this.j.e(obj);
        }
    }
}
