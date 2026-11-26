package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.b;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.c;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.e;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzep;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class lgb {
    public static final lgb c = new lgb();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final eeb a = new eeb();

    /* JADX WARN: Code duplicated, block: B:183:0x03da  */
    /* JADX WARN: Code duplicated, block: B:198:0x0426  */
    /* JADX WARN: Code duplicated, block: B:201:0x042d  */
    /* JADX WARN: Code duplicated, block: B:204:0x043d  */
    public final jib a(Class cls) {
        jib cVar;
        int i;
        int iCharAt;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int[] iArr;
        int i8;
        int i9;
        int i10;
        char cCharAt;
        int i11;
        int i12;
        char cCharAt2;
        int i13;
        char cCharAt3;
        int i14;
        char cCharAt4;
        int i15;
        char cCharAt5;
        int i16;
        char cCharAt6;
        int i17;
        char cCharAt7;
        int i18;
        char cCharAt8;
        Object[] objArr;
        int i19;
        int i20;
        int[] iArr2;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i21;
        int i22;
        int i23;
        int i24;
        Field fieldB;
        char cCharAt9;
        int i25;
        int i26;
        int i27;
        int i28;
        Field fieldB2;
        Field fieldB3;
        int i29;
        char cCharAt10;
        int i30;
        int i31;
        char cCharAt11;
        int i32;
        int i33;
        char cCharAt12;
        int i34;
        char cCharAt13;
        Charset charset = zzep.a;
        if (cls == null) {
            o2.d("messageType");
            return null;
        }
        ConcurrentHashMap concurrentHashMap = this.b;
        jib jibVar = (jib) concurrentHashMap.get(cls);
        if (jibVar != null) {
            return jibVar;
        }
        zd3 zd3Var = e.a;
        zzeh.class.isAssignableFrom(cls);
        zeb zebVarA = ((aeb) this.a.a).a(cls);
        if (zebVarA.zzb()) {
            zd3 zd3Var2 = e.a;
            l7b l7bVar = r7b.a;
            cVar = new c(zd3Var2, zebVarA.zza());
        } else {
            int i35 = hgb.a;
            int i36 = pdb.a;
            zd3 zd3Var3 = e.a;
            l7b l7bVar2 = zebVarA.zzc() + (-1) != 1 ? r7b.a : null;
            int i37 = ueb.a;
            int[] iArr3 = b.l;
            if (!(zebVarA instanceof tgb)) {
                throw null;
            }
            tgb tgbVar = (tgb) zebVarA;
            String str = tgbVar.b;
            int length = str.length();
            int iCharAt2 = 0;
            if (str.charAt(0) >= 55296) {
                int i38 = 1;
                while (true) {
                    i = i38 + 1;
                    if (str.charAt(i38) < 55296) {
                        break;
                    }
                    i38 = i;
                }
            } else {
                i = 1;
            }
            int i39 = i + 1;
            int iCharAt3 = str.charAt(i);
            if (iCharAt3 >= 55296) {
                int i40 = iCharAt3 & 8191;
                int i41 = 13;
                while (true) {
                    i34 = i39 + 1;
                    cCharAt13 = str.charAt(i39);
                    if (cCharAt13 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt13 & 8191) << i41;
                    i41 += 13;
                    i39 = i34;
                }
                iCharAt3 = i40 | (cCharAt13 << i41);
                i39 = i34;
            }
            if (iCharAt3 == 0) {
                i7 = 0;
                i5 = 0;
                i9 = 0;
                iCharAt = 0;
                i6 = 0;
                iArr = b.l;
                i8 = 0;
            } else {
                int i42 = i39 + 1;
                int iCharAt4 = str.charAt(i39);
                if (iCharAt4 >= 55296) {
                    int i43 = iCharAt4 & 8191;
                    int i44 = 13;
                    while (true) {
                        i18 = i42 + 1;
                        cCharAt8 = str.charAt(i42);
                        if (cCharAt8 < 55296) {
                            break;
                        }
                        i43 |= (cCharAt8 & 8191) << i44;
                        i44 += 13;
                        i42 = i18;
                    }
                    iCharAt4 = i43 | (cCharAt8 << i44);
                    i42 = i18;
                }
                int i45 = i42 + 1;
                int iCharAt5 = str.charAt(i42);
                if (iCharAt5 >= 55296) {
                    int i46 = iCharAt5 & 8191;
                    int i47 = 13;
                    while (true) {
                        i17 = i45 + 1;
                        cCharAt7 = str.charAt(i45);
                        if (cCharAt7 < 55296) {
                            break;
                        }
                        i46 |= (cCharAt7 & 8191) << i47;
                        i47 += 13;
                        i45 = i17;
                    }
                    iCharAt5 = i46 | (cCharAt7 << i47);
                    i45 = i17;
                }
                int i48 = i45 + 1;
                int iCharAt6 = str.charAt(i45);
                if (iCharAt6 >= 55296) {
                    int i49 = iCharAt6 & 8191;
                    int i50 = 13;
                    while (true) {
                        i16 = i48 + 1;
                        cCharAt6 = str.charAt(i48);
                        if (cCharAt6 < 55296) {
                            break;
                        }
                        i49 |= (cCharAt6 & 8191) << i50;
                        i50 += 13;
                        i48 = i16;
                    }
                    iCharAt6 = i49 | (cCharAt6 << i50);
                    i48 = i16;
                }
                int i51 = i48 + 1;
                int iCharAt7 = str.charAt(i48);
                if (iCharAt7 >= 55296) {
                    int i52 = iCharAt7 & 8191;
                    int i53 = 13;
                    while (true) {
                        i15 = i51 + 1;
                        cCharAt5 = str.charAt(i51);
                        if (cCharAt5 < 55296) {
                            break;
                        }
                        i52 |= (cCharAt5 & 8191) << i53;
                        i53 += 13;
                        i51 = i15;
                    }
                    iCharAt7 = i52 | (cCharAt5 << i53);
                    i51 = i15;
                }
                int i54 = i51 + 1;
                iCharAt = str.charAt(i51);
                if (iCharAt >= 55296) {
                    int i55 = iCharAt & 8191;
                    int i56 = i54;
                    int i57 = 13;
                    while (true) {
                        i14 = i56 + 1;
                        cCharAt4 = str.charAt(i56);
                        if (cCharAt4 < 55296) {
                            break;
                        }
                        i55 |= (cCharAt4 & 8191) << i57;
                        i57 += 13;
                        i56 = i14;
                    }
                    iCharAt = i55 | (cCharAt4 << i57);
                    i2 = i14;
                } else {
                    i2 = i54;
                }
                int i58 = i2 + 1;
                iCharAt2 = str.charAt(i2);
                if (iCharAt2 >= 55296) {
                    int i59 = iCharAt2 & 8191;
                    int i60 = i58;
                    int i61 = 13;
                    while (true) {
                        i13 = i60 + 1;
                        cCharAt3 = str.charAt(i60);
                        if (cCharAt3 < 55296) {
                            break;
                        }
                        i59 |= (cCharAt3 & 8191) << i61;
                        i61 += 13;
                        i60 = i13;
                    }
                    iCharAt2 = i59 | (cCharAt3 << i61);
                    i3 = i13;
                } else {
                    i3 = i58;
                }
                int i62 = i3 + 1;
                int iCharAt8 = str.charAt(i3);
                if (iCharAt8 >= 55296) {
                    int i63 = iCharAt8 & 8191;
                    int i64 = i62;
                    int i65 = 13;
                    while (true) {
                        i12 = i64 + 1;
                        cCharAt2 = str.charAt(i64);
                        if (cCharAt2 < 55296) {
                            break;
                        }
                        i63 |= (cCharAt2 & 8191) << i65;
                        i65 += 13;
                        i64 = i12;
                    }
                    iCharAt8 = i63 | (cCharAt2 << i65);
                    i4 = i12;
                } else {
                    i4 = i62;
                }
                int i66 = i4 + 1;
                int iCharAt9 = str.charAt(i4);
                if (iCharAt9 >= 55296) {
                    int i67 = iCharAt9 & 8191;
                    int i68 = i66;
                    int i69 = 13;
                    while (true) {
                        i10 = i68 + 1;
                        cCharAt = str.charAt(i68);
                        i11 = i67;
                        if (cCharAt < 55296) {
                            break;
                        }
                        i67 = i11 | ((cCharAt & 8191) << i69);
                        i69 += 13;
                        i68 = i10;
                    }
                    iCharAt9 = i11 | (cCharAt << i69);
                    i66 = i10;
                }
                int i70 = iCharAt9 + iCharAt2 + iCharAt8;
                i5 = iCharAt4 + iCharAt4 + iCharAt5;
                int[] iArr4 = new int[i70];
                int i71 = i66;
                i6 = iCharAt4;
                i39 = i71;
                i7 = iCharAt6;
                iArr = iArr4;
                i8 = iCharAt7;
                i9 = iCharAt9;
            }
            Unsafe unsafe = b.m;
            int i72 = iCharAt2;
            Object[] objArr2 = tgbVar.c;
            Class<?> cls2 = tgbVar.a.getClass();
            int i73 = i9 + i72;
            int i74 = i39;
            int i75 = iCharAt + iCharAt;
            int i76 = i7;
            int[] iArr5 = new int[iCharAt * 3];
            Object[] objArr3 = new Object[i75];
            int i77 = i5;
            int i78 = i74;
            int i79 = i9;
            int i80 = i73;
            int i81 = 0;
            int i82 = 0;
            while (i78 < length) {
                int i83 = i78 + 1;
                int iCharAt10 = str.charAt(i78);
                int i84 = length;
                if (iCharAt10 >= 55296) {
                    int i85 = iCharAt10 & 8191;
                    int i86 = i83;
                    int i87 = 13;
                    while (true) {
                        i33 = i86 + 1;
                        cCharAt12 = str.charAt(i86);
                        objArr = objArr3;
                        if (cCharAt12 < 55296) {
                            break;
                        }
                        i85 |= (cCharAt12 & 8191) << i87;
                        i87 += 13;
                        i86 = i33;
                        objArr3 = objArr;
                    }
                    iCharAt10 = i85 | (cCharAt12 << i87);
                    i19 = i33;
                } else {
                    objArr = objArr3;
                    i19 = i83;
                }
                int i88 = i19 + 1;
                int iCharAt11 = str.charAt(i19);
                if (iCharAt11 >= 55296) {
                    int i89 = iCharAt11 & 8191;
                    int i90 = i88;
                    int i91 = 13;
                    while (true) {
                        i31 = i90 + 1;
                        cCharAt11 = str.charAt(i90);
                        i32 = i89;
                        if (cCharAt11 < 55296) {
                            break;
                        }
                        i89 = i32 | ((cCharAt11 & 8191) << i91);
                        i91 += 13;
                        i90 = i31;
                    }
                    iCharAt11 = i32 | (cCharAt11 << i91);
                    i20 = i31;
                } else {
                    i20 = i88;
                }
                int i92 = i8;
                if ((iCharAt11 & 1024) != 0) {
                    iArr[i82] = i81;
                    i82++;
                }
                int i93 = iCharAt11 & 255;
                int i94 = iCharAt10;
                int i95 = iCharAt11 & 2048;
                if (i93 >= 51) {
                    int i96 = i20 + 1;
                    int iCharAt12 = str.charAt(i20);
                    if (iCharAt12 >= 55296) {
                        int i97 = iCharAt12 & 8191;
                        int i98 = i96;
                        int i99 = 13;
                        while (true) {
                            i29 = i98 + 1;
                            cCharAt10 = str.charAt(i98);
                            i30 = i97;
                            if (cCharAt10 < 55296) {
                                break;
                            }
                            i97 = i30 | ((cCharAt10 & 8191) << i99);
                            i99 += 13;
                            i98 = i29;
                        }
                        iCharAt12 = i30 | (cCharAt10 << i99);
                        i27 = i29;
                    } else {
                        i27 = i96;
                    }
                    int i100 = iCharAt12;
                    int i101 = i93 - 51;
                    int i102 = i27;
                    if (i101 == 9 || i101 == 17) {
                        objArr[ud.b(i81, 3, 1)] = objArr2[i77];
                        i28 = i95;
                        i77++;
                    } else if (i101 != 12) {
                        i28 = i95;
                    } else if (tgbVar.zzc() == 1 || i95 != 0) {
                        objArr[ud.b(i81, 3, 1)] = objArr2[i77];
                        i77++;
                        i28 = i95;
                    } else {
                        i28 = 0;
                    }
                    int i103 = i100 + i100;
                    Object obj = objArr2[i103];
                    int i104 = i28;
                    if (obj instanceof Field) {
                        fieldB2 = (Field) obj;
                    } else {
                        fieldB2 = b.B(cls2, (String) obj);
                        objArr2[i103] = fieldB2;
                    }
                    iArr2 = iArr;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldB2);
                    int i105 = i103 + 1;
                    Object obj2 = objArr2[i105];
                    if (obj2 instanceof Field) {
                        fieldB3 = (Field) obj2;
                    } else {
                        fieldB3 = b.B(cls2, (String) obj2);
                        objArr2[i105] = fieldB3;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldB3);
                    i9 = i9;
                    i24 = iObjectFieldOffset3;
                    i95 = i104;
                    i21 = i102;
                    i23 = 0;
                } else {
                    iArr2 = iArr;
                    int i106 = i77 + 1;
                    Field fieldB4 = b.B(cls2, (String) objArr2[i77]);
                    if (i93 == 9 || i93 == 17) {
                        objArr[ud.b(i81, 3, 1)] = fieldB4.getType();
                    } else {
                        if (i93 != 27) {
                            if (i93 == 49) {
                                i77 += 2;
                                i25 = 3;
                                i26 = 1;
                            } else if (i93 == 12 || i93 == 30 || i93 == 44) {
                                i9 = i9;
                                if (tgbVar.zzc() == 1 || i95 != 0) {
                                    i77 += 2;
                                    objArr[ud.b(i81, 3, 1)] = objArr2[i106];
                                } else {
                                    i77 = i106;
                                    i95 = 0;
                                }
                            } else if (i93 == 50) {
                                int i107 = i77 + 2;
                                i79++;
                                iArr2[i79] = i81;
                                int i108 = i81 / 3;
                                int i109 = i108 + i108;
                                objArr[i109] = objArr2[i106];
                                if (i95 != 0) {
                                    i77 += 3;
                                    objArr[i109 + 1] = objArr2[i107];
                                } else {
                                    i77 = i107;
                                    i95 = 0;
                                }
                                i9 = i9;
                            }
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldB4);
                            iObjectFieldOffset2 = 1048575;
                            if ((iCharAt11 & 4096) != 0 || i93 > 17) {
                                i21 = i20;
                                i22 = 0;
                            } else {
                                int i110 = i20 + 1;
                                int iCharAt13 = str.charAt(i20);
                                if (iCharAt13 >= 55296) {
                                    int i111 = iCharAt13 & 8191;
                                    int i112 = 13;
                                    while (true) {
                                        i21 = i110 + 1;
                                        cCharAt9 = str.charAt(i110);
                                        if (cCharAt9 < 55296) {
                                            break;
                                        }
                                        i111 |= (cCharAt9 & 8191) << i112;
                                        i112 += 13;
                                        i110 = i21;
                                    }
                                    iCharAt13 = i111 | (cCharAt9 << i112);
                                } else {
                                    i21 = i110;
                                }
                                int i113 = (iCharAt13 / 32) + i6 + i6;
                                Object obj3 = objArr2[i113];
                                if (obj3 instanceof Field) {
                                    fieldB = (Field) obj3;
                                } else {
                                    fieldB = b.B(cls2, (String) obj3);
                                    objArr2[i113] = fieldB;
                                }
                                i22 = iCharAt13 % 32;
                                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldB);
                            }
                            if (i93 >= 18 || i93 > 49) {
                                i23 = i22;
                                i24 = iObjectFieldOffset;
                            } else {
                                iArr2[i80] = iObjectFieldOffset;
                                i23 = i22;
                                i24 = iObjectFieldOffset;
                                i80++;
                            }
                        } else {
                            i25 = 3;
                            i26 = 1;
                            i77 += 2;
                        }
                        objArr[ud.b(i81, i25, i26)] = objArr2[i106];
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldB4);
                        iObjectFieldOffset2 = 1048575;
                        if ((iCharAt11 & 4096) != 0) {
                            i21 = i20;
                            i22 = 0;
                        } else {
                            i21 = i20;
                            i22 = 0;
                        }
                        if (i93 >= 18) {
                            i23 = i22;
                            i24 = iObjectFieldOffset;
                        } else {
                            i23 = i22;
                            i24 = iObjectFieldOffset;
                        }
                    }
                    i77 = i106;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldB4);
                    iObjectFieldOffset2 = 1048575;
                    if ((iCharAt11 & 4096) != 0) {
                        i21 = i20;
                        i22 = 0;
                    } else {
                        i21 = i20;
                        i22 = 0;
                    }
                    if (i93 >= 18) {
                        i23 = i22;
                        i24 = iObjectFieldOffset;
                    } else {
                        i23 = i22;
                        i24 = iObjectFieldOffset;
                    }
                }
                int i114 = i81 + 1;
                iArr5[i81] = i94;
                int i115 = i81 + 2;
                String str2 = str;
                iArr5[i114] = ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | (i95 != 0 ? Integer.MIN_VALUE : 0) | (i93 << 20) | i24;
                i81 += 3;
                iArr5[i115] = (i23 << 20) | iObjectFieldOffset2;
                i78 = i21;
                i8 = i92;
                length = i84;
                str = str2;
                objArr3 = objArr;
                i9 = i9;
                iArr = iArr2;
            }
            cVar = new b(iArr5, objArr3, i76, i8, tgbVar.a, iArr, i9, i73, zd3Var3, l7bVar2);
        }
        Charset charset2 = zzep.a;
        jib jibVar2 = (jib) concurrentHashMap.putIfAbsent(cls, cVar);
        return jibVar2 == null ? cVar : jibVar2;
    }
}
