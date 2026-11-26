package defpackage;

import com.google.android.gms.internal.measurement.b;
import com.google.android.gms.internal.measurement.d;
import com.google.android.gms.internal.measurement.e;
import com.google.android.gms.internal.measurement.f;
import com.google.android.gms.internal.measurement.g;
import com.google.android.gms.internal.measurement.zzadu;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class ksa {
    public static final ksa c = new ksa();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final vra a = new vra();

    /* JADX WARN: Code duplicated, block: B:182:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:200:0x0430  */
    /* JADX WARN: Code duplicated, block: B:201:0x0433  */
    /* JADX WARN: Code duplicated, block: B:204:0x0438  */
    /* JADX WARN: Code duplicated, block: B:205:0x043b  */
    /* JADX WARN: Code duplicated, block: B:207:0x043e  */
    /* JADX WARN: Code duplicated, block: B:208:0x0441  */
    public final nsa a(Class cls) {
        nsa eVar;
        int i;
        int iCharAt;
        int iCharAt2;
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
        int i10;
        char cCharAt2;
        int i11;
        char cCharAt3;
        int i12;
        char cCharAt4;
        int i13;
        char cCharAt5;
        int i14;
        char cCharAt6;
        int i15;
        char cCharAt7;
        int i16;
        int i17;
        int i18;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i19;
        int i20;
        int i21;
        Field fieldZ;
        int i22;
        int i23;
        char cCharAt8;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        Field fieldZ2;
        Field fieldZ3;
        int i31;
        char cCharAt9;
        int i32;
        int i33;
        char cCharAt10;
        int i34;
        int i35;
        char cCharAt11;
        int i36;
        int i37;
        char cCharAt12;
        ConcurrentHashMap concurrentHashMap = this.b;
        Object obj = concurrentHashMap.get(cls);
        if (obj != null) {
            return (nsa) obj;
        }
        g gVar = f.a;
        if (!zzadu.class.isAssignableFrom(cls)) {
            int i38 = fqa.a;
        }
        zra zraVarB = this.a.a.b(cls);
        if (zraVarB.zza()) {
            int i39 = fqa.a;
            g gVar2 = f.a;
            b bVar = fra.a;
            eVar = new e(gVar2, zraVarB.zzb());
        } else {
            int i40 = fqa.a;
            int i41 = isa.a;
            int i42 = sra.a;
            g gVar3 = f.a;
            b bVar2 = zraVarB.zzc() + (-1) != 1 ? fra.a : null;
            int i43 = yra.a;
            int[] iArr2 = d.m;
            if (!(zraVarB instanceof msa)) {
                throw null;
            }
            msa msaVar = (msa) zraVarB;
            String str = msaVar.b;
            int length = str.length();
            int iCharAt3 = 0;
            if (str.charAt(0) >= 55296) {
                int i44 = 1;
                while (true) {
                    i = i44 + 1;
                    if (str.charAt(i44) < 55296) {
                        break;
                    }
                    i44 = i;
                }
            } else {
                i = 1;
            }
            int i45 = i + 1;
            int iCharAt4 = str.charAt(i);
            if (iCharAt4 >= 55296) {
                int i46 = iCharAt4 & 8191;
                int i47 = 13;
                while (true) {
                    i37 = i45 + 1;
                    cCharAt12 = str.charAt(i45);
                    if (cCharAt12 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt12 & 8191) << i47;
                    i47 += 13;
                    i45 = i37;
                }
                iCharAt4 = i46 | (cCharAt12 << i47);
                i45 = i37;
            }
            if (iCharAt4 == 0) {
                i7 = 0;
                i6 = 0;
                iCharAt = 0;
                iCharAt2 = 0;
                i4 = 0;
                iArr = d.m;
                i5 = 0;
            } else {
                int i48 = i45 + 1;
                int iCharAt5 = str.charAt(i45);
                if (iCharAt5 >= 55296) {
                    int i49 = iCharAt5 & 8191;
                    int i50 = 13;
                    while (true) {
                        i15 = i48 + 1;
                        cCharAt7 = str.charAt(i48);
                        if (cCharAt7 < 55296) {
                            break;
                        }
                        i49 |= (cCharAt7 & 8191) << i50;
                        i50 += 13;
                        i48 = i15;
                    }
                    iCharAt5 = i49 | (cCharAt7 << i50);
                    i48 = i15;
                }
                int i51 = i48 + 1;
                int iCharAt6 = str.charAt(i48);
                if (iCharAt6 >= 55296) {
                    int i52 = iCharAt6 & 8191;
                    int i53 = 13;
                    while (true) {
                        i14 = i51 + 1;
                        cCharAt6 = str.charAt(i51);
                        if (cCharAt6 < 55296) {
                            break;
                        }
                        i52 |= (cCharAt6 & 8191) << i53;
                        i53 += 13;
                        i51 = i14;
                    }
                    iCharAt6 = i52 | (cCharAt6 << i53);
                    i51 = i14;
                }
                int i54 = i51 + 1;
                int iCharAt7 = str.charAt(i51);
                if (iCharAt7 >= 55296) {
                    int i55 = iCharAt7 & 8191;
                    int i56 = 13;
                    while (true) {
                        i13 = i54 + 1;
                        cCharAt5 = str.charAt(i54);
                        if (cCharAt5 < 55296) {
                            break;
                        }
                        i55 |= (cCharAt5 & 8191) << i56;
                        i56 += 13;
                        i54 = i13;
                    }
                    iCharAt7 = i55 | (cCharAt5 << i56);
                    i54 = i13;
                }
                int i57 = i54 + 1;
                iCharAt = str.charAt(i54);
                if (iCharAt >= 55296) {
                    int i58 = iCharAt & 8191;
                    int i59 = 13;
                    while (true) {
                        i12 = i57 + 1;
                        cCharAt4 = str.charAt(i57);
                        if (cCharAt4 < 55296) {
                            break;
                        }
                        i58 |= (cCharAt4 & 8191) << i59;
                        i59 += 13;
                        i57 = i12;
                    }
                    iCharAt = i58 | (cCharAt4 << i59);
                    i57 = i12;
                }
                int i60 = i57 + 1;
                iCharAt2 = str.charAt(i57);
                if (iCharAt2 >= 55296) {
                    int i61 = iCharAt2 & 8191;
                    int i62 = i60;
                    int i63 = 13;
                    while (true) {
                        i11 = i62 + 1;
                        cCharAt3 = str.charAt(i62);
                        if (cCharAt3 < 55296) {
                            break;
                        }
                        i61 |= (cCharAt3 & 8191) << i63;
                        i63 += 13;
                        i62 = i11;
                    }
                    iCharAt2 = i61 | (cCharAt3 << i63);
                    i2 = i11;
                } else {
                    i2 = i60;
                }
                int i64 = i2 + 1;
                iCharAt3 = str.charAt(i2);
                if (iCharAt3 >= 55296) {
                    int i65 = iCharAt3 & 8191;
                    int i66 = i64;
                    int i67 = 13;
                    while (true) {
                        i10 = i66 + 1;
                        cCharAt2 = str.charAt(i66);
                        if (cCharAt2 < 55296) {
                            break;
                        }
                        i65 |= (cCharAt2 & 8191) << i67;
                        i67 += 13;
                        i66 = i10;
                    }
                    iCharAt3 = i65 | (cCharAt2 << i67);
                    i3 = i10;
                } else {
                    i3 = i64;
                }
                int i68 = i3 + 1;
                if (str.charAt(i3) >= 55296) {
                    do {
                        i9 = i68;
                        i68 = i9 + 1;
                    } while (str.charAt(i9) >= 55296);
                }
                int i69 = i68;
                int i70 = i69 + 1;
                int iCharAt8 = str.charAt(i69);
                if (iCharAt8 >= 55296) {
                    int i71 = iCharAt8 & 8191;
                    int i72 = i70;
                    int i73 = 13;
                    while (true) {
                        i8 = i72 + 1;
                        cCharAt = str.charAt(i72);
                        if (cCharAt < 55296) {
                            break;
                        }
                        i71 |= (cCharAt & 8191) << i73;
                        i73 += 13;
                        i72 = i8;
                    }
                    iCharAt8 = i71 | (cCharAt << i73);
                    i70 = i8;
                }
                i4 = iCharAt5 + iCharAt5 + iCharAt6;
                int i74 = iCharAt8;
                iArr = new int[iCharAt8 + iCharAt3 + iCharAt5];
                i5 = iCharAt7;
                i6 = i74;
                i7 = iCharAt5;
                i45 = i70;
            }
            Unsafe unsafe = d.n;
            int i75 = i7;
            Object[] objArr = msaVar.c;
            Class<?> cls2 = msaVar.a.getClass();
            int i76 = iCharAt3 + i6;
            int i77 = iCharAt2 + iCharAt2;
            int[] iArr3 = new int[iCharAt2 * 3];
            Object[] objArr2 = new Object[i77];
            int i78 = i6;
            int i79 = i76;
            int i80 = i45;
            int i81 = 0;
            int i82 = 0;
            while (i80 < length) {
                int i83 = i80 + 1;
                int iCharAt9 = str.charAt(i80);
                int i84 = length;
                if (iCharAt9 >= 55296) {
                    int i85 = iCharAt9 & 8191;
                    int i86 = i83;
                    int i87 = 13;
                    while (true) {
                        i35 = i86 + 1;
                        cCharAt11 = str.charAt(i86);
                        i36 = i85;
                        if (cCharAt11 < 55296) {
                            break;
                        }
                        i85 = i36 | ((cCharAt11 & 8191) << i87);
                        i87 += 13;
                        i86 = i35;
                    }
                    iCharAt9 = i36 | (cCharAt11 << i87);
                    i16 = i35;
                } else {
                    i16 = i83;
                }
                int i88 = i16 + 1;
                int iCharAt10 = str.charAt(i16);
                int i89 = iCharAt9;
                if (iCharAt10 >= 55296) {
                    int i90 = iCharAt10 & 8191;
                    int i91 = i88;
                    int i92 = 13;
                    while (true) {
                        i33 = i91 + 1;
                        cCharAt10 = str.charAt(i91);
                        i34 = i90;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i90 = i34 | ((cCharAt10 & 8191) << i92);
                        i92 += 13;
                        i91 = i33;
                    }
                    iCharAt10 = i34 | (cCharAt10 << i92);
                    i17 = i33;
                } else {
                    i17 = i88;
                }
                int i93 = i5;
                if ((iCharAt10 & 1024) != 0) {
                    iArr[i82] = i81;
                    i82++;
                }
                int i94 = iCharAt10 & 255;
                int[] iArr4 = iArr;
                int i95 = iCharAt10 & 2048;
                if (i94 >= 51) {
                    int i96 = i17 + 1;
                    int iCharAt11 = str.charAt(i17);
                    if (iCharAt11 >= 55296) {
                        int i97 = iCharAt11 & 8191;
                        int i98 = i96;
                        int i99 = 13;
                        while (true) {
                            i31 = i98 + 1;
                            cCharAt9 = str.charAt(i98);
                            i32 = i97;
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i97 = i32 | ((cCharAt9 & 8191) << i99);
                            i99 += 13;
                            i98 = i31;
                        }
                        iCharAt11 = i32 | (cCharAt9 << i99);
                        i29 = i31;
                    } else {
                        i29 = i96;
                    }
                    int i100 = iCharAt11;
                    int i101 = i94 - 51;
                    i19 = i29;
                    if (i101 == 9 || i101 == 17) {
                        objArr2[ud.b(i81, 3, 1)] = objArr[i4];
                        i30 = i95;
                        i4++;
                    } else if (i101 != 12) {
                        i30 = i95;
                    } else if (msaVar.zzc() == 1 || i95 != 0) {
                        objArr2[ud.b(i81, 3, 1)] = objArr[i4];
                        i4++;
                        i30 = i95;
                    } else {
                        i30 = 0;
                    }
                    int i102 = i100 + i100;
                    Object obj2 = objArr[i102];
                    int i103 = i30;
                    if (obj2 instanceof Field) {
                        fieldZ2 = (Field) obj2;
                    } else {
                        fieldZ2 = d.z(cls2, (String) obj2);
                        objArr[i102] = fieldZ2;
                        iArr4[i79] = i81;
                        i79++;
                    }
                    i18 = i6;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZ2);
                    int i104 = i102 + 1;
                    Object obj3 = objArr[i104];
                    if (obj3 instanceof Field) {
                        fieldZ3 = (Field) obj3;
                    } else {
                        fieldZ3 = d.z(cls2, (String) obj3);
                        objArr[i104] = fieldZ3;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZ3);
                    iCharAt = iCharAt;
                    i20 = iObjectFieldOffset3;
                    i21 = i103;
                } else {
                    i18 = i6;
                    int i105 = i4 + 1;
                    Field fieldZ4 = d.z(cls2, (String) objArr[i4]);
                    if (i94 == 9 || i94 == 17) {
                        objArr2[ud.b(i81, 3, 1)] = fieldZ4.getType();
                    } else {
                        if (i94 != 27) {
                            if (i94 == 49) {
                                i4 += 2;
                                i24 = 3;
                                i25 = 1;
                            } else if (i94 == 12 || i94 == 30 || i94 == 44) {
                                iCharAt = iCharAt;
                                if (msaVar.zzc() == 1 || i95 != 0) {
                                    i4 += 2;
                                    objArr2[ud.b(i81, 3, 1)] = objArr[i105];
                                } else {
                                    i4 = i105;
                                    i95 = 0;
                                }
                            } else if (i94 == 50) {
                                int i106 = i4 + 2;
                                i78++;
                                iArr4[i78] = i81;
                                int i107 = i81 / 3;
                                int i108 = i107 + i107;
                                objArr2[i108] = objArr[i105];
                                if (i95 != 0) {
                                    i4 += 3;
                                    objArr2[i108 + 1] = objArr[i106];
                                } else {
                                    i4 = i106;
                                    i95 = 0;
                                }
                                iCharAt = iCharAt;
                            }
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZ4);
                            iObjectFieldOffset2 = 1048575;
                            if ((iCharAt10 & 4096) != 0 || i94 > 17) {
                                i19 = i17;
                                i20 = iObjectFieldOffset;
                                i21 = i95;
                            } else {
                                int i109 = i17 + 1;
                                int iCharAt12 = str.charAt(i17);
                                if (iCharAt12 >= 55296) {
                                    int i110 = iCharAt12 & 8191;
                                    int i111 = 13;
                                    while (true) {
                                        i23 = i109 + 1;
                                        cCharAt8 = str.charAt(i109);
                                        if (cCharAt8 < 55296) {
                                            break;
                                        }
                                        i110 |= (cCharAt8 & 8191) << i111;
                                        i111 += 13;
                                        i109 = i23;
                                    }
                                    iCharAt12 = i110 | (cCharAt8 << i111);
                                    i109 = i23;
                                }
                                int i112 = (iCharAt12 / 32) + i75 + i75;
                                Object obj4 = objArr[i112];
                                str = str;
                                if (obj4 instanceof Field) {
                                    fieldZ = (Field) obj4;
                                } else {
                                    fieldZ = d.z(cls2, (String) obj4);
                                    objArr[i112] = fieldZ;
                                }
                                cls2 = cls2;
                                i81 = i81;
                                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZ);
                                i22 = iCharAt12 % 32;
                                i20 = iObjectFieldOffset;
                                i19 = i109;
                                i21 = i95;
                            }
                            int i113 = i81 + 1;
                            iArr3[i81] = i89;
                            int i114 = i81 + 2;
                            if ((iCharAt10 & 512) != 0) {
                                i26 = 536870912;
                            } else {
                                i26 = 0;
                            }
                            if ((iCharAt10 & 256) != 0) {
                                i27 = 268435456;
                            } else {
                                i27 = 0;
                            }
                            if (i21 != 0) {
                                i28 = Integer.MIN_VALUE;
                            } else {
                                i28 = 0;
                            }
                            iArr3[i113] = i27 | i26 | i28 | (i94 << 20) | i20;
                            i81 += 3;
                            iArr3[i114] = (i22 << 20) | iObjectFieldOffset2;
                            cls2 = cls2;
                            i5 = i93;
                            length = i84;
                            iArr = iArr4;
                            iCharAt = iCharAt;
                            str = str;
                            i80 = i19;
                            i6 = i18;
                        } else {
                            i24 = 3;
                            i25 = 1;
                            i4 += 2;
                        }
                        objArr2[ud.b(i81, i24, i25)] = objArr[i105];
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZ4);
                        iObjectFieldOffset2 = 1048575;
                        if ((iCharAt10 & 4096) != 0) {
                        }
                        i19 = i17;
                        i20 = iObjectFieldOffset;
                        i21 = i95;
                    }
                    i4 = i105;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZ4);
                    iObjectFieldOffset2 = 1048575;
                    if ((iCharAt10 & 4096) != 0) {
                    }
                    i19 = i17;
                    i20 = iObjectFieldOffset;
                    i21 = i95;
                }
                i22 = 0;
                int i115 = i81 + 1;
                iArr3[i81] = i89;
                int i116 = i81 + 2;
                if ((iCharAt10 & 512) != 0) {
                    i26 = 536870912;
                } else {
                    i26 = 0;
                }
                if ((iCharAt10 & 256) != 0) {
                    i27 = 268435456;
                } else {
                    i27 = 0;
                }
                if (i21 != 0) {
                    i28 = Integer.MIN_VALUE;
                } else {
                    i28 = 0;
                }
                iArr3[i115] = i27 | i26 | i28 | (i94 << 20) | i20;
                i81 += 3;
                iArr3[i116] = (i22 << 20) | iObjectFieldOffset2;
                cls2 = cls2;
                i5 = i93;
                length = i84;
                iArr = iArr4;
                iCharAt = iCharAt;
                str = str;
                i80 = i19;
                i6 = i18;
            }
            eVar = new d(iArr3, objArr2, i5, iCharAt, msaVar.a, iArr, i6, i76, gVar3, bVar2);
        }
        nsa nsaVar = (nsa) concurrentHashMap.putIfAbsent(cls, eVar);
        return nsaVar != null ? nsaVar : eVar;
    }
}
