package defpackage;

import com.google.android.gms.internal.play_billing.p;
import com.google.android.gms.internal.play_billing.q;
import com.google.android.gms.internal.play_billing.r;
import com.google.android.gms.internal.play_billing.zzgp;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class kpb {
    public static final kpb b = new kpb();
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    public kpb() {
        int i = kjb.a;
    }

    public final kqb a(Class cls) {
        int i;
        int iCharAt;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArr;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        char cCharAt;
        int i14;
        int i15;
        char cCharAt2;
        int i16;
        char cCharAt3;
        int i17;
        char cCharAt4;
        int i18;
        char cCharAt5;
        int i19;
        char cCharAt6;
        int i20;
        char cCharAt7;
        kqb pVar;
        int i21;
        int i22;
        int[] iArr2;
        int i23;
        int iObjectFieldOffset;
        int i24;
        int i25;
        int i26;
        int i27;
        Field fieldC;
        int i28;
        char cCharAt8;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        Field fieldC2;
        Field fieldC3;
        int i34;
        char cCharAt9;
        int i35;
        int i36;
        char cCharAt10;
        int i37;
        int i38;
        char cCharAt11;
        int i39;
        int i40;
        char cCharAt12;
        ConcurrentHashMap concurrentHashMap = this.a;
        Object obj = concurrentHashMap.get(cls);
        if (obj != null) {
            return (kqb) obj;
        }
        lib libVar = pib.c;
        g gVar = r.a;
        if (!zzgp.class.isAssignableFrom(cls)) {
            int i41 = ydb.a;
        }
        int i42 = ydb.a;
        if (!zzgp.class.isAssignableFrom(cls)) {
            fg.c("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            int i43 = 3;
            iob iobVar = (iob) zzgp.i(cls.asSubclass(zzgp.class)).g(3);
            if (iobVar.zzb()) {
                pVar = new q(r.a, iobVar.zza());
            } else {
                g gVar2 = r.a;
                lib libVar2 = iobVar.zzc() + (-1) != 1 ? libVar : null;
                Unsafe unsafe = p.k;
                if (unsafe == null) {
                    n7.g("Lite gencode is primarily intended for Android use and uses sun.misc.Unsafe which is not available in the current environment. To run in this environment, you may need to switch to standard gencode.");
                    return null;
                }
                if (!(iobVar instanceof gqb)) {
                    throw null;
                }
                gqb gqbVar = (gqb) iobVar;
                String str = gqbVar.b;
                int length = str.length();
                int i44 = 0;
                if (str.charAt(0) >= 55296) {
                    int i45 = 1;
                    while (true) {
                        i = i45 + 1;
                        if (str.charAt(i45) < 55296) {
                            break;
                        }
                        i45 = i;
                    }
                } else {
                    i = 1;
                }
                int i46 = i + 1;
                int iCharAt2 = str.charAt(i);
                if (iCharAt2 >= 55296) {
                    int i47 = iCharAt2 & 8191;
                    int i48 = 13;
                    while (true) {
                        i40 = i46 + 1;
                        cCharAt12 = str.charAt(i46);
                        if (cCharAt12 < 55296) {
                            break;
                        }
                        i47 |= (cCharAt12 & 8191) << i48;
                        i48 += 13;
                        i46 = i40;
                    }
                    iCharAt2 = i47 | (cCharAt12 << i48);
                    i46 = i40;
                }
                if (iCharAt2 == 0) {
                    iArr = p.j;
                    i43 = 3;
                    i10 = 0;
                    i8 = 0;
                    i9 = 0;
                    iCharAt = 0;
                    i12 = 0;
                    i6 = i46;
                    i11 = 0;
                } else {
                    int i49 = i46 + 1;
                    int iCharAt3 = str.charAt(i46);
                    if (iCharAt3 >= 55296) {
                        int i50 = iCharAt3 & 8191;
                        int i51 = 13;
                        while (true) {
                            i20 = i49 + 1;
                            cCharAt7 = str.charAt(i49);
                            if (cCharAt7 < 55296) {
                                break;
                            }
                            i50 |= (cCharAt7 & 8191) << i51;
                            i51 += 13;
                            i49 = i20;
                        }
                        iCharAt3 = i50 | (cCharAt7 << i51);
                        i49 = i20;
                    }
                    int i52 = i49 + 1;
                    int iCharAt4 = str.charAt(i49);
                    if (iCharAt4 >= 55296) {
                        int i53 = iCharAt4 & 8191;
                        int i54 = 13;
                        while (true) {
                            i19 = i52 + 1;
                            cCharAt6 = str.charAt(i52);
                            if (cCharAt6 < 55296) {
                                break;
                            }
                            i53 |= (cCharAt6 & 8191) << i54;
                            i54 += 13;
                            i52 = i19;
                        }
                        iCharAt4 = i53 | (cCharAt6 << i54);
                        i52 = i19;
                    }
                    int i55 = i52 + 1;
                    iCharAt = str.charAt(i52);
                    if (iCharAt >= 55296) {
                        int i56 = iCharAt & 8191;
                        int i57 = i55;
                        int i58 = 13;
                        while (true) {
                            i18 = i57 + 1;
                            cCharAt5 = str.charAt(i57);
                            if (cCharAt5 < 55296) {
                                break;
                            }
                            i56 |= (cCharAt5 & 8191) << i58;
                            i58 += 13;
                            i57 = i18;
                        }
                        iCharAt = i56 | (cCharAt5 << i58);
                        i2 = i18;
                    } else {
                        i2 = i55;
                    }
                    int i59 = i2 + 1;
                    int iCharAt5 = str.charAt(i2);
                    if (iCharAt5 >= 55296) {
                        int i60 = iCharAt5 & 8191;
                        int i61 = i59;
                        int i62 = 13;
                        while (true) {
                            i17 = i61 + 1;
                            cCharAt4 = str.charAt(i61);
                            if (cCharAt4 < 55296) {
                                break;
                            }
                            i60 |= (cCharAt4 & 8191) << i62;
                            i62 += 13;
                            i61 = i17;
                        }
                        iCharAt5 = i60 | (cCharAt4 << i62);
                        i3 = i17;
                    } else {
                        i3 = i59;
                    }
                    int i63 = i3 + 1;
                    int iCharAt6 = str.charAt(i3);
                    if (iCharAt6 >= 55296) {
                        int i64 = iCharAt6 & 8191;
                        int i65 = i63;
                        int i66 = 13;
                        while (true) {
                            i16 = i65 + 1;
                            cCharAt3 = str.charAt(i65);
                            if (cCharAt3 < 55296) {
                                break;
                            }
                            i64 |= (cCharAt3 & 8191) << i66;
                            i66 += 13;
                            i65 = i16;
                        }
                        iCharAt6 = i64 | (cCharAt3 << i66);
                        i4 = i16;
                    } else {
                        i4 = i63;
                    }
                    int i67 = i4 + 1;
                    int iCharAt7 = str.charAt(i4);
                    if (iCharAt7 >= 55296) {
                        int i68 = iCharAt7 & 8191;
                        int i69 = i67;
                        int i70 = 13;
                        while (true) {
                            i15 = i69 + 1;
                            cCharAt2 = str.charAt(i69);
                            if (cCharAt2 < 55296) {
                                break;
                            }
                            i68 |= (cCharAt2 & 8191) << i70;
                            i70 += 13;
                            i69 = i15;
                        }
                        iCharAt7 = i68 | (cCharAt2 << i70);
                        i5 = i15;
                    } else {
                        i5 = i67;
                    }
                    int i71 = i5 + 1;
                    if (str.charAt(i5) >= 55296) {
                        do {
                            i14 = i71;
                            i71 = i14 + 1;
                        } while (str.charAt(i14) >= 55296);
                    }
                    int i72 = i71;
                    i6 = i72 + 1;
                    int iCharAt8 = str.charAt(i72);
                    if (iCharAt8 >= 55296) {
                        int i73 = iCharAt8 & 8191;
                        int i74 = i6;
                        int i75 = 13;
                        while (true) {
                            i13 = i74 + 1;
                            cCharAt = str.charAt(i74);
                            i7 = iCharAt7;
                            if (cCharAt < 55296) {
                                break;
                            }
                            i73 |= (cCharAt & 8191) << i75;
                            i75 += 13;
                            i74 = i13;
                            iCharAt7 = i7;
                        }
                        iCharAt8 = i73 | (cCharAt << i75);
                        i6 = i13;
                    } else {
                        i7 = iCharAt7;
                    }
                    i8 = iCharAt3 + iCharAt3 + iCharAt4;
                    iArr = new int[iCharAt8 + i7 + iCharAt3];
                    int i76 = iCharAt6;
                    i9 = iCharAt8;
                    i10 = i76;
                    int i77 = iCharAt3;
                    i11 = iCharAt5;
                    i44 = i77;
                    i12 = i7;
                }
                Object[] objArr = gqbVar.c;
                Class<?> cls2 = gqbVar.a.getClass();
                int i78 = i9 + i12;
                int i79 = i10;
                int i80 = i44;
                int[] iArr3 = new int[i79 * 3];
                Object[] objArr2 = new Object[i79 + i79];
                int i81 = i6;
                int i82 = i9;
                int i83 = i78;
                int i84 = 0;
                int i85 = 0;
                while (i81 < length) {
                    int i86 = i81 + 1;
                    int iCharAt9 = str.charAt(i81);
                    int i87 = length;
                    if (iCharAt9 >= 55296) {
                        int i88 = iCharAt9 & 8191;
                        int i89 = i86;
                        int i90 = 13;
                        while (true) {
                            i38 = i89 + 1;
                            cCharAt11 = str.charAt(i89);
                            i39 = i88;
                            if (cCharAt11 < 55296) {
                                break;
                            }
                            i88 = i39 | ((cCharAt11 & 8191) << i90);
                            i90 += 13;
                            i89 = i38;
                        }
                        iCharAt9 = i39 | (cCharAt11 << i90);
                        i21 = i38;
                    } else {
                        i21 = i86;
                    }
                    int i91 = i21 + 1;
                    int iCharAt10 = str.charAt(i21);
                    int i92 = iCharAt9;
                    if (iCharAt10 >= 55296) {
                        int i93 = iCharAt10 & 8191;
                        int i94 = i91;
                        int i95 = 13;
                        while (true) {
                            i36 = i94 + 1;
                            cCharAt10 = str.charAt(i94);
                            i37 = i93;
                            if (cCharAt10 < 55296) {
                                break;
                            }
                            i93 = i37 | ((cCharAt10 & 8191) << i95);
                            i95 += 13;
                            i94 = i36;
                        }
                        iCharAt10 = i37 | (cCharAt10 << i95);
                        i22 = i36;
                    } else {
                        i22 = i91;
                    }
                    int i96 = i11;
                    if ((iCharAt10 & 1024) != 0) {
                        iArr[i85] = i84;
                        i85++;
                    }
                    int i97 = iCharAt10 & 255;
                    int i98 = i8;
                    int i99 = iCharAt10 & 2048;
                    if (i97 >= 51) {
                        int i100 = i22 + 1;
                        int iCharAt11 = str.charAt(i22);
                        if (iCharAt11 >= 55296) {
                            int i101 = iCharAt11 & 8191;
                            int i102 = i100;
                            int i103 = 13;
                            while (true) {
                                i34 = i102 + 1;
                                cCharAt9 = str.charAt(i102);
                                i35 = i101;
                                if (cCharAt9 < 55296) {
                                    break;
                                }
                                i101 = i35 | ((cCharAt9 & 8191) << i103);
                                i103 += 13;
                                i102 = i34;
                            }
                            iCharAt11 = i35 | (cCharAt9 << i103);
                            i32 = i34;
                        } else {
                            i32 = i100;
                        }
                        int i104 = iCharAt11;
                        int i105 = i97 - 51;
                        i24 = i32;
                        if (i105 == 9 || i105 == 17) {
                            objArr2[ud.b(i84, i43, 1)] = objArr[i98];
                            i33 = i99;
                            i98++;
                        } else if (i105 != 12) {
                            i33 = i99;
                        } else if (gqbVar.zzc() == 1 || i99 != 0) {
                            objArr2[ud.b(i84, i43, 1)] = objArr[i98];
                            i98++;
                            i33 = i99;
                        } else {
                            i33 = 0;
                        }
                        int i106 = i104 + i104;
                        Object obj2 = objArr[i106];
                        int i107 = i33;
                        if (obj2 instanceof Field) {
                            fieldC2 = (Field) obj2;
                        } else {
                            fieldC2 = p.C(cls2, (String) obj2);
                            objArr[i106] = fieldC2;
                            iArr[i83] = i84;
                            i83++;
                        }
                        iArr2 = iArr;
                        int iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldC2);
                        int i108 = i106 + 1;
                        Object obj3 = objArr[i108];
                        if (obj3 instanceof Field) {
                            fieldC3 = (Field) obj3;
                        } else {
                            fieldC3 = p.C(cls2, (String) obj3);
                            objArr[i108] = fieldC3;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldC3);
                        i9 = i9;
                        i25 = iObjectFieldOffset2;
                        i26 = i107;
                        i27 = 0;
                        i23 = i98;
                    } else {
                        iArr2 = iArr;
                        Field fieldC4 = p.C(cls2, (String) objArr[i98]);
                        i23 = i98 + 1;
                        if (i97 == 9 || i97 == 17) {
                            i9 = i9;
                            objArr2[ud.b(i84, 3, 1)] = fieldC4.getType();
                        } else {
                            if (i97 == 27) {
                                i29 = 3;
                                i30 = 1;
                                i31 = i98 + 2;
                            } else if (i97 == 49) {
                                i31 = i98 + 2;
                                i29 = 3;
                                i30 = 1;
                            } else if (i97 == 12 || i97 == 30 || i97 == 44) {
                                i9 = i9;
                                if (gqbVar.zzc() == 1 || i99 != 0) {
                                    objArr2[ud.b(i84, 3, 1)] = objArr[i23];
                                    i23 = i98 + 2;
                                } else {
                                    i99 = 0;
                                }
                            } else if (i97 == 50) {
                                int i109 = i98 + 2;
                                i82++;
                                iArr2[i82] = i84;
                                int i110 = i84 / 3;
                                int i111 = i110 + i110;
                                objArr2[i111] = objArr[i23];
                                if (i99 != 0) {
                                    objArr2[i111 + 1] = objArr[i109];
                                    i23 = i98 + 3;
                                } else {
                                    i23 = i109;
                                    i99 = 0;
                                }
                            }
                            objArr2[ud.b(i84, i29, i30)] = objArr[i23];
                            i23 = i31;
                        }
                        int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldC4);
                        iObjectFieldOffset = 1048575;
                        if ((iCharAt10 & 4096) == 0 || i97 > 17) {
                            i24 = i22;
                            i25 = iObjectFieldOffset3;
                            i26 = i99;
                            i27 = 0;
                        } else {
                            int i112 = i22 + 1;
                            int iCharAt12 = str.charAt(i22);
                            if (iCharAt12 >= 55296) {
                                int i113 = iCharAt12 & 8191;
                                int i114 = 13;
                                while (true) {
                                    i28 = i112 + 1;
                                    cCharAt8 = str.charAt(i112);
                                    if (cCharAt8 < 55296) {
                                        break;
                                    }
                                    i113 |= (cCharAt8 & 8191) << i114;
                                    i114 += 13;
                                    i112 = i28;
                                }
                                iCharAt12 = i113 | (cCharAt8 << i114);
                                i112 = i28;
                            }
                            int i115 = (iCharAt12 / 32) + i80 + i80;
                            Object obj4 = objArr[i115];
                            if (obj4 instanceof Field) {
                                fieldC = (Field) obj4;
                            } else {
                                fieldC = p.C(cls2, (String) obj4);
                                objArr[i115] = fieldC;
                            }
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldC);
                            i27 = iCharAt12 % 32;
                            i25 = iObjectFieldOffset3;
                            i24 = i112;
                            i26 = i99;
                        }
                    }
                    int i116 = i84 + 1;
                    iArr3[i84] = i92;
                    int i117 = i84 + 2;
                    iArr3[i116] = ((iCharAt10 & 256) != 0 ? 268435456 : 0) | ((iCharAt10 & 512) != 0 ? 536870912 : 0) | (i26 != 0 ? Integer.MIN_VALUE : 0) | (i97 << 20) | i25;
                    i84 += 3;
                    iArr3[i117] = (i27 << 20) | iObjectFieldOffset;
                    cls2 = cls2;
                    i11 = i96;
                    length = i87;
                    i8 = i23;
                    i9 = i9;
                    str = str;
                    i81 = i24;
                    iArr = iArr2;
                    i43 = 3;
                }
                pVar = new p(iArr3, objArr2, iCharAt, i11, gqbVar.a, iArr, i9, i78, gVar2, libVar2);
            }
            kqb kqbVar = (kqb) concurrentHashMap.putIfAbsent(cls, pVar);
            return kqbVar != null ? kqbVar : pVar;
        } catch (Exception e) {
            mg.e("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }
}
