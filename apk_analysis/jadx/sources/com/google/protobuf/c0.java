package com.google.protobuf;

import androidx.compose.ui.spatial.RectListKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.an5;
import defpackage.e93;
import defpackage.ej0;
import defpackage.fa5;
import defpackage.fx0;
import defpackage.g79;
import defpackage.h79;
import defpackage.mg;
import defpackage.mi2;
import defpackage.n7;
import defpackage.oo4;
import defpackage.qs6;
import defpackage.r01;
import defpackage.rs6;
import defpackage.sx6;
import defpackage.ti0;
import defpackage.ui9;
import defpackage.vi9;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.security.AccessController;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class c0<T> implements f0<T> {
    public static final int[] p = new int[0];
    public static final Unsafe q;
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final a0 e;
    public final boolean f;
    public final boolean g;
    public final int[] h;
    public final int i;
    public final int j;
    public final an5 k;
    public final u l;
    public final j0<?, ?> m;
    public final k<?> n;
    public final y o;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ui9.values().length];
            a = iArr;
            try {
                iArr[ui9.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ui9.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ui9.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[ui9.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[ui9.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[ui9.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[ui9.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[ui9.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[ui9.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[ui9.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[ui9.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[ui9.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[ui9.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[ui9.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[ui9.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[ui9.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[ui9.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    static {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new g79());
        } catch (Throwable unused) {
            unsafe = null;
        }
        q = unsafe;
    }

    public c0(int[] iArr, Object[] objArr, int i, int i2, a0 a0Var, int[] iArr2, int i3, int i4, an5 an5Var, u uVar, j0 j0Var, k kVar, y yVar) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.g = a0Var instanceof o;
        this.f = kVar != null && kVar.e(a0Var);
        this.h = iArr2;
        this.i = i3;
        this.j = i4;
        this.k = an5Var;
        this.l = uVar;
        this.m = j0Var;
        this.n = kVar;
        this.e = a0Var;
        this.o = yVar;
    }

    public static <T> long A(T t, long j) {
        return ((Long) h79.j(t, j)).longValue();
    }

    public static Field G(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder sbD = n7.d("Field ", str, " for ");
            sbD.append(cls.getName());
            sbD.append(" not found. Known fields are ");
            sbD.append(Arrays.toString(declaredFields));
            throw new RuntimeException(sbD.toString());
        }
    }

    public static int M(int i) {
        return (i & 267386880) >>> 20;
    }

    public static void P(int i, Object obj, n0 n0Var) {
        if (obj instanceof String) {
            ((h) n0Var).a.s0(i, (String) obj);
        } else {
            ((h) n0Var).a(i, (fx0) obj);
        }
    }

    public static void h(Object obj) {
        if (q(obj)) {
            return;
        }
        r01.e(obj, "Mutating immutable message: ");
    }

    public static int i(byte[] bArr, int i, int i2, ui9 ui9Var, Class cls, d.b bVar) throws InvalidProtocolBufferException {
        switch (a.a[ui9Var.ordinal()]) {
            case 1:
                int iT = d.t(bArr, i, bVar);
                bVar.c = Boolean.valueOf(bVar.b != 0);
                return iT;
            case 2:
                return d.a(bArr, i, bVar);
            case 3:
                bVar.c = Double.valueOf(Double.longBitsToDouble(d.c(bArr, i)));
                return i + 8;
            case 4:
            case 5:
                bVar.c = Integer.valueOf(d.b(bArr, i));
                return i + 4;
            case 6:
            case 7:
                bVar.c = Long.valueOf(d.c(bArr, i));
                return i + 8;
            case 8:
                bVar.c = Float.valueOf(Float.intBitsToFloat(d.b(bArr, i)));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int iR = d.r(bArr, i, bVar);
                bVar.c = Integer.valueOf(bVar.a);
                return iR;
            case 12:
            case 13:
                int iT2 = d.t(bArr, i, bVar);
                bVar.c = Long.valueOf(bVar.b);
                return iT2;
            case 14:
                return d.e(rs6.c.a(cls), bArr, i, i2, bVar);
            case 15:
                int iR2 = d.r(bArr, i, bVar);
                bVar.c = Integer.valueOf(f.b(bVar.a));
                return iR2;
            case 16:
                int iT3 = d.t(bArr, i, bVar);
                bVar.c = Long.valueOf(f.c(bVar.b));
                return iT3;
            case 17:
                int iR3 = d.r(bArr, i, bVar);
                int i3 = bVar.a;
                if (i3 < 0) {
                    throw InvalidProtocolBufferException.g();
                }
                if (i3 == 0) {
                    bVar.c = "";
                    return iR3;
                }
                bVar.c = m0.a.a(bArr, iR3, i3);
                return iR3 + i3;
            default:
                n7.g("unsupported field type.");
                return 0;
        }
    }

    public static k0 n(Object obj) {
        o oVar = (o) obj;
        k0 k0Var = oVar.unknownFields;
        if (k0Var != k0.f) {
            return k0Var;
        }
        k0 k0Var2 = new k0();
        oVar.unknownFields = k0Var2;
        return k0Var2;
    }

    public static boolean q(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof o) {
            return ((o) obj).isMutable();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:124:0x026f  */
    /* JADX WARN: Code duplicated, block: B:126:0x0275  */
    /* JADX WARN: Code duplicated, block: B:129:0x028d  */
    /* JADX WARN: Code duplicated, block: B:130:0x0290  */
    /* JADX WARN: Code duplicated, block: B:167:0x0348  */
    /* JADX WARN: Code duplicated, block: B:182:0x0392  */
    /* JADX WARN: Code duplicated, block: B:185:0x039c  */
    /* JADX WARN: Code duplicated, block: B:188:0x03a9  */
    public static c0 x(fa5 fa5Var, an5 an5Var, u uVar, j0 j0Var, k kVar, y yVar) {
        int i;
        int iCharAt;
        int i2;
        int i3;
        int i4;
        int[] iArr;
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
        int i19;
        int i20;
        int i21;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i22;
        int i23;
        int iObjectFieldOffset3;
        Field fieldG;
        char cCharAt9;
        int i24;
        int i25;
        int i26;
        int i27;
        Object obj;
        Field fieldG2;
        int i28;
        Object obj2;
        Field fieldG3;
        int i29;
        char cCharAt10;
        int i30;
        int i31;
        char cCharAt11;
        int i32;
        char cCharAt12;
        int i33;
        char cCharAt13;
        if (!(fa5Var instanceof sx6)) {
            throw null;
        }
        sx6 sx6Var = (sx6) fa5Var;
        String str = sx6Var.b;
        int length = str.length();
        char c = 55296;
        if (str.charAt(0) >= 55296) {
            int i34 = 1;
            while (true) {
                i = i34 + 1;
                if (str.charAt(i34) < 55296) {
                    break;
                }
                i34 = i;
            }
        } else {
            i = 1;
        }
        int i35 = i + 1;
        int iCharAt2 = str.charAt(i);
        if (iCharAt2 >= 55296) {
            int i36 = iCharAt2 & 8191;
            int i37 = 13;
            while (true) {
                i33 = i35 + 1;
                cCharAt13 = str.charAt(i35);
                if (cCharAt13 < 55296) {
                    break;
                }
                i36 |= (cCharAt13 & 8191) << i37;
                i37 += 13;
                i35 = i33;
            }
            iCharAt2 = i36 | (cCharAt13 << i37);
            i35 = i33;
        }
        if (iCharAt2 == 0) {
            i3 = 0;
            i6 = 0;
            iCharAt = 0;
            i2 = 0;
            i5 = 0;
            i7 = 0;
            iArr = p;
            i4 = 0;
        } else {
            int i38 = i35 + 1;
            int iCharAt3 = str.charAt(i35);
            if (iCharAt3 >= 55296) {
                int i39 = iCharAt3 & 8191;
                int i40 = 13;
                while (true) {
                    i15 = i38 + 1;
                    cCharAt8 = str.charAt(i38);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i39 |= (cCharAt8 & 8191) << i40;
                    i40 += 13;
                    i38 = i15;
                }
                iCharAt3 = i39 | (cCharAt8 << i40);
                i38 = i15;
            }
            int i41 = i38 + 1;
            int iCharAt4 = str.charAt(i38);
            if (iCharAt4 >= 55296) {
                int i42 = iCharAt4 & 8191;
                int i43 = 13;
                while (true) {
                    i14 = i41 + 1;
                    cCharAt7 = str.charAt(i41);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i42 |= (cCharAt7 & 8191) << i43;
                    i43 += 13;
                    i41 = i14;
                }
                iCharAt4 = i42 | (cCharAt7 << i43);
                i41 = i14;
            }
            int i44 = i41 + 1;
            int iCharAt5 = str.charAt(i41);
            if (iCharAt5 >= 55296) {
                int i45 = iCharAt5 & 8191;
                int i46 = 13;
                while (true) {
                    i13 = i44 + 1;
                    cCharAt6 = str.charAt(i44);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i45 |= (cCharAt6 & 8191) << i46;
                    i46 += 13;
                    i44 = i13;
                }
                iCharAt5 = i45 | (cCharAt6 << i46);
                i44 = i13;
            }
            int i47 = i44 + 1;
            int iCharAt6 = str.charAt(i44);
            if (iCharAt6 >= 55296) {
                int i48 = iCharAt6 & 8191;
                int i49 = 13;
                while (true) {
                    i12 = i47 + 1;
                    cCharAt5 = str.charAt(i47);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt5 & 8191) << i49;
                    i49 += 13;
                    i47 = i12;
                }
                iCharAt6 = i48 | (cCharAt5 << i49);
                i47 = i12;
            }
            int i50 = i47 + 1;
            iCharAt = str.charAt(i47);
            if (iCharAt >= 55296) {
                int i51 = iCharAt & 8191;
                int i52 = 13;
                while (true) {
                    i11 = i50 + 1;
                    cCharAt4 = str.charAt(i50);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt4 & 8191) << i52;
                    i52 += 13;
                    i50 = i11;
                }
                iCharAt = i51 | (cCharAt4 << i52);
                i50 = i11;
            }
            int i53 = i50 + 1;
            int iCharAt7 = str.charAt(i50);
            if (iCharAt7 >= 55296) {
                int i54 = iCharAt7 & 8191;
                int i55 = 13;
                while (true) {
                    i10 = i53 + 1;
                    cCharAt3 = str.charAt(i53);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt3 & 8191) << i55;
                    i55 += 13;
                    i53 = i10;
                }
                iCharAt7 = i54 | (cCharAt3 << i55);
                i53 = i10;
            }
            int i56 = i53 + 1;
            int iCharAt8 = str.charAt(i53);
            if (iCharAt8 >= 55296) {
                int i57 = iCharAt8 & 8191;
                int i58 = 13;
                while (true) {
                    i9 = i56 + 1;
                    cCharAt2 = str.charAt(i56);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt2 & 8191) << i58;
                    i58 += 13;
                    i56 = i9;
                }
                iCharAt8 = i57 | (cCharAt2 << i58);
                i56 = i9;
            }
            int i59 = i56 + 1;
            int iCharAt9 = str.charAt(i56);
            if (iCharAt9 >= 55296) {
                int i60 = iCharAt9 & 8191;
                int i61 = 13;
                while (true) {
                    i8 = i59 + 1;
                    cCharAt = str.charAt(i59);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i60 |= (cCharAt & 8191) << i61;
                    i61 += 13;
                    i59 = i8;
                }
                iCharAt9 = i60 | (cCharAt << i61);
                i59 = i8;
            }
            int[] iArr2 = new int[iCharAt9 + iCharAt7 + iCharAt8];
            int i62 = (iCharAt3 * 2) + iCharAt4;
            int i63 = iCharAt7;
            i2 = iCharAt5;
            i3 = i63;
            i4 = iCharAt3;
            i35 = i59;
            iArr = iArr2;
            i5 = iCharAt6;
            i6 = i62;
            i7 = iCharAt9;
        }
        Object[] objArr = sx6Var.c;
        Class<?> cls = sx6Var.a.getClass();
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr2 = new Object[iCharAt * 2];
        int i64 = i7 + i3;
        int i65 = i64;
        int i66 = i7;
        int i67 = 0;
        int i68 = 0;
        while (i35 < length) {
            int i69 = i35 + 1;
            int iCharAt10 = str.charAt(i35);
            if (iCharAt10 >= c) {
                int i70 = iCharAt10 & 8191;
                int i71 = i69;
                int i72 = 13;
                while (true) {
                    i32 = i71 + 1;
                    cCharAt12 = str.charAt(i71);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i70 |= (cCharAt12 & 8191) << i72;
                    i72 += 13;
                    i71 = i32;
                }
                iCharAt10 = i70 | (cCharAt12 << i72);
                i16 = i32;
            } else {
                i16 = i69;
            }
            int i73 = i16 + 1;
            int iCharAt11 = str.charAt(i16);
            if (iCharAt11 >= c) {
                int i74 = iCharAt11 & 8191;
                int i75 = i73;
                int i76 = 13;
                while (true) {
                    i31 = i75 + 1;
                    cCharAt11 = str.charAt(i75);
                    i17 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i74 |= (cCharAt11 & 8191) << i76;
                    i76 += 13;
                    i75 = i31;
                    length = i17;
                }
                iCharAt11 = i74 | (cCharAt11 << i76);
                i18 = i31;
            } else {
                i17 = length;
                i18 = i73;
            }
            int i77 = iCharAt11 & 255;
            int i78 = iCharAt10;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i67] = i68;
                i67++;
            }
            int[] iArr4 = iArr3;
            Unsafe unsafe = q;
            if (i77 >= 51) {
                int i79 = i18 + 1;
                int iCharAt12 = str.charAt(i18);
                if (iCharAt12 >= 55296) {
                    int i80 = iCharAt12 & 8191;
                    int i81 = i79;
                    int i82 = 13;
                    while (true) {
                        i29 = i81 + 1;
                        cCharAt10 = str.charAt(i81);
                        i30 = i80;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i80 = i30 | ((cCharAt10 & 8191) << i82);
                        i82 += 13;
                        i81 = i29;
                    }
                    iCharAt12 = i30 | (cCharAt10 << i82);
                    i25 = i29;
                } else {
                    i25 = i79;
                }
                int i83 = iCharAt12;
                int i84 = i77 - 51;
                int i85 = i25;
                if (i84 == 9 || i84 == 17) {
                    i26 = i6 + 1;
                    objArr2[((i68 / 3) * 2) + 1] = objArr[i6];
                } else {
                    if (i84 == 12 && (sx6Var.getSyntax().equals(qs6.PROTO2) || (iCharAt11 & 2048) != 0)) {
                        i26 = i6 + 1;
                        objArr2[((i68 / 3) * 2) + 1] = objArr[i6];
                    }
                    i27 = i83 * 2;
                    obj = objArr[i27];
                    if (obj instanceof Field) {
                        fieldG2 = (Field) obj;
                    } else {
                        fieldG2 = G(cls, (String) obj);
                        objArr[i27] = fieldG2;
                    }
                    i19 = i64;
                    int i86 = i6;
                    iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldG2);
                    i28 = i27 + 1;
                    obj2 = objArr[i28];
                    if (obj2 instanceof Field) {
                        fieldG3 = (Field) obj2;
                    } else {
                        fieldG3 = G(cls, (String) obj2);
                        objArr[i28] = fieldG3;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldG3);
                    i6 = i86;
                    i22 = i85;
                    i23 = 0;
                    i20 = i4;
                }
                i6 = i26;
                i27 = i83 * 2;
                obj = objArr[i27];
                if (obj instanceof Field) {
                    fieldG2 = (Field) obj;
                } else {
                    fieldG2 = G(cls, (String) obj);
                    objArr[i27] = fieldG2;
                }
                i19 = i64;
                int i87 = i6;
                iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldG2);
                i28 = i27 + 1;
                obj2 = objArr[i28];
                if (obj2 instanceof Field) {
                    fieldG3 = (Field) obj2;
                } else {
                    fieldG3 = G(cls, (String) obj2);
                    objArr[i28] = fieldG3;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldG3);
                i6 = i87;
                i22 = i85;
                i23 = 0;
                i20 = i4;
            } else {
                i19 = i64;
                int i88 = i6 + 1;
                Field fieldG4 = G(cls, (String) objArr[i6]);
                if (i77 == 9 || i77 == 17) {
                    i20 = i4;
                    objArr2[((i68 / 3) * 2) + 1] = fieldG4.getType();
                } else {
                    if (i77 == 27 || i77 == 49) {
                        i20 = i4;
                        i24 = i6 + 2;
                        objArr2[((i68 / 3) * 2) + 1] = objArr[i88];
                    } else if (i77 == 12 || i77 == 30 || i77 == 44) {
                        i20 = i4;
                        if (sx6Var.getSyntax() == qs6.PROTO2 || (iCharAt11 & 2048) != 0) {
                            i24 = i6 + 2;
                            objArr2[((i68 / 3) * 2) + 1] = objArr[i88];
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldG4);
                        if ((iCharAt11 & 4096) != 0 || i77 > 17) {
                            iObjectFieldOffset2 = 1048575;
                            i22 = i18;
                            i23 = 0;
                        } else {
                            int i89 = i18 + 1;
                            int iCharAt13 = str.charAt(i18);
                            if (iCharAt13 >= 55296) {
                                int i90 = iCharAt13 & 8191;
                                int i91 = 13;
                                while (true) {
                                    i22 = i89 + 1;
                                    cCharAt9 = str.charAt(i89);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i90 |= (cCharAt9 & 8191) << i91;
                                    i91 += 13;
                                    i89 = i22;
                                }
                                iCharAt13 = i90 | (cCharAt9 << i91);
                            } else {
                                i22 = i89;
                            }
                            int i92 = (iCharAt13 / 32) + (i20 * 2);
                            Object obj3 = objArr[i92];
                            if (obj3 instanceof Field) {
                                fieldG = (Field) obj3;
                            } else {
                                fieldG = G(cls, (String) obj3);
                                objArr[i92] = fieldG;
                            }
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldG);
                            i23 = iCharAt13 % 32;
                        }
                        if (i77 >= 18 || i77 > 49) {
                            i6 = i21;
                            iObjectFieldOffset3 = iObjectFieldOffset;
                        } else {
                            iArr[i65] = iObjectFieldOffset;
                            i6 = i21;
                            iObjectFieldOffset3 = iObjectFieldOffset;
                            i65++;
                        }
                    } else {
                        if (i77 == 50) {
                            int i93 = i66 + 1;
                            iArr[i66] = i68;
                            int i94 = (i68 / 3) * 2;
                            int i95 = i6 + 2;
                            objArr2[i94] = objArr[i88];
                            if ((iCharAt11 & 2048) != 0) {
                                i21 = i6 + 3;
                                objArr2[i94 + 1] = objArr[i95];
                                i20 = i4;
                                i66 = i93;
                            } else {
                                i21 = i95;
                                i66 = i93;
                                i20 = i4;
                            }
                        } else {
                            i20 = i4;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldG4);
                        if ((iCharAt11 & 4096) != 0) {
                            iObjectFieldOffset2 = 1048575;
                            i22 = i18;
                            i23 = 0;
                        } else {
                            iObjectFieldOffset2 = 1048575;
                            i22 = i18;
                            i23 = 0;
                        }
                        if (i77 >= 18) {
                            i6 = i21;
                            iObjectFieldOffset3 = iObjectFieldOffset;
                        } else {
                            i6 = i21;
                            iObjectFieldOffset3 = iObjectFieldOffset;
                        }
                    }
                    i21 = i24;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldG4);
                    if ((iCharAt11 & 4096) != 0) {
                        iObjectFieldOffset2 = 1048575;
                        i22 = i18;
                        i23 = 0;
                    } else {
                        iObjectFieldOffset2 = 1048575;
                        i22 = i18;
                        i23 = 0;
                    }
                    if (i77 >= 18) {
                        i6 = i21;
                        iObjectFieldOffset3 = iObjectFieldOffset;
                    } else {
                        i6 = i21;
                        iObjectFieldOffset3 = iObjectFieldOffset;
                    }
                }
                i21 = i88;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldG4);
                if ((iCharAt11 & 4096) != 0) {
                    iObjectFieldOffset2 = 1048575;
                    i22 = i18;
                    i23 = 0;
                } else {
                    iObjectFieldOffset2 = 1048575;
                    i22 = i18;
                    i23 = 0;
                }
                if (i77 >= 18) {
                    i6 = i21;
                    iObjectFieldOffset3 = iObjectFieldOffset;
                } else {
                    i6 = i21;
                    iObjectFieldOffset3 = iObjectFieldOffset;
                }
            }
            int i96 = i68 + 1;
            iArr4[i68] = i78;
            int i97 = i68 + 2;
            String str2 = str;
            iArr4[i96] = ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0) | (i77 << 20) | iObjectFieldOffset3;
            i68 += 3;
            iArr4[i97] = (i23 << 20) | iObjectFieldOffset2;
            str = str2;
            i4 = i20;
            length = i17;
            i35 = i22;
            iArr3 = iArr4;
            i64 = i19;
            c = 55296;
        }
        a0 a0Var = sx6Var.a;
        sx6Var.getSyntax();
        return new c0(iArr3, objArr2, i2, i5, a0Var, iArr, i7, i64, an5Var, uVar, j0Var, kVar, yVar);
    }

    public static long y(int i) {
        return i & 1048575;
    }

    public static <T> int z(T t, long j) {
        return ((Integer) h79.j(t, j)).intValue();
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 41561. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final int B(T r39, byte[] r40, int r41, int r42, int r43, com.google.protobuf.d.b r44) {
        /*
            Method dump skipped, instruction units count: 4156
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.c0.B(java.lang.Object, byte[], int, int, int, com.google.protobuf.d$b):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void C(Object obj, long j, g gVar, f0 f0Var, j jVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iZ;
        List listC = this.l.c(obj, j);
        f fVar = gVar.a;
        int i = gVar.b;
        if ((i & 7) != 3) {
            throw InvalidProtocolBufferException.e();
        }
        do {
            Object objNewInstance = f0Var.newInstance();
            gVar.b(objNewInstance, f0Var, jVar);
            f0Var.makeImmutable(objNewInstance);
            listC.add(objNewInstance);
            if (fVar.e() || gVar.d != 0) {
                return;
            } else {
                iZ = fVar.z();
            }
        } while (iZ == i);
        gVar.d = iZ;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void D(Object obj, int i, g gVar, f0 f0Var, j jVar) throws InvalidProtocolBufferException {
        int iZ;
        List listC = this.l.c(obj, i & 1048575);
        f fVar = gVar.a;
        int i2 = gVar.b;
        if ((i2 & 7) != 2) {
            throw InvalidProtocolBufferException.e();
        }
        do {
            Object objNewInstance = f0Var.newInstance();
            gVar.c(objNewInstance, f0Var, jVar);
            f0Var.makeImmutable(objNewInstance);
            listC.add(objNewInstance);
            if (fVar.e() || gVar.d != 0) {
                return;
            } else {
                iZ = fVar.z();
            }
        } while (iZ == i2);
        gVar.d = iZ;
    }

    public final void E(int i, g gVar, Object obj) throws InvalidProtocolBufferException.InvalidWireTypeException {
        f fVar = gVar.a;
        if ((536870912 & i) != 0) {
            gVar.x(2);
            h79.q(obj, i & 1048575, fVar.y());
        } else if (!this.g) {
            h79.q(obj, i & 1048575, gVar.e());
        } else {
            gVar.x(2);
            h79.q(obj, i & 1048575, fVar.x());
        }
    }

    public final void F(int i, g gVar, Object obj) throws InvalidProtocolBufferException.InvalidWireTypeException {
        boolean z = (536870912 & i) != 0;
        u uVar = this.l;
        if (z) {
            gVar.t(uVar.c(obj, i & 1048575), true);
        } else {
            gVar.t(uVar.c(obj, i & 1048575), false);
        }
    }

    public final void H(T t, int i) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        h79.o(t, j, (1 << (i2 >>> 20)) | h79.h(t, j));
    }

    public final void I(T t, int i, int i2) {
        h79.o(t, this.a[i2 + 2] & 1048575, i);
    }

    public final int J(int i, int i2) {
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

    public final void K(T t, int i, Object obj) {
        q.putObject(t, N(i) & 1048575, obj);
        H(t, i);
    }

    public final void L(T t, int i, int i2, Object obj) {
        q.putObject(t, N(i2) & 1048575, obj);
        I(t, i, i2);
    }

    public final int N(int i) {
        return this.a[i + 1];
    }

    public final <K, V> void O(n0 n0Var, int i, Object obj, int i2) {
        if (obj != null) {
            Object objL = l(i2);
            y yVar = this.o;
            w.a<?, ?> aVarForMapMetadata = yVar.forMapMetadata(objL);
            x xVarForMapData = yVar.forMapData(obj);
            CodedOutputStream codedOutputStream = ((h) n0Var).a;
            codedOutputStream.getClass();
            for (Map.Entry<K, V> entry : xVarForMapData.entrySet()) {
                codedOutputStream.u0(i, 2);
                codedOutputStream.w0(w.a(aVarForMapMetadata, entry.getKey(), entry.getValue()));
                K key = entry.getKey();
                V value = entry.getValue();
                m.o(codedOutputStream, aVarForMapMetadata.a, 1, key);
                m.o(codedOutputStream, aVarForMapMetadata.b, 2, value);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:186:0x0696  */
    /* JADX WARN: Code duplicated, block: B:19:0x0069  */
    @Override // com.google.protobuf.f0
    public final void a(T t, n0 n0Var) {
        Map.Entry<?, ?> entry;
        Iterator it;
        int i;
        Map.Entry<?, ?> entry2;
        int i2;
        Unsafe unsafe;
        int i3;
        int i4;
        boolean z;
        Map.Entry<?, ?> entry3;
        Iterator it2;
        c0<T> c0Var = this;
        boolean z2 = c0Var.f;
        j0<?, ?> j0Var = c0Var.m;
        int[] iArr = c0Var.a;
        ((h) n0Var).getClass();
        n0.a aVar = n0.a.ASCENDING;
        n0.a aVar2 = n0.a.DESCENDING;
        k<?> kVar = c0Var.n;
        int i5 = 1048575;
        boolean z3 = true;
        if (aVar == aVar2) {
            j0Var.r(j0Var.g(t), n0Var);
            if (z2) {
                m<T> mVarC = kVar.c(t);
                if (mVarC.a.isEmpty()) {
                    entry3 = null;
                    it2 = null;
                } else {
                    boolean z4 = mVarC.c;
                    h0 h0Var = mVarC.a;
                    if (z4) {
                        if (h0Var.h == null) {
                            h0Var.h = new i0.b();
                        }
                        it2 = new r.b(h0Var.h.iterator());
                    } else {
                        if (h0Var.h == null) {
                            h0Var.h = new i0.b();
                        }
                        it2 = h0Var.h.iterator();
                    }
                    entry3 = (Map.Entry) it2.next();
                }
            } else {
                entry3 = null;
                it2 = null;
            }
            for (int length = iArr.length - 3; length >= 0; length -= 3) {
                int iN = c0Var.N(length);
                int i6 = iArr[length];
                while (entry3 != null && kVar.a(entry3) > i6) {
                    kVar.j(n0Var, entry3);
                    entry3 = it2.hasNext() ? (Map.Entry) it2.next() : null;
                }
                switch (M(iN)) {
                    case 0:
                        if (c0Var.o(t, length)) {
                            double dE = h79.c.e(t, iN & 1048575);
                            CodedOutputStream codedOutputStream = ((h) n0Var).a;
                            codedOutputStream.getClass();
                            codedOutputStream.k0(i6, Double.doubleToRawLongBits(dE));
                            continue;
                        }
                        break;
                    case 1:
                        if (c0Var.o(t, length)) {
                            float f = h79.c.f(t, iN & 1048575);
                            CodedOutputStream codedOutputStream2 = ((h) n0Var).a;
                            codedOutputStream2.getClass();
                            codedOutputStream2.i0(i6, Float.floatToRawIntBits(f));
                        } else {
                            continue;
                        }
                        break;
                    case 2:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).f(i6, h79.i(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 3:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).a.x0(i6, h79.i(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 4:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).e(i6, h79.h(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 5:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).c(i6, h79.i(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 6:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).b(i6, h79.h(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 7:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).a.e0(i6, h79.c.b(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 8:
                        if (c0Var.o(t, length)) {
                            P(i6, h79.j(t, iN & 1048575), n0Var);
                        } else {
                            continue;
                        }
                        break;
                    case 9:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).g(i6, h79.j(t, iN & 1048575), c0Var.m(length));
                        } else {
                            continue;
                        }
                        break;
                    case 10:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).a(i6, (fx0) h79.j(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 11:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).a.v0(i6, h79.h(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 12:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).a.m0(i6, h79.h(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 13:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).a.i0(i6, h79.h(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 14:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).a.k0(i6, h79.i(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 15:
                        if (c0Var.o(t, length)) {
                            int iH = h79.h(t, iN & 1048575);
                            ((h) n0Var).a.v0(i6, (iH >> 31) ^ (iH << 1));
                        } else {
                            continue;
                        }
                        break;
                    case 16:
                        if (c0Var.o(t, length)) {
                            long jI = h79.i(t, iN & 1048575);
                            ((h) n0Var).a.x0(i6, (jI << 1) ^ (jI >> 63));
                        } else {
                            continue;
                        }
                        break;
                    case 17:
                        if (c0Var.o(t, length)) {
                            ((h) n0Var).d(i6, h79.j(t, iN & 1048575), c0Var.m(length));
                        } else {
                            continue;
                        }
                        break;
                    case 18:
                        g0.q(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 19:
                        g0.u(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 20:
                        g0.x(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 21:
                        g0.F(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 22:
                        g0.w(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 23:
                        g0.t(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 24:
                        g0.s(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 25:
                        g0.o(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 26:
                        g0.D(iArr[length], (List) h79.j(t, iN & 1048575), n0Var);
                        continue;
                        break;
                    case 27:
                        g0.y(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, c0Var.m(length));
                        continue;
                        break;
                    case 28:
                        g0.p(iArr[length], (List) h79.j(t, iN & 1048575), n0Var);
                        continue;
                        break;
                    case 29:
                        g0.E(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 30:
                        g0.r(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 31:
                        g0.z(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 32:
                        g0.A(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 33:
                        g0.B(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 34:
                        g0.C(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, false);
                        continue;
                        break;
                    case 35:
                        g0.q(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 36:
                        g0.u(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 37:
                        g0.x(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 38:
                        g0.F(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 39:
                        g0.w(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 40:
                        g0.t(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 41:
                        g0.s(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 42:
                        g0.o(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 43:
                        g0.E(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 44:
                        g0.r(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 45:
                        g0.z(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 46:
                        g0.A(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 47:
                        g0.B(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 48:
                        g0.C(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, true);
                        continue;
                        break;
                    case 49:
                        g0.v(iArr[length], (List) h79.j(t, iN & 1048575), n0Var, c0Var.m(length));
                        continue;
                        break;
                    case 50:
                        c0Var.O(n0Var, i6, h79.j(t, iN & 1048575), length);
                        continue;
                        break;
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                        if (c0Var.r(t, i6, length)) {
                            double dDoubleValue = ((Double) h79.j(t, iN & 1048575)).doubleValue();
                            CodedOutputStream codedOutputStream3 = ((h) n0Var).a;
                            codedOutputStream3.getClass();
                            codedOutputStream3.k0(i6, Double.doubleToRawLongBits(dDoubleValue));
                        } else {
                            continue;
                        }
                        break;
                    case 52:
                        if (c0Var.r(t, i6, length)) {
                            float fFloatValue = ((Float) h79.j(t, iN & 1048575)).floatValue();
                            CodedOutputStream codedOutputStream4 = ((h) n0Var).a;
                            codedOutputStream4.getClass();
                            codedOutputStream4.i0(i6, Float.floatToRawIntBits(fFloatValue));
                        } else {
                            continue;
                        }
                        break;
                    case 53:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).f(i6, A(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 54:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).a.x0(i6, A(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).e(i6, z(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 56:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).c(i6, A(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 57:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).b(i6, z(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 58:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).a.e0(i6, ((Boolean) h79.j(t, iN & 1048575)).booleanValue());
                        } else {
                            continue;
                        }
                        break;
                    case 59:
                        if (c0Var.r(t, i6, length)) {
                            P(i6, h79.j(t, iN & 1048575), n0Var);
                        } else {
                            continue;
                        }
                        break;
                    case 60:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).g(i6, h79.j(t, iN & 1048575), c0Var.m(length));
                        } else {
                            continue;
                        }
                        break;
                    case RectListKt.BitOffsetForFocusable /* 61 */:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).a(i6, (fx0) h79.j(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case RectListKt.BitOffsetForGesturable /* 62 */:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).a.v0(i6, z(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 63:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).a.m0(i6, z(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 64:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).a.i0(i6, z(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 65:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).a.k0(i6, A(t, iN & 1048575));
                        } else {
                            continue;
                        }
                        break;
                    case 66:
                        if (c0Var.r(t, i6, length)) {
                            int iZ = z(t, iN & 1048575);
                            ((h) n0Var).a.v0(i6, (iZ >> 31) ^ (iZ << 1));
                        } else {
                            continue;
                        }
                        break;
                    case 67:
                        if (c0Var.r(t, i6, length)) {
                            long jA = A(t, iN & 1048575);
                            ((h) n0Var).a.x0(i6, (jA << 1) ^ (jA >> 63));
                        } else {
                            continue;
                        }
                        break;
                    case 68:
                        if (c0Var.r(t, i6, length)) {
                            ((h) n0Var).d(i6, h79.j(t, iN & 1048575), c0Var.m(length));
                        }
                        break;
                }
            }
            while (entry3 != null) {
                kVar.j(n0Var, entry3);
                entry3 = it2.hasNext() ? (Map.Entry) it2.next() : null;
            }
            return;
        }
        char c = '?';
        if (z2) {
            m<T> mVarC2 = kVar.c(t);
            if (mVarC2.a.isEmpty()) {
                entry = null;
                it = null;
            } else {
                Iterator itJ = mVarC2.j();
                entry = (Map.Entry) itJ.next();
                it = itJ;
            }
        } else {
            entry = null;
            it = null;
        }
        int length2 = iArr.length;
        Unsafe unsafe2 = q;
        int i7 = 1048575;
        int i8 = 0;
        int i9 = 0;
        while (i8 < length2) {
            int iN2 = c0Var.N(i8);
            char c2 = c;
            int i10 = iArr[i8];
            int iM = M(iN2);
            boolean z5 = z3;
            if (iM <= 17) {
                int i11 = iArr[i8 + 2];
                Map.Entry<?, ?> entry4 = entry;
                int i12 = i11 & i5;
                if (i12 != i7) {
                    i9 = i12 == i5 ? 0 : unsafe2.getInt(t, i12);
                    i7 = i12;
                } else {
                    i5 = i5;
                    i11 = i11;
                }
                int i13 = i7;
                i2 = (z5 ? 1 : 0) << (i11 >>> 20);
                i = i13;
                entry2 = entry4;
            } else {
                Map.Entry<?, ?> entry5 = entry;
                i5 = i5;
                i = i7;
                entry2 = entry5;
                i2 = 0;
            }
            while (entry2 != null && kVar.a(entry2) <= i10) {
                kVar.j(n0Var, entry2);
                entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            int i14 = iN2 & i5;
            Iterator it3 = it;
            int i15 = length2;
            long j = i14;
            switch (iM) {
                case 0:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        double dE2 = h79.c.e(t, j);
                        CodedOutputStream codedOutputStream5 = ((h) n0Var).a;
                        codedOutputStream5.getClass();
                        codedOutputStream5.k0(i10, Double.doubleToRawLongBits(dE2));
                    }
                    break;
                case 1:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        float f2 = h79.c.f(t, j);
                        CodedOutputStream codedOutputStream6 = ((h) n0Var).a;
                        codedOutputStream6.getClass();
                        codedOutputStream6.i0(i10, Float.floatToRawIntBits(f2));
                    }
                    break;
                case 2:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).f(i10, unsafe.getLong(t, j));
                    }
                    break;
                case 3:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).a.x0(i10, unsafe.getLong(t, j));
                    }
                    break;
                case 4:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).e(i10, unsafe.getInt(t, j));
                    }
                    break;
                case 5:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).c(i10, unsafe.getLong(t, j));
                    }
                    break;
                case 6:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).b(i10, unsafe.getInt(t, j));
                    }
                    break;
                case 7:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).a.e0(i10, h79.c.b(t, j));
                    }
                    break;
                case 8:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        P(i10, unsafe.getObject(t, j), n0Var);
                    }
                    break;
                case 9:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).g(i10, unsafe.getObject(t, j), c0Var.m(i3));
                    }
                    break;
                case 10:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).a(i10, (fx0) unsafe.getObject(t, j));
                    }
                    break;
                case 11:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).a.v0(i10, unsafe.getInt(t, j));
                    }
                    break;
                case 12:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).a.m0(i10, unsafe.getInt(t, j));
                    }
                    break;
                case 13:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).a.i0(i10, unsafe.getInt(t, j));
                    }
                    break;
                case 14:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).a.k0(i10, unsafe.getLong(t, j));
                    }
                    break;
                case 15:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        int i16 = unsafe.getInt(t, j);
                        ((h) n0Var).a.v0(i10, (i16 >> 31) ^ (i16 << 1));
                    }
                    break;
                case 16:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        long j2 = unsafe.getLong(t, j);
                        z5 = true;
                        ((h) n0Var).a.x0(i10, (j2 << 1) ^ (j2 >> c2));
                    } else {
                        z5 = true;
                    }
                    break;
                case 17:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    if (c0Var.p(t, i3, i, i4, i2)) {
                        ((h) n0Var).d(i10, unsafe.getObject(t, j), c0Var.m(i3));
                    }
                    z5 = true;
                    break;
                case 18:
                    z = false;
                    g0.q(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 19:
                    z = false;
                    g0.u(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 20:
                    z = false;
                    g0.x(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 21:
                    z = false;
                    g0.F(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 22:
                    z = false;
                    g0.w(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 23:
                    z = false;
                    g0.t(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 24:
                    z = false;
                    g0.s(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 25:
                    z = false;
                    g0.o(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 26:
                    g0.D(iArr[i8], (List) unsafe2.getObject(t, j), n0Var);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    z5 = true;
                    break;
                case 27:
                    g0.y(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, c0Var.m(i8));
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    z5 = true;
                    break;
                case 28:
                    g0.p(iArr[i8], (List) unsafe2.getObject(t, j), n0Var);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    z5 = true;
                    break;
                case 29:
                    z = false;
                    g0.E(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 30:
                    z = false;
                    g0.r(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 31:
                    z = false;
                    g0.z(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 32:
                    z = false;
                    g0.A(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 33:
                    z = false;
                    g0.B(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 34:
                    z = false;
                    g0.C(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, false);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z5 = true;
                    break;
                case 35:
                    g0.q(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 36:
                    g0.u(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 37:
                    g0.x(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 38:
                    g0.F(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 39:
                    g0.w(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 40:
                    g0.t(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 41:
                    g0.s(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 42:
                    g0.o(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 43:
                    g0.E(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 44:
                    g0.r(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 45:
                    g0.z(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 46:
                    g0.A(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 47:
                    g0.B(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 48:
                    g0.C(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, z5);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 49:
                    g0.v(iArr[i8], (List) unsafe2.getObject(t, j), n0Var, c0Var.m(i8));
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 50:
                    c0Var.O(n0Var, i10, unsafe2.getObject(t, j), i8);
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (c0Var.r(t, i10, i8)) {
                        double dDoubleValue2 = ((Double) h79.j(t, j)).doubleValue();
                        CodedOutputStream codedOutputStream7 = ((h) n0Var).a;
                        codedOutputStream7.getClass();
                        codedOutputStream7.k0(i10, Double.doubleToRawLongBits(dDoubleValue2));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 52:
                    if (c0Var.r(t, i10, i8)) {
                        float fFloatValue2 = ((Float) h79.j(t, j)).floatValue();
                        CodedOutputStream codedOutputStream8 = ((h) n0Var).a;
                        codedOutputStream8.getClass();
                        codedOutputStream8.i0(i10, Float.floatToRawIntBits(fFloatValue2));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 53:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).f(i10, A(t, j));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 54:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).a.x0(i10, A(t, j));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).e(i10, z(t, j));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 56:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).c(i10, A(t, j));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 57:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).b(i10, z(t, j));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 58:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).a.e0(i10, ((Boolean) h79.j(t, j)).booleanValue());
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 59:
                    if (c0Var.r(t, i10, i8)) {
                        P(i10, unsafe2.getObject(t, j), n0Var);
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 60:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).g(i10, unsafe2.getObject(t, j), c0Var.m(i8));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).a(i10, (fx0) unsafe2.getObject(t, j));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case RectListKt.BitOffsetForGesturable /* 62 */:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).a.v0(i10, z(t, j));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 63:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).a.m0(i10, z(t, j));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 64:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).a.i0(i10, z(t, j));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 65:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).a.k0(i10, A(t, j));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 66:
                    if (c0Var.r(t, i10, i8)) {
                        int iZ2 = z(t, j);
                        ((h) n0Var).a.v0(i10, (iZ2 >> 31) ^ (iZ2 << 1));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 67:
                    if (c0Var.r(t, i10, i8)) {
                        long jA2 = A(t, j);
                        ((h) n0Var).a.x0(i10, (jA2 >> c2) ^ (jA2 << (z5 ? 1L : 0L)));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                case 68:
                    if (c0Var.r(t, i10, i8)) {
                        ((h) n0Var).d(i10, unsafe2.getObject(t, j), c0Var.m(i8));
                    }
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
                default:
                    unsafe = unsafe2;
                    i3 = i8;
                    i4 = i9;
                    z = false;
                    break;
            }
            int i17 = i3 + 3;
            i7 = i;
            i9 = i4;
            entry = entry2;
            unsafe2 = unsafe;
            it = it3;
            c = c2;
            i5 = i5;
            length2 = i15;
            i8 = i17;
            z3 = z5;
            c0Var = this;
        }
        Iterator it4 = it;
        while (entry != null) {
            kVar.j(n0Var, entry);
            entry = it4.hasNext() ? (Map.Entry) it4.next() : null;
        }
        j0Var.r(j0Var.g(t), n0Var);
    }

    /* JADX WARN: Code duplicated, block: B:140:0x0377  */
    @Override // com.google.protobuf.f0
    public final int b(com.google.protobuf.a aVar) {
        int i;
        int iY;
        int iY2;
        int iY3;
        int iA0;
        int iY4;
        int iV;
        int iY5;
        int iY6;
        int iX;
        int iY7;
        int serializedSize;
        int iZ;
        int iY8;
        int iW;
        int iY9;
        int serializedSize2;
        int iC;
        int iY10;
        int size;
        int i2;
        int iY11;
        int iY12;
        int serializedSize3;
        int iY13;
        int iY14;
        int iA1;
        int iX2;
        c0 c0Var = this;
        com.google.protobuf.a aVar2 = aVar;
        int i3 = 0;
        int i4 = 0;
        int iC2 = 0;
        int i5 = 1048575;
        while (true) {
            int[] iArr = c0Var.a;
            if (i3 >= iArr.length) {
                j0<?, ?> j0Var = c0Var.m;
                int iH = j0Var.h(j0Var.g(aVar2)) + iC2;
                if (!c0Var.f) {
                    return iH;
                }
                h0 h0Var = c0Var.n.c(aVar2).a;
                int iE = 0;
                for (int i6 = 0; i6 < h0Var.c.size(); i6++) {
                    Map.Entry<Object, Object> entryC = h0Var.c(i6);
                    iE += m.e((m.b) entryC.getKey(), entryC.getValue());
                }
                for (Map.Entry<Object, Object> entry : h0Var.d()) {
                    iE += m.e((m.b) entry.getKey(), entry.getValue());
                }
                return iH + iE;
            }
            int iN = c0Var.N(i3);
            int iM = M(iN);
            int i7 = iArr[i3];
            int i8 = iArr[i3 + 2];
            int i9 = i8 & 1048575;
            Unsafe unsafe = q;
            if (iM <= 17) {
                if (i9 != i5) {
                    i4 = i9 == 1048575 ? 0 : unsafe.getInt(aVar2, i9);
                    i5 = i9;
                }
                i = 1 << (i8 >>> 20);
            } else {
                i = 0;
            }
            long j = iN & 1048575;
            if (iM >= e93.DOUBLE_LIST_PACKED.a()) {
                e93.SINT64_LIST_PACKED.a();
            }
            switch (iM) {
                case 0:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        iY = CodedOutputStream.Y(i7);
                        iC = iY + 8;
                        iC2 += iC;
                    }
                    break;
                case 1:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        iY2 = CodedOutputStream.Y(i7);
                        iY6 = iY2 + 4;
                        iC2 += iY6;
                    }
                    c0Var = this;
                    aVar2 = aVar;
                    break;
                case 2:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        long j2 = unsafe.getLong(aVar2, j);
                        iY3 = CodedOutputStream.Y(i7);
                        iA0 = CodedOutputStream.a0(j2);
                        iC2 += iA0 + iY3;
                    }
                    c0Var = this;
                    break;
                case 3:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        long j3 = unsafe.getLong(aVar2, j);
                        iY3 = CodedOutputStream.Y(i7);
                        iA0 = CodedOutputStream.a0(j3);
                        iC2 += iA0 + iY3;
                    }
                    c0Var = this;
                    break;
                case 4:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        int i10 = unsafe.getInt(aVar2, j);
                        iY4 = CodedOutputStream.Y(i7);
                        iV = CodedOutputStream.V(i10);
                        iC2 += iV + iY4;
                    }
                    c0Var = this;
                    break;
                case 5:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        iY5 = CodedOutputStream.Y(i7);
                        iY6 = iY5 + 8;
                        iC2 += iY6;
                    }
                    c0Var = this;
                    aVar2 = aVar;
                    break;
                case 6:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        iY2 = CodedOutputStream.Y(i7);
                        iY6 = iY2 + 4;
                        iC2 += iY6;
                    }
                    c0Var = this;
                    aVar2 = aVar;
                    break;
                case 7:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        iY6 = CodedOutputStream.Y(i7) + 1;
                        iC2 += iY6;
                    }
                    c0Var = this;
                    aVar2 = aVar;
                    break;
                case 8:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        Object object = unsafe.getObject(aVar2, j);
                        if (object instanceof fx0) {
                            int iY15 = CodedOutputStream.Y(i7);
                            int size2 = ((fx0) object).size();
                            iX = ej0.c(size2, size2, iY15, iC2);
                        } else {
                            iX = CodedOutputStream.X((String) object) + CodedOutputStream.Y(i7) + iC2;
                        }
                        iC2 = iX;
                    }
                    c0Var = this;
                    break;
                case 9:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        Object object2 = unsafe.getObject(aVar2, j);
                        f0 f0VarM = c0Var.m(i3);
                        Class<?> cls = g0.a;
                        if (object2 instanceof s) {
                            iY8 = CodedOutputStream.Y(i7);
                            iW = CodedOutputStream.W((s) object2);
                            iC = iW + iY8;
                            iC2 += iC;
                        } else {
                            iY7 = CodedOutputStream.Y(i7);
                            serializedSize = ((com.google.protobuf.a) ((a0) object2)).getSerializedSize(f0VarM);
                            iZ = CodedOutputStream.Z(serializedSize);
                            iC = iZ + serializedSize + iY7;
                            iC2 += iC;
                        }
                    }
                    break;
                case 10:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        fx0 fx0Var = (fx0) unsafe.getObject(aVar2, j);
                        int iY16 = CodedOutputStream.Y(i7);
                        int size3 = fx0Var.size();
                        iC2 = ej0.c(size3, size3, iY16, iC2);
                    }
                    c0Var = this;
                    break;
                case 11:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        int i11 = unsafe.getInt(aVar2, j);
                        iY4 = CodedOutputStream.Y(i7);
                        iV = CodedOutputStream.Z(i11);
                        iC2 += iV + iY4;
                    }
                    c0Var = this;
                    break;
                case 12:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        int i12 = unsafe.getInt(aVar2, j);
                        iY4 = CodedOutputStream.Y(i7);
                        iV = CodedOutputStream.V(i12);
                        iC2 += iV + iY4;
                    }
                    c0Var = this;
                    break;
                case 13:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        iY2 = CodedOutputStream.Y(i7);
                        iY6 = iY2 + 4;
                        iC2 += iY6;
                    }
                    c0Var = this;
                    aVar2 = aVar;
                    break;
                case 14:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        iY5 = CodedOutputStream.Y(i7);
                        iY6 = iY5 + 8;
                        iC2 += iY6;
                    }
                    c0Var = this;
                    aVar2 = aVar;
                    break;
                case 15:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        int i13 = unsafe.getInt(aVar2, j);
                        iY4 = CodedOutputStream.Y(i7);
                        iV = CodedOutputStream.Z((i13 >> 31) ^ (i13 << 1));
                        iC2 += iV + iY4;
                    }
                    c0Var = this;
                    break;
                case 16:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        long j4 = unsafe.getLong(aVar2, j);
                        iY3 = CodedOutputStream.Y(i7);
                        iA0 = CodedOutputStream.a0((j4 << 1) ^ (j4 >> 63));
                        iC2 += iA0 + iY3;
                    }
                    c0Var = this;
                    break;
                case 17:
                    if (c0Var.p(aVar2, i3, i5, i4, i)) {
                        a0 a0Var = (a0) unsafe.getObject(aVar2, j);
                        f0 f0VarM2 = c0Var.m(i3);
                        iY9 = CodedOutputStream.Y(i7) * 2;
                        serializedSize2 = ((com.google.protobuf.a) a0Var).getSerializedSize(f0VarM2);
                        iC = serializedSize2 + iY9;
                        iC2 += iC;
                    }
                    break;
                case 18:
                    iC = g0.c(i7, (List) unsafe.getObject(aVar2, j));
                    iC2 += iC;
                    break;
                case 19:
                    iC = g0.b(i7, (List) unsafe.getObject(aVar2, j));
                    iC2 += iC;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls2 = g0.a;
                    if (list.size() == 0) {
                        iY10 = 0;
                    } else {
                        iY10 = (CodedOutputStream.Y(i7) * list.size()) + g0.e(list);
                    }
                    iC2 += iY10;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls3 = g0.a;
                    size = list2.size();
                    if (size == 0) {
                        iY10 = 0;
                    } else {
                        i2 = g0.i(list2);
                        iY11 = CodedOutputStream.Y(i7);
                        iY10 = (iY11 * size) + i2;
                    }
                    iC2 += iY10;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls4 = g0.a;
                    size = list3.size();
                    if (size == 0) {
                        iY10 = 0;
                    } else {
                        i2 = g0.d(list3);
                        iY11 = CodedOutputStream.Y(i7);
                        iY10 = (iY11 * size) + i2;
                    }
                    iC2 += iY10;
                    break;
                case 23:
                    iC = g0.c(i7, (List) unsafe.getObject(aVar2, j));
                    iC2 += iC;
                    break;
                case 24:
                    iC = g0.b(i7, (List) unsafe.getObject(aVar2, j));
                    iC2 += iC;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls5 = g0.a;
                    int size4 = list4.size();
                    iC2 += size4 == 0 ? 0 : (CodedOutputStream.Y(i7) + 1) * size4;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls6 = g0.a;
                    int size5 = list5.size();
                    if (size5 == 0) {
                        iY10 = 0;
                    } else {
                        iY10 = CodedOutputStream.Y(i7) * size5;
                        if (list5 instanceof oo4) {
                            oo4 oo4Var = (oo4) list5;
                            for (int i14 = 0; i14 < size5; i14++) {
                                Object raw = oo4Var.getRaw(i14);
                                if (raw instanceof fx0) {
                                    int size6 = ((fx0) raw).size();
                                    iY10 = CodedOutputStream.Z(size6) + size6 + iY10;
                                } else {
                                    iY10 = CodedOutputStream.X((String) raw) + iY10;
                                }
                            }
                        } else {
                            for (int i15 = 0; i15 < size5; i15++) {
                                Object obj = list5.get(i15);
                                if (obj instanceof fx0) {
                                    int size7 = ((fx0) obj).size();
                                    iY10 = CodedOutputStream.Z(size7) + size7 + iY10;
                                } else {
                                    iY10 = CodedOutputStream.X((String) obj) + iY10;
                                }
                            }
                        }
                    }
                    iC2 += iY10;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(aVar2, j);
                    f0 f0VarM3 = c0Var.m(i3);
                    Class<?> cls7 = g0.a;
                    int size8 = list6.size();
                    if (size8 == 0) {
                        iY12 = 0;
                    } else {
                        iY12 = CodedOutputStream.Y(i7) * size8;
                        for (int i16 = 0; i16 < size8; i16++) {
                            Object obj2 = list6.get(i16);
                            if (obj2 instanceof s) {
                                iY12 = CodedOutputStream.W((s) obj2) + iY12;
                            } else {
                                int serializedSize4 = ((com.google.protobuf.a) ((a0) obj2)).getSerializedSize(f0VarM3);
                                iY12 = CodedOutputStream.Z(serializedSize4) + serializedSize4 + iY12;
                            }
                        }
                    }
                    iC2 += iY12;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls8 = g0.a;
                    int size9 = list7.size();
                    if (size9 == 0) {
                        iY10 = 0;
                    } else {
                        iY10 = CodedOutputStream.Y(i7) * size9;
                        for (int i17 = 0; i17 < list7.size(); i17++) {
                            int size10 = ((fx0) list7.get(i17)).size();
                            iY10 += CodedOutputStream.Z(size10) + size10;
                        }
                    }
                    iC2 += iY10;
                    break;
                case 29:
                    List list8 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls9 = g0.a;
                    size = list8.size();
                    if (size == 0) {
                        iY10 = 0;
                    } else {
                        i2 = g0.h(list8);
                        iY11 = CodedOutputStream.Y(i7);
                        iY10 = (iY11 * size) + i2;
                    }
                    iC2 += iY10;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls10 = g0.a;
                    size = list9.size();
                    if (size == 0) {
                        iY10 = 0;
                    } else {
                        i2 = g0.a(list9);
                        iY11 = CodedOutputStream.Y(i7);
                        iY10 = (iY11 * size) + i2;
                    }
                    iC2 += iY10;
                    break;
                case 31:
                    iC = g0.b(i7, (List) unsafe.getObject(aVar2, j));
                    iC2 += iC;
                    break;
                case 32:
                    iC = g0.c(i7, (List) unsafe.getObject(aVar2, j));
                    iC2 += iC;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls11 = g0.a;
                    size = list10.size();
                    if (size == 0) {
                        iY10 = 0;
                    } else {
                        i2 = g0.f(list10);
                        iY11 = CodedOutputStream.Y(i7);
                        iY10 = (iY11 * size) + i2;
                    }
                    iC2 += iY10;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls12 = g0.a;
                    size = list11.size();
                    if (size == 0) {
                        iY10 = 0;
                    } else {
                        i2 = g0.g(list11);
                        iY11 = CodedOutputStream.Y(i7);
                        iY10 = (iY11 * size) + i2;
                    }
                    iC2 += iY10;
                    break;
                case 35:
                    List list12 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls13 = g0.a;
                    int size11 = list12.size() * 8;
                    if (size11 > 0) {
                        iC2 = ej0.c(size11, CodedOutputStream.Y(i7), size11, iC2);
                    }
                    break;
                case 36:
                    List list13 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls14 = g0.a;
                    int size12 = list13.size() * 4;
                    if (size12 > 0) {
                        iC2 = ej0.c(size12, CodedOutputStream.Y(i7), size12, iC2);
                    }
                    break;
                case 37:
                    int iE2 = g0.e((List) unsafe.getObject(aVar2, j));
                    if (iE2 > 0) {
                        iC2 = ej0.c(iE2, CodedOutputStream.Y(i7), iE2, iC2);
                    }
                    break;
                case 38:
                    int i18 = g0.i((List) unsafe.getObject(aVar2, j));
                    if (i18 > 0) {
                        iC2 = ej0.c(i18, CodedOutputStream.Y(i7), i18, iC2);
                    }
                    break;
                case 39:
                    int iD = g0.d((List) unsafe.getObject(aVar2, j));
                    if (iD > 0) {
                        iC2 = ej0.c(iD, CodedOutputStream.Y(i7), iD, iC2);
                    }
                    break;
                case 40:
                    List list14 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls15 = g0.a;
                    int size13 = list14.size() * 8;
                    if (size13 > 0) {
                        iC2 = ej0.c(size13, CodedOutputStream.Y(i7), size13, iC2);
                    }
                    break;
                case 41:
                    List list15 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls16 = g0.a;
                    int size14 = list15.size() * 4;
                    if (size14 > 0) {
                        iC2 = ej0.c(size14, CodedOutputStream.Y(i7), size14, iC2);
                    }
                    break;
                case 42:
                    List list16 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls17 = g0.a;
                    int size15 = list16.size();
                    if (size15 > 0) {
                        iC2 = ej0.c(size15, CodedOutputStream.Y(i7), size15, iC2);
                    }
                    break;
                case 43:
                    int iH2 = g0.h((List) unsafe.getObject(aVar2, j));
                    if (iH2 > 0) {
                        iC2 = ej0.c(iH2, CodedOutputStream.Y(i7), iH2, iC2);
                    }
                    break;
                case 44:
                    int iA = g0.a((List) unsafe.getObject(aVar2, j));
                    if (iA > 0) {
                        iC2 = ej0.c(iA, CodedOutputStream.Y(i7), iA, iC2);
                    }
                    break;
                case 45:
                    List list17 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls18 = g0.a;
                    int size16 = list17.size() * 4;
                    if (size16 > 0) {
                        iC2 = ej0.c(size16, CodedOutputStream.Y(i7), size16, iC2);
                    }
                    break;
                case 46:
                    List list18 = (List) unsafe.getObject(aVar2, j);
                    Class<?> cls19 = g0.a;
                    int size17 = list18.size() * 8;
                    if (size17 > 0) {
                        iC2 = ej0.c(size17, CodedOutputStream.Y(i7), size17, iC2);
                    }
                    break;
                case 47:
                    int iF = g0.f((List) unsafe.getObject(aVar2, j));
                    if (iF > 0) {
                        iC2 = ej0.c(iF, CodedOutputStream.Y(i7), iF, iC2);
                    }
                    break;
                case 48:
                    int iG = g0.g((List) unsafe.getObject(aVar2, j));
                    if (iG > 0) {
                        iC2 = ej0.c(iG, CodedOutputStream.Y(i7), iG, iC2);
                    }
                    break;
                case 49:
                    List list19 = (List) unsafe.getObject(aVar2, j);
                    f0 f0VarM4 = c0Var.m(i3);
                    Class<?> cls20 = g0.a;
                    int size18 = list19.size();
                    if (size18 == 0) {
                        serializedSize3 = 0;
                    } else {
                        serializedSize3 = 0;
                        for (int i19 = 0; i19 < size18; i19++) {
                            serializedSize3 += ((com.google.protobuf.a) ((a0) list19.get(i19))).getSerializedSize(f0VarM4) + (CodedOutputStream.Y(i7) * 2);
                        }
                    }
                    iC2 += serializedSize3;
                    break;
                case 50:
                    iC = c0Var.o.getSerializedSize(i7, unsafe.getObject(aVar2, j), c0Var.l(i3));
                    iC2 += iC;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (c0Var.r(aVar2, i7, i3)) {
                        iY = CodedOutputStream.Y(i7);
                        iC = iY + 8;
                        iC2 += iC;
                    }
                    break;
                case 52:
                    if (c0Var.r(aVar2, i7, i3)) {
                        iY13 = CodedOutputStream.Y(i7);
                        iC = iY13 + 4;
                        iC2 += iC;
                    }
                    break;
                case 53:
                    if (c0Var.r(aVar2, i7, i3)) {
                        long jA = A(aVar2, j);
                        iY14 = CodedOutputStream.Y(i7);
                        iA1 = CodedOutputStream.a0(jA);
                        iC2 += iA1 + iY14;
                    }
                    break;
                case 54:
                    if (c0Var.r(aVar2, i7, i3)) {
                        long jA2 = A(aVar2, j);
                        iY14 = CodedOutputStream.Y(i7);
                        iA1 = CodedOutputStream.a0(jA2);
                        iC2 += iA1 + iY14;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (c0Var.r(aVar2, i7, i3)) {
                        int iZ2 = z(aVar2, j);
                        iY8 = CodedOutputStream.Y(i7);
                        iW = CodedOutputStream.V(iZ2);
                        iC = iW + iY8;
                        iC2 += iC;
                    }
                    break;
                case 56:
                    if (c0Var.r(aVar2, i7, i3)) {
                        iY = CodedOutputStream.Y(i7);
                        iC = iY + 8;
                        iC2 += iC;
                    }
                    break;
                case 57:
                    if (c0Var.r(aVar2, i7, i3)) {
                        iY13 = CodedOutputStream.Y(i7);
                        iC = iY13 + 4;
                        iC2 += iC;
                    }
                    break;
                case 58:
                    if (c0Var.r(aVar2, i7, i3)) {
                        iC = CodedOutputStream.Y(i7) + 1;
                        iC2 += iC;
                    }
                    break;
                case 59:
                    if (c0Var.r(aVar2, i7, i3)) {
                        Object object3 = unsafe.getObject(aVar2, j);
                        if (object3 instanceof fx0) {
                            int iY17 = CodedOutputStream.Y(i7);
                            int size19 = ((fx0) object3).size();
                            iX2 = ej0.c(size19, size19, iY17, iC2);
                        } else {
                            iX2 = CodedOutputStream.X((String) object3) + CodedOutputStream.Y(i7) + iC2;
                        }
                        iC2 = iX2;
                    }
                    break;
                case 60:
                    if (c0Var.r(aVar2, i7, i3)) {
                        Object object4 = unsafe.getObject(aVar2, j);
                        f0 f0VarM5 = c0Var.m(i3);
                        Class<?> cls21 = g0.a;
                        if (object4 instanceof s) {
                            iY8 = CodedOutputStream.Y(i7);
                            iW = CodedOutputStream.W((s) object4);
                            iC = iW + iY8;
                            iC2 += iC;
                        } else {
                            iY7 = CodedOutputStream.Y(i7);
                            serializedSize = ((com.google.protobuf.a) ((a0) object4)).getSerializedSize(f0VarM5);
                            iZ = CodedOutputStream.Z(serializedSize);
                            iC = iZ + serializedSize + iY7;
                            iC2 += iC;
                        }
                    }
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                    if (c0Var.r(aVar2, i7, i3)) {
                        fx0 fx0Var2 = (fx0) unsafe.getObject(aVar2, j);
                        int iY18 = CodedOutputStream.Y(i7);
                        int size20 = fx0Var2.size();
                        iC2 = ej0.c(size20, size20, iY18, iC2);
                    }
                    break;
                case RectListKt.BitOffsetForGesturable /* 62 */:
                    if (c0Var.r(aVar2, i7, i3)) {
                        int iZ3 = z(aVar2, j);
                        iY8 = CodedOutputStream.Y(i7);
                        iW = CodedOutputStream.Z(iZ3);
                        iC = iW + iY8;
                        iC2 += iC;
                    }
                    break;
                case 63:
                    if (c0Var.r(aVar2, i7, i3)) {
                        int iZ4 = z(aVar2, j);
                        iY8 = CodedOutputStream.Y(i7);
                        iW = CodedOutputStream.V(iZ4);
                        iC = iW + iY8;
                        iC2 += iC;
                    }
                    break;
                case 64:
                    if (c0Var.r(aVar2, i7, i3)) {
                        iY13 = CodedOutputStream.Y(i7);
                        iC = iY13 + 4;
                        iC2 += iC;
                    }
                    break;
                case 65:
                    if (c0Var.r(aVar2, i7, i3)) {
                        iY = CodedOutputStream.Y(i7);
                        iC = iY + 8;
                        iC2 += iC;
                    }
                    break;
                case 66:
                    if (c0Var.r(aVar2, i7, i3)) {
                        int iZ5 = z(aVar2, j);
                        iY8 = CodedOutputStream.Y(i7);
                        iW = CodedOutputStream.Z((iZ5 >> 31) ^ (iZ5 << 1));
                        iC = iW + iY8;
                        iC2 += iC;
                    }
                    break;
                case 67:
                    if (c0Var.r(aVar2, i7, i3)) {
                        long jA3 = A(aVar2, j);
                        iY14 = CodedOutputStream.Y(i7);
                        iA1 = CodedOutputStream.a0((jA3 << 1) ^ (jA3 >> 63));
                        iC2 += iA1 + iY14;
                    }
                    break;
                case 68:
                    if (c0Var.r(aVar2, i7, i3)) {
                        a0 a0Var2 = (a0) unsafe.getObject(aVar2, j);
                        f0 f0VarM6 = c0Var.m(i3);
                        iY9 = CodedOutputStream.Y(i7) * 2;
                        serializedSize2 = ((com.google.protobuf.a) a0Var2).getSerializedSize(f0VarM6);
                        iC = serializedSize2 + iY9;
                        iC2 += iC;
                    }
                    break;
            }
            i3 += 3;
        }
    }

    @Override // com.google.protobuf.f0
    public final void c(T t, byte[] bArr, int i, int i2, d.b bVar) {
        B(t, bArr, i, i2, 0, bVar);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d7 A[PHI: r3
      0x00d7: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:83:0x01f0, B:41:0x00d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.f0
    public final int d(o oVar) {
        int i;
        int iB;
        int i2;
        int[] iArr = this.a;
        int length = iArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int iN = N(i4);
            int i5 = iArr[i4];
            long j = 1048575 & iN;
            int i6 = 1237;
            int iHashCode = 37;
            switch (M(iN)) {
                case 0:
                    i = i3 * 53;
                    iB = q.b(Double.doubleToLongBits(h79.c.e(oVar, j)));
                    i3 = iB + i;
                    break;
                case 1:
                    i = i3 * 53;
                    iB = Float.floatToIntBits(h79.c.f(oVar, j));
                    i3 = iB + i;
                    break;
                case 2:
                    i = i3 * 53;
                    iB = q.b(h79.i(oVar, j));
                    i3 = iB + i;
                    break;
                case 3:
                    i = i3 * 53;
                    iB = q.b(h79.i(oVar, j));
                    i3 = iB + i;
                    break;
                case 4:
                    i = i3 * 53;
                    iB = h79.h(oVar, j);
                    i3 = iB + i;
                    break;
                case 5:
                    i = i3 * 53;
                    iB = q.b(h79.i(oVar, j));
                    i3 = iB + i;
                    break;
                case 6:
                    i = i3 * 53;
                    iB = h79.h(oVar, j);
                    i3 = iB + i;
                    break;
                case 7:
                    i2 = i3 * 53;
                    boolean zB = h79.c.b(oVar, j);
                    Charset charset = q.a;
                    if (zB) {
                        i6 = 1231;
                    }
                    i3 = i6 + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    iB = ((String) h79.j(oVar, j)).hashCode();
                    i3 = iB + i;
                    break;
                case 9:
                    Object objJ = h79.j(oVar, j);
                    if (objJ != null) {
                        iHashCode = objJ.hashCode();
                    }
                    i3 = (i3 * 53) + iHashCode;
                    break;
                case 10:
                    i = i3 * 53;
                    iB = h79.j(oVar, j).hashCode();
                    i3 = iB + i;
                    break;
                case 11:
                    i = i3 * 53;
                    iB = h79.h(oVar, j);
                    i3 = iB + i;
                    break;
                case 12:
                    i = i3 * 53;
                    iB = h79.h(oVar, j);
                    i3 = iB + i;
                    break;
                case 13:
                    i = i3 * 53;
                    iB = h79.h(oVar, j);
                    i3 = iB + i;
                    break;
                case 14:
                    i = i3 * 53;
                    iB = q.b(h79.i(oVar, j));
                    i3 = iB + i;
                    break;
                case 15:
                    i = i3 * 53;
                    iB = h79.h(oVar, j);
                    i3 = iB + i;
                    break;
                case 16:
                    i = i3 * 53;
                    iB = q.b(h79.i(oVar, j));
                    i3 = iB + i;
                    break;
                case 17:
                    Object objJ2 = h79.j(oVar, j);
                    if (objJ2 != null) {
                        iHashCode = objJ2.hashCode();
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
                    i = i3 * 53;
                    iB = h79.j(oVar, j).hashCode();
                    i3 = iB + i;
                    break;
                case 50:
                    i = i3 * 53;
                    iB = h79.j(oVar, j).hashCode();
                    i3 = iB + i;
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = q.b(Double.doubleToLongBits(((Double) h79.j(oVar, j)).doubleValue()));
                        i3 = iB + i;
                    }
                    break;
                case 52:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = Float.floatToIntBits(((Float) h79.j(oVar, j)).floatValue());
                        i3 = iB + i;
                    }
                    break;
                case 53:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = q.b(A(oVar, j));
                        i3 = iB + i;
                    }
                    break;
                case 54:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = q.b(A(oVar, j));
                        i3 = iB + i;
                    }
                    break;
                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = z(oVar, j);
                        i3 = iB + i;
                    }
                    break;
                case 56:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = q.b(A(oVar, j));
                        i3 = iB + i;
                    }
                    break;
                case 57:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = z(oVar, j);
                        i3 = iB + i;
                    }
                    break;
                case 58:
                    if (r(oVar, i5, i4)) {
                        i2 = i3 * 53;
                        boolean zBooleanValue = ((Boolean) h79.j(oVar, j)).booleanValue();
                        Charset charset2 = q.a;
                        if (zBooleanValue) {
                            i6 = 1231;
                        }
                        i3 = i6 + i2;
                    }
                    break;
                case 59:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = ((String) h79.j(oVar, j)).hashCode();
                        i3 = iB + i;
                    }
                    break;
                case 60:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = h79.j(oVar, j).hashCode();
                        i3 = iB + i;
                    }
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = h79.j(oVar, j).hashCode();
                        i3 = iB + i;
                    }
                    break;
                case RectListKt.BitOffsetForGesturable /* 62 */:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = z(oVar, j);
                        i3 = iB + i;
                    }
                    break;
                case 63:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = z(oVar, j);
                        i3 = iB + i;
                    }
                    break;
                case 64:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = z(oVar, j);
                        i3 = iB + i;
                    }
                    break;
                case 65:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = q.b(A(oVar, j));
                        i3 = iB + i;
                    }
                    break;
                case 66:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = z(oVar, j);
                        i3 = iB + i;
                    }
                    break;
                case 67:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = q.b(A(oVar, j));
                        i3 = iB + i;
                    }
                    break;
                case 68:
                    if (r(oVar, i5, i4)) {
                        i = i3 * 53;
                        iB = h79.j(oVar, j).hashCode();
                        i3 = iB + i;
                    }
                    break;
            }
        }
        int iHashCode2 = this.m.g(oVar).hashCode() + (i3 * 53);
        if (!this.f) {
            return iHashCode2;
        }
        return this.n.c(oVar).a.hashCode() + (iHashCode2 * 53);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 23661. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // com.google.protobuf.f0
    public final void e(java.lang.Object r21, com.google.protobuf.g r22, com.google.protobuf.j r23) {
        /*
            Method dump skipped, instruction units count: 2366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.c0.e(java.lang.Object, com.google.protobuf.g, com.google.protobuf.j):void");
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003b  */
    @Override // com.google.protobuf.f0
    public final boolean f(o oVar, o oVar2) {
        int[] iArr = this.a;
        int length = iArr.length;
        int i = 0;
        while (true) {
            boolean zM = true;
            if (i < length) {
                int iN = N(i);
                long j = iN & 1048575;
                switch (M(iN)) {
                    case 0:
                        if (!g(oVar, oVar2, i)) {
                            zM = false;
                        } else {
                            h79.d dVar = h79.c;
                            if (Double.doubleToLongBits(dVar.e(oVar, j)) != Double.doubleToLongBits(dVar.e(oVar2, j))) {
                                zM = false;
                            }
                        }
                        break;
                    case 1:
                        if (!g(oVar, oVar2, i)) {
                            zM = false;
                        } else {
                            h79.d dVar2 = h79.c;
                            if (Float.floatToIntBits(dVar2.f(oVar, j)) != Float.floatToIntBits(dVar2.f(oVar2, j))) {
                                zM = false;
                            }
                        }
                        break;
                    case 2:
                        if (!g(oVar, oVar2, i) || h79.i(oVar, j) != h79.i(oVar2, j)) {
                            zM = false;
                        }
                        break;
                    case 3:
                        if (!g(oVar, oVar2, i) || h79.i(oVar, j) != h79.i(oVar2, j)) {
                            zM = false;
                        }
                        break;
                    case 4:
                        if (!g(oVar, oVar2, i) || h79.h(oVar, j) != h79.h(oVar2, j)) {
                            zM = false;
                        }
                        break;
                    case 5:
                        if (!g(oVar, oVar2, i) || h79.i(oVar, j) != h79.i(oVar2, j)) {
                            zM = false;
                        }
                        break;
                    case 6:
                        if (!g(oVar, oVar2, i) || h79.h(oVar, j) != h79.h(oVar2, j)) {
                            zM = false;
                        }
                        break;
                    case 7:
                        if (!g(oVar, oVar2, i)) {
                            zM = false;
                        } else {
                            h79.d dVar3 = h79.c;
                            if (dVar3.b(oVar, j) != dVar3.b(oVar2, j)) {
                                zM = false;
                            }
                        }
                        break;
                    case 8:
                        if (!g(oVar, oVar2, i) || !g0.m(h79.j(oVar, j), h79.j(oVar2, j))) {
                            zM = false;
                        }
                        break;
                    case 9:
                        if (!g(oVar, oVar2, i) || !g0.m(h79.j(oVar, j), h79.j(oVar2, j))) {
                            zM = false;
                        }
                        break;
                    case 10:
                        if (!g(oVar, oVar2, i) || !g0.m(h79.j(oVar, j), h79.j(oVar2, j))) {
                            zM = false;
                        }
                        break;
                    case 11:
                        if (!g(oVar, oVar2, i) || h79.h(oVar, j) != h79.h(oVar2, j)) {
                            zM = false;
                        }
                        break;
                    case 12:
                        if (!g(oVar, oVar2, i) || h79.h(oVar, j) != h79.h(oVar2, j)) {
                            zM = false;
                        }
                        break;
                    case 13:
                        if (!g(oVar, oVar2, i) || h79.h(oVar, j) != h79.h(oVar2, j)) {
                            zM = false;
                        }
                        break;
                    case 14:
                        if (!g(oVar, oVar2, i) || h79.i(oVar, j) != h79.i(oVar2, j)) {
                            zM = false;
                        }
                        break;
                    case 15:
                        if (!g(oVar, oVar2, i) || h79.h(oVar, j) != h79.h(oVar2, j)) {
                            zM = false;
                        }
                        break;
                    case 16:
                        if (!g(oVar, oVar2, i) || h79.i(oVar, j) != h79.i(oVar2, j)) {
                            zM = false;
                        }
                        break;
                    case 17:
                        if (!g(oVar, oVar2, i) || !g0.m(h79.j(oVar, j), h79.j(oVar2, j))) {
                            zM = false;
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
                        zM = g0.m(h79.j(oVar, j), h79.j(oVar2, j));
                        break;
                    case 50:
                        zM = g0.m(h79.j(oVar, j), h79.j(oVar2, j));
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
                        if (h79.h(oVar, j2) != h79.h(oVar2, j2) || !g0.m(h79.j(oVar, j), h79.j(oVar2, j))) {
                            zM = false;
                        }
                        break;
                }
                if (zM) {
                    i += 3;
                }
            } else {
                j0<?, ?> j0Var = this.m;
                if (j0Var.g(oVar).equals(j0Var.g(oVar2))) {
                    if (!this.f) {
                        return true;
                    }
                    k<?> kVar = this.n;
                    return kVar.c(oVar).equals(kVar.c(oVar2));
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean g(o oVar, o oVar2, int i) {
        return o(oVar, i) == o(oVar2, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.google.protobuf.f0] */
    /* JADX WARN: Type inference failed for: r2v8, types: [com.google.protobuf.f0] */
    /* JADX WARN: Type inference failed for: r2v9, types: [com.google.protobuf.f0] */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21, types: [com.google.protobuf.f0] */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    @Override // com.google.protobuf.f0
    public final boolean isInitialized(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.i) {
            int i6 = this.h[i5];
            int[] iArr = this.a;
            int i7 = iArr[i6];
            int iN = N(i6);
            int i8 = iArr[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = q.getInt(t, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                int i11 = i4;
                i = i3;
                i2 = i11;
            }
            if ((268435456 & iN) == 0 || p(t, i6, i, i2, i10)) {
                int iM = M(iN);
                if (iM != 9 && iM != 17) {
                    if (iM != 27) {
                        if (iM == 60 || iM == 68) {
                            if (!r(t, i7, i6) || m(i6).isInitialized(h79.j(t, iN & 1048575))) {
                                i5++;
                                i3 = i;
                                i4 = i2;
                            }
                        } else if (iM != 49) {
                            if (iM != 50) {
                                continue;
                            } else {
                                Object objJ = h79.j(t, iN & 1048575);
                                y yVar = this.o;
                                x xVarForMapData = yVar.forMapData(objJ);
                                if (!xVarForMapData.isEmpty() && yVar.forMapMetadata(l(i6)).b.a() == vi9.MESSAGE) {
                                    ?? A = 0;
                                    for (Object obj : xVarForMapData.values()) {
                                        if (A == 0) {
                                            A = A;
                                            A = rs6.c.a(obj.getClass());
                                        }
                                        A = A;
                                        if (!A.isInitialized(obj)) {
                                        }
                                    }
                                }
                            }
                            i5++;
                            i3 = i;
                            i4 = i2;
                        }
                    }
                    List list = (List) h79.j(t, iN & 1048575);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        ?? M = m(i6);
                        for (int i12 = 0; i12 < list.size(); i12++) {
                            if (M.isInitialized(list.get(i12))) {
                            }
                        }
                    }
                    i5++;
                    i3 = i;
                    i4 = i2;
                } else if (!p(t, i6, i, i2, i10) || m(i6).isInitialized(h79.j(t, iN & 1048575))) {
                    i5++;
                    i3 = i;
                    i4 = i2;
                }
            }
        }
        return !this.f || this.n.c(t).h();
    }

    public final <UT, UB> UB j(Object obj, int i, UB ub, j0<UT, UB> j0Var, Object obj2) {
        q.e eVarK;
        int i2 = this.a[i];
        Object objJ = h79.j(obj, N(i) & 1048575);
        if (objJ == null || (eVarK = k(i)) == null) {
            return ub;
        }
        y yVar = this.o;
        x xVarForMutableMapData = yVar.forMutableMapData(objJ);
        w.a<?, ?> aVarForMapMetadata = yVar.forMapMetadata(l(i));
        Iterator it = xVarForMutableMapData.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!eVarK.isInRange(((Integer) entry.getValue()).intValue())) {
                if (ub == null) {
                    ub = (UB) j0Var.f(obj2);
                }
                int iA = w.a(aVarForMapMetadata, entry.getKey(), entry.getValue());
                byte[] bArr = new byte[iA];
                CodedOutputStream.b bVar = new CodedOutputStream.b(bArr, 0, iA);
                try {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    m.o(bVar, aVarForMapMetadata.a, 1, key);
                    m.o(bVar, aVarForMapMetadata.b, 2, value);
                    bVar.U();
                    j0Var.d(ub, i2, new fx0.h(bArr));
                    it.remove();
                } catch (IOException e) {
                    ti0.f(e);
                    return null;
                }
            }
        }
        return ub;
    }

    public final q.e k(int i) {
        return (q.e) this.b[((i / 3) * 2) + 1];
    }

    public final Object l(int i) {
        return this.b[(i / 3) * 2];
    }

    public final f0 m(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.b;
        f0 f0Var = (f0) objArr[i2];
        if (f0Var != null) {
            return f0Var;
        }
        f0<T> f0VarA = rs6.c.a((Class) objArr[i2 + 1]);
        objArr[i2] = f0VarA;
        return f0VarA;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0067  */
    /* JADX WARN: Code duplicated, block: B:27:0x006d  */
    /* JADX WARN: Code duplicated, block: B:40:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.f0
    public final void makeImmutable(T t) {
        if (q(t)) {
            if (t instanceof o) {
                o oVar = (o) t;
                oVar.clearMemoizedSerializedSize();
                oVar.clearMemoizedHashCode();
                oVar.markImmutable();
            }
            int[] iArr = this.a;
            int length = iArr.length;
            for (int i = 0; i < length; i += 3) {
                int iN = N(i);
                long j = 1048575 & iN;
                int iM = M(iN);
                Unsafe unsafe = q;
                if (iM != 9) {
                    if (iM != 60 && iM != 68) {
                        switch (iM) {
                            case 17:
                                if (o(t, i)) {
                                    m(i).makeImmutable(unsafe.getObject(t, j));
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
                                this.l.a(t, j);
                                break;
                            case 50:
                                Object object = unsafe.getObject(t, j);
                                if (object != null) {
                                    unsafe.putObject(t, j, this.o.toImmutable(object));
                                }
                                break;
                        }
                    } else if (r(t, iArr[i], i)) {
                        m(i).makeImmutable(unsafe.getObject(t, j));
                    }
                } else if (o(t, i)) {
                    m(i).makeImmutable(unsafe.getObject(t, j));
                }
            }
            this.m.j(t);
            if (this.f) {
                this.n.f(t);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:9:0x0022  */
    @Override // com.google.protobuf.f0
    public final void mergeFrom(T t, T t2) {
        T t3;
        h(t);
        t2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                T t4 = t;
                Class<?> cls = g0.a;
                j0<?, ?> j0Var = this.m;
                j0Var.o(t4, j0Var.k(j0Var.g(t4), j0Var.g(t2)));
                if (this.f) {
                    g0.l(this.n, t4, t2);
                    return;
                }
                return;
            }
            int iN = N(i);
            long j = 1048575 & iN;
            int i2 = iArr[i];
            switch (M(iN)) {
                case 0:
                    if (!o(t2, i)) {
                        t3 = t;
                    } else {
                        h79.d dVar = h79.c;
                        t3 = t;
                        dVar.i(t3, j, dVar.e(t2, j));
                        H(t3, i);
                    }
                    break;
                case 1:
                    if (o(t2, i)) {
                        h79.d dVar2 = h79.c;
                        dVar2.j(t, j, dVar2.f(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 2:
                    if (o(t2, i)) {
                        h79.p(t, j, h79.i(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 3:
                    if (o(t2, i)) {
                        h79.p(t, j, h79.i(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 4:
                    if (o(t2, i)) {
                        h79.o(t, j, h79.h(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 5:
                    if (o(t2, i)) {
                        h79.p(t, j, h79.i(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 6:
                    if (o(t2, i)) {
                        h79.o(t, j, h79.h(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 7:
                    if (o(t2, i)) {
                        h79.d dVar3 = h79.c;
                        dVar3.g(t, j, dVar3.b(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 8:
                    if (o(t2, i)) {
                        h79.q(t, j, h79.j(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 9:
                    t(t, t2, i);
                    t3 = t;
                    break;
                case 10:
                    if (o(t2, i)) {
                        h79.q(t, j, h79.j(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 11:
                    if (o(t2, i)) {
                        h79.o(t, j, h79.h(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 12:
                    if (o(t2, i)) {
                        h79.o(t, j, h79.h(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 13:
                    if (o(t2, i)) {
                        h79.o(t, j, h79.h(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 14:
                    if (o(t2, i)) {
                        h79.p(t, j, h79.i(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 15:
                    if (o(t2, i)) {
                        h79.o(t, j, h79.h(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 16:
                    if (o(t2, i)) {
                        h79.p(t, j, h79.i(t2, j));
                        H(t, i);
                    }
                    t3 = t;
                    break;
                case 17:
                    t(t, t2, i);
                    t3 = t;
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
                    this.l.b(t, t2, j);
                    t3 = t;
                    break;
                case 50:
                    Class<?> cls2 = g0.a;
                    h79.q(t, j, this.o.mergeFrom(h79.j(t, j), h79.j(t2, j)));
                    t3 = t;
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
                    if (r(t2, i2, i)) {
                        h79.q(t, j, h79.j(t2, j));
                        I(t, i2, i);
                    }
                    t3 = t;
                    break;
                case 60:
                    u(t, t2, i);
                    t3 = t;
                    break;
                case RectListKt.BitOffsetForFocusable /* 61 */:
                case RectListKt.BitOffsetForGesturable /* 62 */:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (r(t2, i2, i)) {
                        h79.q(t, j, h79.j(t2, j));
                        I(t, i2, i);
                    }
                    t3 = t;
                    break;
                case 68:
                    u(t, t2, i);
                    t3 = t;
                    break;
                default:
                    t3 = t;
                    break;
            }
            i += 3;
            t = t3;
        }
    }

    @Override // com.google.protobuf.f0
    public final T newInstance() {
        return (T) this.k.newInstance(this.e);
    }

    /* JADX WARN: Code duplicated, block: B:69:0x00f0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:70:0x00f1 A[RETURN] */
    public final boolean o(T t, int i) {
        int i2 = this.a[i + 2];
        long j = i2 & 1048575;
        if (j != 1048575) {
            if (((1 << (i2 >>> 20)) & h79.h(t, j)) != 0) {
                return true;
            }
            return false;
        }
        int iN = N(i);
        long j2 = iN & 1048575;
        switch (M(iN)) {
            case 0:
                if (Double.doubleToRawLongBits(h79.c.e(t, j2)) != 0) {
                    return true;
                }
                return false;
            case 1:
                if (Float.floatToRawIntBits(h79.c.f(t, j2)) != 0) {
                    return true;
                }
                return false;
            case 2:
                if (h79.i(t, j2) != 0) {
                    return true;
                }
                return false;
            case 3:
                if (h79.i(t, j2) != 0) {
                    return true;
                }
                return false;
            case 4:
                if (h79.h(t, j2) != 0) {
                    return true;
                }
                return false;
            case 5:
                if (h79.i(t, j2) != 0) {
                    return true;
                }
                return false;
            case 6:
                if (h79.h(t, j2) != 0) {
                    return true;
                }
                return false;
            case 7:
                return h79.c.b(t, j2);
            case 8:
                Object objJ = h79.j(t, j2);
                if (objJ instanceof String) {
                    return !((String) objJ).isEmpty();
                }
                if (objJ instanceof fx0) {
                    return !fx0.c.equals(objJ);
                }
                mi2.b();
                return false;
            case 9:
                if (h79.j(t, j2) != null) {
                    return true;
                }
                return false;
            case 10:
                return !fx0.c.equals(h79.j(t, j2));
            case 11:
                if (h79.h(t, j2) != 0) {
                    return true;
                }
                return false;
            case 12:
                if (h79.h(t, j2) != 0) {
                    return true;
                }
                return false;
            case 13:
                if (h79.h(t, j2) != 0) {
                    return true;
                }
                return false;
            case 14:
                if (h79.i(t, j2) != 0) {
                    return true;
                }
                return false;
            case 15:
                if (h79.h(t, j2) != 0) {
                    return true;
                }
                return false;
            case 16:
                if (h79.i(t, j2) != 0) {
                    return true;
                }
                return false;
            case 17:
                if (h79.j(t, j2) != null) {
                    return true;
                }
                return false;
            default:
                mi2.b();
                return false;
        }
    }

    public final boolean p(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return o(t, i);
        }
        return (i3 & i4) != 0;
    }

    public final boolean r(T t, int i, int i2) {
        return h79.h(t, (long) (this.a[i2 + 2] & 1048575)) == i;
    }

    public final void s(Object obj, int i, Object obj2, j jVar, g gVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        long jN = N(i) & 1048575;
        Object objJ = h79.j(obj, jN);
        y yVar = this.o;
        if (objJ == null) {
            objJ = yVar.a();
            h79.q(obj, jN, objJ);
        } else if (yVar.isImmutable(objJ)) {
            x xVarA = yVar.a();
            yVar.mergeFrom(xVarA, objJ);
            h79.q(obj, jN, xVarA);
            objJ = xVarA;
        }
        x xVarForMutableMapData = yVar.forMutableMapData(objJ);
        w.a<?, ?> aVarForMapMetadata = yVar.forMapMetadata(obj2);
        gVar.x(2);
        f fVar = gVar.a;
        int i2 = fVar.i(fVar.A());
        aVarForMapMetadata.getClass();
        Object obj3 = aVarForMapMetadata.c;
        Object objI = "";
        Object objI2 = obj3;
        while (true) {
            try {
                int iA = gVar.a();
                if (iA == Integer.MAX_VALUE || fVar.e()) {
                    break;
                }
                if (iA == 1) {
                    objI = gVar.i(aVarForMapMetadata.a, null, null);
                } else if (iA != 2) {
                    try {
                        if (!gVar.y()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                        if (!gVar.y()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    }
                } else {
                    objI2 = gVar.i(aVarForMapMetadata.b, obj3.getClass(), jVar);
                }
            } catch (Throwable th) {
                fVar.h(i2);
                throw th;
            }
        }
        xVarForMutableMapData.put(objI, objI2);
        fVar.h(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t(T t, T t2, int i) {
        if (o(t2, i)) {
            long jN = N(i) & 1048575;
            Unsafe unsafe = q;
            Object object = unsafe.getObject(t2, jN);
            if (object == null) {
                mg.c(this.a[i], t2);
                return;
            }
            f0 f0VarM = m(i);
            if (!o(t, i)) {
                if (q(object)) {
                    Object objNewInstance = f0VarM.newInstance();
                    f0VarM.mergeFrom(objNewInstance, object);
                    unsafe.putObject(t, jN, objNewInstance);
                } else {
                    unsafe.putObject(t, jN, object);
                }
                H(t, i);
                return;
            }
            Object object2 = unsafe.getObject(t, jN);
            if (!q(object2)) {
                Object objNewInstance2 = f0VarM.newInstance();
                f0VarM.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(t, jN, objNewInstance2);
                object2 = objNewInstance2;
            }
            f0VarM.mergeFrom(object2, object);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void u(T t, T t2, int i) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (r(t2, i2, i)) {
            long jN = N(i) & 1048575;
            Unsafe unsafe = q;
            Object object = unsafe.getObject(t2, jN);
            if (object == null) {
                mg.c(iArr[i], t2);
                return;
            }
            f0 f0VarM = m(i);
            if (!r(t, i2, i)) {
                if (q(object)) {
                    Object objNewInstance = f0VarM.newInstance();
                    f0VarM.mergeFrom(objNewInstance, object);
                    unsafe.putObject(t, jN, objNewInstance);
                } else {
                    unsafe.putObject(t, jN, object);
                }
                I(t, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(t, jN);
            if (!q(object2)) {
                Object objNewInstance2 = f0VarM.newInstance();
                f0VarM.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(t, jN, objNewInstance2);
                object2 = objNewInstance2;
            }
            f0VarM.mergeFrom(object2, object);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object v(T t, int i) {
        f0 f0VarM = m(i);
        long jN = N(i) & 1048575;
        if (!o(t, i)) {
            return f0VarM.newInstance();
        }
        Object object = q.getObject(t, jN);
        if (q(object)) {
            return object;
        }
        Object objNewInstance = f0VarM.newInstance();
        if (object != null) {
            f0VarM.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object w(T t, int i, int i2) {
        f0 f0VarM = m(i2);
        if (!r(t, i, i2)) {
            return f0VarM.newInstance();
        }
        Object object = q.getObject(t, N(i2) & 1048575);
        if (q(object)) {
            return object;
        }
        Object objNewInstance = f0VarM.newInstance();
        if (object != null) {
            f0VarM.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }
}
