package defpackage;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class uu6 {
    public static final w57[] b = new w57[0];
    public final kl2 a = new kl2();

    /* JADX WARN: Code duplicated, block: B:240:0x0476  */
    /* JADX WARN: Code duplicated, block: B:242:0x0481  */
    /* JADX WARN: Code duplicated, block: B:269:0x05ff  */
    /* JADX WARN: Code duplicated, block: B:271:0x0604 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:272:0x0606  */
    /* JADX WARN: Code duplicated, block: B:273:0x060c  */
    /* JADX WARN: Code duplicated, block: B:292:0x0645  */
    /* JADX WARN: Code duplicated, block: B:294:0x0649 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:295:0x064b  */
    /* JADX WARN: Code duplicated, block: B:403:0x0651 A[SYNTHETIC] */
    public final n57 a(oi0 oi0Var, Map<nd2, ?> map) throws Throwable {
        int i;
        ArrayList arrayList;
        sa3 sa3Var;
        sa3 sa3Var2;
        sa3 sa3Var3;
        float f;
        float f2;
        mc mcVarB;
        float f3;
        float f4;
        float f5;
        float f6;
        int i2;
        w57[] w57VarArr;
        vd2 vd2VarA;
        w57[] w57VarArr2;
        boolean z;
        int i3;
        int iAbs;
        int i4;
        int i5;
        int[] iArr;
        int[] iArr2;
        float f7;
        char c = 2;
        int i6 = 3;
        kl2 kl2Var = this.a;
        int i7 = 1;
        int i8 = 0;
        if (map == null || !map.containsKey(nd2.PURE_BARCODE)) {
            qi0 qi0VarA = oi0Var.a();
            int i9 = qi0VarA.c;
            bm2 bm2Var = new bm2();
            bm2Var.a = qi0VarA;
            x57 x57Var = map == null ? null : (x57) map.get(nd2.NEED_RESULT_POINT_CALLBACK);
            bm2Var.b = x57Var;
            ta3 ta3Var = new ta3(qi0VarA, x57Var);
            boolean z2 = map != null && map.containsKey(nd2.TRY_HARDER);
            boolean z3 = map != null && map.containsKey(nd2.PURE_BARCODE);
            int i10 = qi0VarA.b;
            int i11 = (i9 * 3) / 228;
            if (i11 < 3 || z2) {
                i11 = 3;
            }
            int[] iArr3 = new int[5];
            int i12 = i11 - 1;
            boolean zE = false;
            while (true) {
                i = i8;
                arrayList = ta3Var.b;
                if (i12 >= i9 || zE) {
                    break;
                }
                iArr3[i] = i;
                iArr3[i7] = i;
                iArr3[c] = i;
                iArr3[i6] = i;
                iArr3[4] = i;
                int i13 = i6;
                int i14 = i;
                int i15 = i14;
                while (i15 < i10) {
                    if (qi0VarA.c(i15, i12)) {
                        if ((i14 & 1) == i7) {
                            i14++;
                        }
                        iArr3[i14] = iArr3[i14] + i7;
                    } else if ((i14 & 1) != 0) {
                        iArr3[i14] = iArr3[i14] + 1;
                    } else if (i14 == 4) {
                        if (!ta3.b(iArr3)) {
                            int i16 = i7;
                            iArr3[i] = iArr3[2];
                            iArr3[i16] = iArr3[i13];
                            iArr3[2] = iArr3[4];
                            iArr3[i13] = i16;
                            iArr3[4] = i;
                        } else if (ta3Var.d(iArr3, i12, i15, z3)) {
                            if (ta3Var.c) {
                                zE = ta3Var.e();
                                i3 = 2;
                            } else {
                                if (arrayList.size() > i7) {
                                    Iterator it = arrayList.iterator();
                                    sa3 sa3Var4 = null;
                                    while (true) {
                                        if (!it.hasNext()) {
                                            i3 = 2;
                                            iAbs = i;
                                            break;
                                        }
                                        sa3 sa3Var5 = (sa3) it.next();
                                        Iterator it2 = it;
                                        if (sa3Var5.d >= 2) {
                                            if (sa3Var4 != null) {
                                                ta3Var.c = true;
                                                i3 = 2;
                                                iAbs = ((int) (Math.abs(sa3Var4.a - sa3Var5.a) - Math.abs(sa3Var4.b - sa3Var5.b))) / 2;
                                                break;
                                            }
                                            sa3Var4 = sa3Var5;
                                        }
                                        it = it2;
                                    }
                                } else {
                                    iAbs = i;
                                    i3 = 2;
                                }
                                int i17 = iArr3[i3];
                                if (iAbs > i17) {
                                    i12 += (iAbs - i17) - 2;
                                    i15 = i10 - 1;
                                }
                            }
                            iArr3[i] = i;
                            iArr3[1] = i;
                            iArr3[i3] = i;
                            iArr3[i13] = i;
                            iArr3[4] = i;
                            i14 = i;
                            i11 = i3;
                        } else {
                            int i18 = i7;
                            iArr3[i] = iArr3[2];
                            iArr3[i18] = iArr3[i13];
                            iArr3[2] = iArr3[4];
                            iArr3[i13] = i18;
                            iArr3[4] = i;
                        }
                        i14 = i13;
                    } else {
                        i14++;
                        iArr3[i14] = iArr3[i14] + 1;
                    }
                    i15++;
                    i7 = 1;
                }
                if (ta3.b(iArr3) && ta3Var.d(iArr3, i12, i10, z3)) {
                    int i19 = iArr3[i];
                    if (ta3Var.c) {
                        i11 = i19;
                        zE = ta3Var.e();
                    } else {
                        i11 = i19;
                    }
                }
                i12 += i11;
                i8 = i;
                i6 = i13;
                c = 2;
                i7 = 1;
            }
            int i20 = i6;
            int size = arrayList.size();
            if (size < i20) {
                throw NotFoundException.d;
            }
            if (size > i20) {
                Iterator it3 = arrayList.iterator();
                float f8 = 0.0f;
                float f9 = 0.0f;
                while (it3.hasNext()) {
                    float f10 = ((sa3) it3.next()).c;
                    f8 += f10;
                    f9 += f10 * f10;
                }
                float f11 = size;
                float f12 = f8 / f11;
                float fSqrt = (float) Math.sqrt((f9 / f11) - (f12 * f12));
                Collections.sort(arrayList, new ta3.b(f12));
                float fMax = Math.max(0.2f * f12, fSqrt);
                int i21 = i;
                while (i21 < arrayList.size() && arrayList.size() > 3) {
                    if (Math.abs(((sa3) arrayList.get(i21)).c - f12) > fMax) {
                        arrayList.remove(i21);
                        i21--;
                    }
                    i21++;
                }
            }
            if (arrayList.size() > 3) {
                Iterator it4 = arrayList.iterator();
                float f13 = 0.0f;
                while (it4.hasNext()) {
                    f13 += ((sa3) it4.next()).c;
                }
                Collections.sort(arrayList, new ta3.a(f13 / arrayList.size()));
                arrayList.subList(3, arrayList.size()).clear();
            }
            sa3[] sa3VarArr = {(sa3) arrayList.get(i), (sa3) arrayList.get(1), (sa3) arrayList.get(2)};
            float fA = w57.a(sa3VarArr[i], sa3VarArr[1]);
            float fA2 = w57.a(sa3VarArr[1], sa3VarArr[2]);
            float fA3 = w57.a(sa3VarArr[i], sa3VarArr[2]);
            if (fA2 >= fA && fA2 >= fA3) {
                sa3Var = sa3VarArr[i];
                sa3Var2 = sa3VarArr[1];
                sa3Var3 = sa3VarArr[2];
            } else if (fA3 < fA2 || fA3 < fA) {
                sa3Var = sa3VarArr[2];
                sa3Var2 = sa3VarArr[i];
                sa3Var3 = sa3VarArr[1];
            } else {
                sa3Var = sa3VarArr[1];
                sa3Var2 = sa3VarArr[i];
                sa3Var3 = sa3VarArr[2];
            }
            float f14 = sa3Var.a;
            float f15 = sa3Var.b;
            if (((sa3Var2.b - f15) * (sa3Var3.a - f14)) - ((sa3Var2.a - f14) * (sa3Var3.b - f15)) < 0.0f) {
                sa3 sa3Var6 = sa3Var3;
                sa3Var3 = sa3Var2;
                sa3Var2 = sa3Var6;
            }
            sa3VarArr[0] = sa3Var2;
            sa3VarArr[1] = sa3Var;
            sa3VarArr[2] = sa3Var3;
            float fA4 = bm2Var.a(sa3Var, sa3Var3);
            float f16 = sa3Var.a;
            float f17 = sa3Var3.b;
            float f18 = sa3Var3.a;
            float fA5 = bm2Var.a(sa3Var, sa3Var2);
            float f19 = sa3Var2.b;
            float f20 = sa3Var2.a;
            float f21 = (fA5 + fA4) / 2.0f;
            if (f21 < 1.0f) {
                throw NotFoundException.d;
            }
            float fA6 = w57.a(sa3Var, sa3Var3) / f21;
            int i22 = (int) (fA6 + (fA6 < 0.0f ? -0.5f : 0.5f));
            float fA7 = w57.a(sa3Var, sa3Var2) / f21;
            int i23 = (((int) (fA7 + (fA7 >= 0.0f ? 0.5f : -0.5f))) + i22) / 2;
            int i24 = i23 + 7;
            int i25 = i24 & 3;
            if (i25 == 0) {
                i24 = i23 + 8;
            } else if (i25 == 2) {
                i24 = i23 + 6;
            } else if (i25 == 3) {
                throw NotFoundException.d;
            }
            int i26 = i24;
            int[] iArr4 = uc9.e;
            if (i26 % 4 != 1) {
                throw FormatException.a();
            }
            try {
                uc9 uc9VarC = uc9.c((i26 - 17) / 4);
                int i27 = (uc9VarC.a * 4) + 10;
                if (uc9VarC.b.length > 0) {
                    float f22 = (f18 - f16) + f20;
                    f2 = f18;
                    float f23 = (f17 - f15) + f19;
                    float f24 = 1.0f - (3.0f / i27);
                    int iB = (int) i8.b(f22, f16, f24, f16);
                    int iB2 = (int) i8.b(f23, f15, f24, f15);
                    f = f16;
                    int i28 = 4;
                    while (true) {
                        if (i28 <= 16) {
                            try {
                                mcVarB = bm2Var.b(f21, i28, iB, iB2);
                                break;
                            } catch (NotFoundException unused) {
                                i28 <<= 1;
                            }
                        }
                    }
                    f3 = i26 - 3.5f;
                    if (mcVarB != null) {
                        f4 = mcVarB.a;
                        f5 = mcVarB.b;
                        f6 = f3 - 3.0f;
                    } else {
                        f4 = (f2 - f) + f20;
                        f5 = (f17 - f15) + f19;
                        f6 = f3;
                    }
                    float f25 = f5;
                    float f26 = sa3Var.a;
                    float f27 = sa3Var.b;
                    float f28 = sa3Var3.a;
                    float f29 = sa3Var3.b;
                    float f30 = sa3Var2.a;
                    mc mcVar = mcVarB;
                    float f31 = sa3Var2.b;
                    h76 h76VarA = h76.a(3.5f, 3.5f, f3, 3.5f, f6, f6, 3.5f, f3);
                    float f32 = f4;
                    float f33 = h76VarA.e;
                    float f34 = h76VarA.i;
                    float f35 = f33 * f34;
                    float f36 = h76VarA.f;
                    float f37 = h76VarA.h;
                    float f38 = f35 - (f36 * f37);
                    float f39 = h76VarA.g;
                    float f40 = f36 * f39;
                    float f41 = h76VarA.d;
                    float f42 = f40 - (f41 * f34);
                    float f43 = (f41 * f37) - (f33 * f39);
                    float f44 = h76VarA.c;
                    float f45 = f44 * f37;
                    float f46 = h76VarA.b;
                    float f47 = f45 - (f46 * f34);
                    float f48 = h76VarA.a;
                    float f49 = (f34 * f48) - (f44 * f39);
                    float f50 = (f39 * f46) - (f37 * f48);
                    float f51 = (f46 * f36) - (f44 * f33);
                    float f52 = (f44 * f41) - (f36 * f48);
                    float f53 = (f48 * f33) - (f46 * f41);
                    h76 h76VarA2 = h76.a(f26, f27, f28, f29, f32, f25, f30, f31);
                    float f54 = h76VarA2.a;
                    float f55 = h76VarA2.d;
                    float f56 = h76VarA2.g;
                    float f57 = (f56 * f51) + (f55 * f47) + (f54 * f38);
                    float f58 = (f56 * f52) + (f55 * f49) + (f54 * f42);
                    float f59 = (f56 * f53) + (f55 * f50) + (f54 * f43);
                    float f60 = h76VarA2.b;
                    float f61 = h76VarA2.e;
                    float f62 = h76VarA2.h;
                    float f63 = (f62 * f51) + (f61 * f47) + (f60 * f38);
                    float f64 = (f62 * f52) + (f61 * f49) + (f60 * f42);
                    float f65 = (f62 * f53) + (f61 * f50) + (f60 * f43);
                    float f66 = h76VarA2.c;
                    float f67 = h76VarA2.f;
                    float f68 = h76VarA2.i;
                    float f69 = (f51 * f68) + (f47 * f67) + (f38 * f66);
                    float f70 = (f52 * f68) + (f49 * f67) + (f42 * f66);
                    float f71 = (f68 * f53) + (f67 * f50) + (f66 * f43);
                    if (i26 > 0 || i26 <= 0) {
                        throw NotFoundException.d;
                    }
                    qi0 qi0Var = new qi0(i26, i26);
                    int i29 = i26 * 2;
                    float[] fArr = new float[i29];
                    int i30 = 0;
                    while (i30 < i26) {
                        int i31 = i26;
                        float f72 = i30 + 0.5f;
                        int i32 = 0;
                        while (i32 < i29) {
                            int i33 = i32;
                            fArr[i33] = (i33 / 2) + 0.5f;
                            fArr[i33 + 1] = f72;
                            i32 = i33 + 2;
                        }
                        for (int i34 = 0; i34 < i29; i34 += 2) {
                            float f73 = fArr[i34];
                            int i35 = i34 + 1;
                            float f74 = fArr[i35];
                            float f75 = (f70 * f74) + (f69 * f73) + f71;
                            fArr[i34] = (((f58 * f74) + (f57 * f73)) + f59) / f75;
                            fArr[i35] = (((f74 * f64) + (f73 * f63)) + f65) / f75;
                        }
                        float f76 = f59;
                        int i36 = 0;
                        boolean z4 = true;
                        while (i36 < i29 && z4) {
                            int i37 = (int) fArr[i36];
                            int i38 = i36 + 1;
                            int i39 = i36;
                            int i40 = (int) fArr[i38];
                            sa3 sa3Var7 = sa3Var;
                            if (i37 < -1 || i37 > i10 || i40 < -1 || i40 > i9) {
                                throw NotFoundException.d;
                            }
                            if (i37 == -1) {
                                fArr[i39] = 0.0f;
                            } else {
                                if (i37 == i10) {
                                    fArr[i39] = i10 - 1;
                                } else {
                                    z = false;
                                }
                                if (i40 == -1) {
                                    fArr[i38] = 0.0f;
                                } else {
                                    if (i40 == i9) {
                                        fArr[i38] = i9 - 1;
                                    } else {
                                        z4 = z;
                                    }
                                    i36 = i39 + 2;
                                    sa3Var = sa3Var7;
                                }
                                z4 = true;
                                i36 = i39 + 2;
                                sa3Var = sa3Var7;
                            }
                            z = true;
                            if (i40 == -1) {
                                fArr[i38] = 0.0f;
                            } else {
                                if (i40 == i9) {
                                    fArr[i38] = i9 - 1;
                                } else {
                                    z4 = z;
                                }
                                i36 = i39 + 2;
                                sa3Var = sa3Var7;
                            }
                            z4 = true;
                            i36 = i39 + 2;
                            sa3Var = sa3Var7;
                        }
                        sa3 sa3Var8 = sa3Var;
                        int i41 = i29 - 2;
                        boolean z5 = true;
                        while (i41 >= 0 && z5) {
                            int i42 = (int) fArr[i41];
                            int i43 = i41 + 1;
                            int i44 = i41;
                            int i45 = (int) fArr[i43];
                            if (i42 < -1 || i42 > i10 || i45 < -1 || i45 > i9) {
                                throw NotFoundException.d;
                            }
                            if (i42 == -1) {
                                fArr[i44] = 0.0f;
                            } else {
                                if (i42 == i10) {
                                    fArr[i44] = i10 - 1;
                                } else {
                                    z5 = false;
                                }
                                if (i45 == -1) {
                                    fArr[i43] = 0.0f;
                                } else {
                                    if (i45 == i9) {
                                        fArr[i43] = i9 - 1;
                                    }
                                    i41 = i44 - 2;
                                }
                                z5 = true;
                                i41 = i44 - 2;
                            }
                            z5 = true;
                            if (i45 == -1) {
                                fArr[i43] = 0.0f;
                            } else {
                                if (i45 == i9) {
                                    fArr[i43] = i9 - 1;
                                }
                                i41 = i44 - 2;
                            }
                            z5 = true;
                            i41 = i44 - 2;
                        }
                        for (int i46 = 0; i46 < i29; i46 += 2) {
                            try {
                                if (qi0VarA.c((int) fArr[i46], (int) fArr[i46 + 1])) {
                                    qi0Var.d(i46 / 2, i30);
                                }
                            } catch (ArrayIndexOutOfBoundsException unused2) {
                                throw NotFoundException.d;
                            }
                        }
                        i30++;
                        i26 = i31;
                        f59 = f76;
                        sa3Var = sa3Var8;
                    }
                    sa3 sa3Var9 = sa3Var;
                    if (mcVar == null) {
                        i2 = 3;
                        w57VarArr = new w57[]{sa3Var2, sa3Var9, sa3Var3};
                    } else {
                        i2 = 3;
                        w57VarArr = new w57[]{sa3Var2, sa3Var9, sa3Var3, mcVar};
                    }
                    vd2VarA = kl2Var.a(qi0Var, map);
                    w57VarArr2 = w57VarArr;
                } else {
                    f = f16;
                    f2 = f18;
                }
                mcVarB = null;
                f3 = i26 - 3.5f;
                if (mcVarB != null) {
                    f4 = mcVarB.a;
                    f5 = mcVarB.b;
                    f6 = f3 - 3.0f;
                } else {
                    f4 = (f2 - f) + f20;
                    f5 = (f17 - f15) + f19;
                    f6 = f3;
                }
                float f210 = f5;
                float f211 = sa3Var.a;
                float f212 = sa3Var.b;
                float f213 = sa3Var3.a;
                float f214 = sa3Var3.b;
                float f310 = sa3Var2.a;
                mc mcVar2 = mcVarB;
                float f311 = sa3Var2.b;
                h76 h76VarA3 = h76.a(3.5f, 3.5f, f3, 3.5f, f6, f6, 3.5f, f3);
                float f312 = f4;
                float f313 = h76VarA3.e;
                float f314 = h76VarA3.i;
                float f315 = f313 * f314;
                float f316 = h76VarA3.f;
                float f317 = h76VarA3.h;
                float f318 = f315 - (f316 * f317);
                float f319 = h76VarA3.g;
                float f410 = f316 * f319;
                float f411 = h76VarA3.d;
                float f412 = f410 - (f411 * f314);
                float f413 = (f411 * f317) - (f313 * f319);
                float f414 = h76VarA3.c;
                float f415 = f414 * f317;
                float f416 = h76VarA3.b;
                float f417 = f415 - (f416 * f314);
                float f418 = h76VarA3.a;
                float f419 = (f314 * f418) - (f414 * f319);
                float f510 = (f319 * f416) - (f317 * f418);
                float f511 = (f416 * f316) - (f414 * f313);
                float f512 = (f414 * f411) - (f316 * f418);
                float f513 = (f418 * f313) - (f416 * f411);
                h76 h76VarA4 = h76.a(f211, f212, f213, f214, f312, f210, f310, f311);
                float f514 = h76VarA4.a;
                float f515 = h76VarA4.d;
                float f516 = h76VarA4.g;
                float f517 = (f516 * f511) + (f515 * f417) + (f514 * f318);
                float f518 = (f516 * f512) + (f515 * f419) + (f514 * f412);
                float f519 = (f516 * f513) + (f515 * f510) + (f514 * f413);
                float f610 = h76VarA4.b;
                float f611 = h76VarA4.e;
                float f612 = h76VarA4.h;
                float f613 = (f612 * f511) + (f611 * f417) + (f610 * f318);
                float f614 = (f612 * f512) + (f611 * f419) + (f610 * f412);
                float f615 = (f612 * f513) + (f611 * f510) + (f610 * f413);
                float f616 = h76VarA4.c;
                float f617 = h76VarA4.f;
                float f618 = h76VarA4.i;
                float f619 = (f511 * f618) + (f417 * f617) + (f318 * f616);
                float f77 = (f512 * f618) + (f419 * f617) + (f412 * f616);
                float f78 = (f618 * f513) + (f617 * f510) + (f616 * f413);
                if (i26 > 0) {
                }
                throw NotFoundException.d;
            } catch (IllegalArgumentException unused3) {
                throw FormatException.a();
            }
        }
        qi0 qi0VarA2 = oi0Var.a();
        int[] iArr5 = qi0VarA2.e;
        int i47 = 0;
        while (true) {
            i5 = qi0VarA2.d;
            if (i47 >= iArr5.length || iArr5[i47] != 0) {
                break;
            }
            i47++;
        }
        if (i47 == iArr5.length) {
            iArr = null;
        } else {
            int i48 = i47 / i5;
            int i49 = (i47 % i5) * 32;
            int i50 = 0;
            while ((iArr5[i47] << (31 - i50)) == 0) {
                i50++;
            }
            iArr = new int[]{i49 + i50, i48};
        }
        int length = iArr5.length - 1;
        while (length >= 0 && iArr5[length] == 0) {
            length--;
        }
        if (length < 0) {
            iArr2 = null;
        } else {
            int i51 = length / i5;
            int i52 = (length % i5) * 32;
            int i53 = iArr5[length];
            int i54 = 31;
            while ((i53 >>> i54) == 0) {
                i54--;
            }
            iArr2 = new int[]{i52 + i54, i51};
        }
        if (iArr == null || iArr2 == null) {
            throw NotFoundException.d;
        }
        int i55 = qi0VarA2.c;
        int i56 = qi0VarA2.b;
        int i57 = iArr[0];
        int i58 = iArr[1];
        boolean z6 = true;
        int i59 = 0;
        while (true) {
            if (i57 >= i56 || i58 >= i55) {
                f7 = 2.0f;
                break;
            }
            f7 = 2.0f;
            if (z6 != qi0VarA2.c(i57, i58)) {
                int i60 = i59 + 1;
                if (i60 == 5) {
                    break;
                }
                z6 = !z6;
                i59 = i60;
            }
            i57++;
            i58++;
        }
        if (i57 == i56 || i58 == i55) {
            throw NotFoundException.d;
        }
        int i61 = iArr[0];
        float f79 = (i57 - i61) / 7.0f;
        int i62 = iArr[1];
        int i63 = iArr2[1];
        int i64 = iArr2[0];
        if (i61 >= i64 || i62 >= i63) {
            throw NotFoundException.d;
        }
        int i65 = i63 - i62;
        if (i65 != i64 - i61) {
            i64 = i61 + i65;
        }
        int iRound = Math.round(((i64 - i61) + 1) / f79);
        int iRound2 = Math.round((i65 + 1) / f79);
        if (iRound <= 0 || iRound2 <= 0) {
            throw NotFoundException.d;
        }
        if (iRound2 != iRound) {
            throw NotFoundException.d;
        }
        int i66 = (int) (f79 / f7);
        int i67 = i62 + i66;
        int i68 = i61 + i66;
        int i69 = (((int) ((iRound - 1) * f79)) + i68) - i64;
        if (i69 > 0) {
            if (i69 > i66) {
                throw NotFoundException.d;
            }
            i68 -= i69;
        }
        int i70 = (((int) ((iRound2 - 1) * f79)) + i67) - i63;
        if (i70 > 0) {
            if (i70 > i66) {
                throw NotFoundException.d;
            }
            i67 -= i70;
        }
        qi0 qi0Var2 = new qi0(iRound, iRound2);
        for (int i71 = 0; i71 < iRound2; i71++) {
            int i72 = ((int) (i71 * f79)) + i67;
            for (int i73 = 0; i73 < iRound; i73++) {
                if (qi0VarA2.c(((int) (i73 * f79)) + i68, i72)) {
                    qi0Var2.d(i73, i71);
                }
            }
        }
        vd2VarA = kl2Var.a(qi0Var2, map);
        w57VarArr2 = b;
        i2 = 3;
        int i74 = vd2VarA.e;
        m00 m00Var = vd2VarA.d;
        if (m00Var != null) {
            m00Var.getClass();
            if (w57VarArr2.length >= i2) {
                w57 w57Var = w57VarArr2[0];
                w57VarArr2[0] = w57VarArr2[2];
                w57VarArr2[2] = w57Var;
            }
        }
        n57 n57Var = new n57(vd2VarA.a, w57VarArr2);
        List<byte[]> list = vd2VarA.b;
        if (list != null) {
            n57Var.a(u57.BYTE_SEGMENTS, list);
        }
        String str = vd2VarA.c;
        if (str != null) {
            n57Var.a(u57.ERROR_CORRECTION_LEVEL, str);
        }
        if (i74 >= 0 && (i4 = vd2VarA.f) >= 0) {
            n57Var.a(u57.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(i4));
            n57Var.a(u57.STRUCTURED_APPEND_PARITY, Integer.valueOf(i74));
        }
        return n57Var;
    }
}
