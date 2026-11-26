package yads;

import android.os.Looper;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class tw3 extends p06 {
    /* JADX WARN: Code duplicated, block: B:125:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:305:0x05b4  */
    @Override // yads.p06
    public final q06 a(gs[] gsVarArr, g06 g06Var, h14 h14Var, kx5 kx5Var) {
        mm0 mm0Var;
        int i;
        String str;
        boolean z;
        boolean z2;
        k55 k55VarA;
        int i2;
        boolean z3;
        int i3;
        long[][] jArr;
        int[] iArr;
        dr2 dr2Var;
        dr2[] dr2VarArr;
        int i4;
        int i5;
        int i6;
        pm0 pm0Var;
        int[] iArr2;
        g06 g06Var2 = g06Var;
        int i7 = 1;
        int[] iArr3 = new int[gsVarArr.length + 1];
        int length = gsVarArr.length + 1;
        f06[][] f06VarArr = new f06[length][];
        int[][][] iArr4 = new int[gsVarArr.length + 1][][];
        for (int i8 = 0; i8 < length; i8++) {
            int i9 = g06Var2.b;
            f06VarArr[i8] = new f06[i9];
            iArr4[i8] = new int[i9][];
        }
        int length2 = gsVarArr.length;
        int[] iArr5 = new int[length2];
        for (int i10 = 0; i10 < length2; i10++) {
            iArr5[i10] = gsVarArr[i10].k();
        }
        int i11 = 0;
        while (i11 < g06Var2.b) {
            f06 f06VarA = g06Var2.a(i11);
            int i12 = f06VarA.d == 5 ? i7 : 0;
            int length3 = gsVarArr.length;
            int i13 = i7;
            int i14 = 0;
            int i15 = 0;
            while (i14 < gsVarArr.length) {
                gs gsVar = gsVarArr[i14];
                int i16 = i7;
                int iMax = 0;
                for (int i17 = 0; i17 < f06VarA.b; i17++) {
                    iMax = Math.max(iMax, gsVar.a(f06VarA.e[i17]) & 7);
                }
                int i18 = iArr3[i14] == 0 ? i16 : 0;
                if (iMax > i15 || (iMax == i15 && i12 != 0 && i13 == 0 && i18 != 0)) {
                    i13 = i18;
                    i15 = iMax;
                    length3 = i14;
                }
                i14++;
                i7 = i16;
            }
            int i19 = i7;
            if (length3 == gsVarArr.length) {
                iArr2 = new int[f06VarA.b];
            } else {
                gs gsVar2 = gsVarArr[length3];
                int[] iArr6 = new int[f06VarA.b];
                for (int i20 = 0; i20 < f06VarA.b; i20++) {
                    iArr6[i20] = gsVar2.a(f06VarA.e[i20]);
                }
                iArr2 = iArr6;
            }
            int i21 = iArr3[length3];
            f06VarArr[length3][i21] = f06VarA;
            iArr4[length3][i21] = iArr2;
            iArr3[length3] = i21 + 1;
            i11++;
            g06Var2 = g06Var;
            i7 = i19;
        }
        int i22 = i7;
        int i23 = 0;
        g06[] g06VarArr = new g06[gsVarArr.length];
        String[] strArr = new String[gsVarArr.length];
        int[] iArr7 = new int[gsVarArr.length];
        for (int i24 = 0; i24 < gsVarArr.length; i24++) {
            int i25 = iArr3[i24];
            g06VarArr[i24] = new g06((f06[]) u56.a(i25, f06VarArr[i24]));
            iArr4[i24] = (int[][]) u56.a(i25, iArr4[i24]);
            strArr[i24] = gsVarArr[i24].c();
            iArr7[i24] = gsVarArr[i24].b;
        }
        sw3 sw3Var = new sw3(iArr7, g06VarArr, iArr5, iArr4, new g06((f06[]) u56.a(iArr3[gsVarArr.length], f06VarArr[gsVarArr.length])));
        um0 um0Var = (um0) this;
        synchronized (um0Var.c) {
            try {
                mm0Var = um0Var.f;
                i = 32;
                if (mm0Var.L && u56.a >= 32 && (pm0Var = um0Var.g) != null) {
                    Looper looperMyLooper = Looper.myLooper();
                    if (looperMyLooper == null) {
                        throw new IllegalStateException();
                    }
                    pm0Var.a(um0Var, looperMyLooper);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int i26 = sw3Var.a;
        dr2[] dr2VarArr2 = new dr2[i26];
        Pair pairA = um0.a(sw3Var, iArr4, iArr5, mm0Var);
        if (pairA != null) {
            dr2VarArr2[((Integer) pairA.second).intValue()] = (dr2) pairA.first;
        }
        Pair pairA2 = um0Var.a(sw3Var, iArr4, mm0Var);
        if (pairA2 != null) {
            dr2VarArr2[((Integer) pairA2.second).intValue()] = (dr2) pairA2.first;
        }
        if (pairA2 == null) {
            str = null;
        } else {
            dr2 dr2Var2 = (dr2) pairA2.first;
            str = dr2Var2.a.e[dr2Var2.b[0]].d;
        }
        Pair pairA3 = um0.a(sw3Var, iArr4, mm0Var, str);
        if (pairA3 != null) {
            dr2VarArr2[((Integer) pairA3.second).intValue()] = (dr2) pairA3.first;
        }
        int i27 = 0;
        while (i27 < i26) {
            int i28 = sw3Var.b[i27];
            if (i28 == 2 || i28 == i22 || i28 == 3) {
                dr2VarArr = dr2VarArr2;
                i4 = i;
                i5 = i27;
            } else {
                g06 g06Var3 = sw3Var.c[i27];
                int[][] iArr8 = iArr4[i27];
                int i29 = i23;
                int i30 = i29;
                f06 f06Var = null;
                km0 km0Var = null;
                while (i29 < g06Var3.b) {
                    f06 f06VarA2 = g06Var3.a(i29);
                    int[] iArr9 = iArr8[i29];
                    int i31 = i;
                    km0 km0Var2 = km0Var;
                    f06 f06Var2 = f06Var;
                    int i32 = i30;
                    int i33 = i23;
                    while (i33 < f06VarA2.b) {
                        dr2[] dr2VarArr3 = dr2VarArr2;
                        if (um0.a(iArr9[i33], mm0Var.M)) {
                            i6 = i27;
                            km0 km0Var3 = new km0(f06VarA2.e[i33], iArr9[i33]);
                            if (km0Var2 == null || q40.a(xu.a(km0Var3.c, km0Var2.c)).a(km0Var3.b, km0Var2.b).a() > 0) {
                                i32 = i33;
                                f06Var2 = f06VarA2;
                                km0Var2 = km0Var3;
                            }
                        } else {
                            i6 = i27;
                        }
                        i33++;
                        dr2VarArr2 = dr2VarArr3;
                        i27 = i6;
                    }
                    i29++;
                    i30 = i32;
                    f06Var = f06Var2;
                    km0Var = km0Var2;
                    i = i31;
                }
                dr2VarArr = dr2VarArr2;
                i4 = i;
                i5 = i27;
                dr2VarArr[i5] = f06Var == null ? null : new dr2(i23, f06Var, new int[]{i30});
            }
            i27 = i5 + 1;
            i = i4;
            dr2VarArr2 = dr2VarArr;
            i23 = 0;
            i22 = 1;
        }
        dr2[] dr2VarArr4 = dr2VarArr2;
        int i34 = i;
        Object obj = null;
        int i35 = sw3Var.a;
        HashMap map = new HashMap();
        for (int i36 = 0; i36 < i35; i36++) {
            um0.a(sw3Var.c[i36], mm0Var, map);
        }
        um0.a(sw3Var.f, mm0Var, map);
        for (int i37 = 0; i37 < i35; i37++) {
            m06 m06Var = (m06) map.get(Integer.valueOf(sw3Var.b[i37]));
            if (m06Var != null) {
                if (m06Var.c.isEmpty()) {
                    dr2Var = null;
                } else {
                    int iIndexOf = sw3Var.c[i37].c.indexOf(m06Var.b);
                    if (iIndexOf < 0) {
                        iIndexOf = -1;
                    }
                    if (iIndexOf != -1) {
                        dr2Var = new dr2(0, m06Var.b, bq3.a(m06Var.c));
                    } else {
                        dr2Var = null;
                    }
                }
                dr2VarArr4[i37] = dr2Var;
            }
        }
        int i38 = sw3Var.a;
        for (int i39 = 0; i39 < i38; i39++) {
            g06 g06Var4 = sw3Var.c[i39];
            Map map2 = (Map) mm0Var.P.get(i39);
            if (map2 != null && map2.containsKey(g06Var4)) {
                Map map3 = (Map) mm0Var.P.get(i39);
                nm0 nm0Var = map3 != null ? (nm0) map3.get(g06Var4) : null;
                dr2VarArr4[i39] = (nm0Var == null || nm0Var.c.length == 0) ? null : new dr2(nm0Var.d, g06Var4.a(nm0Var.b), nm0Var.c);
            }
        }
        for (int i40 = 0; i40 < i26; i40++) {
            int i41 = sw3Var.b[i40];
            if (mm0Var.Q.get(i40) || mm0Var.A.contains(Integer.valueOf(i41))) {
                dr2VarArr4[i40] = null;
            }
        }
        nb nbVar = um0Var.d;
        vn vnVar = um0Var.b;
        if (vnVar == null) {
            defpackage.ud.g();
            return null;
        }
        nbVar.getClass();
        ArrayList arrayList = new ArrayList();
        int i42 = 0;
        while (i42 < i26) {
            dr2 dr2Var3 = dr2VarArr4[i42];
            if (dr2Var3 == null || dr2Var3.b.length <= 1) {
                arrayList.add(obj);
            } else {
                ke3 ke3VarF = oe3.f();
                ke3VarF.a(new mb(0L, 0L));
                arrayList.add(ke3VarF);
            }
            i42++;
            obj = null;
        }
        long[][] jArr2 = new long[i26][];
        for (int i43 = 0; i43 < i26; i43++) {
            dr2 dr2Var4 = dr2VarArr4[i43];
            if (dr2Var4 == null) {
                jArr2[i43] = new long[0];
            } else {
                jArr2[i43] = new long[dr2Var4.b.length];
                int i44 = 0;
                while (true) {
                    int[] iArr10 = dr2Var4.b;
                    if (i44 >= iArr10.length) {
                        break;
                    }
                    jArr2[i43][i44] = dr2Var4.a.e[iArr10[i44]].i;
                    i44++;
                }
                Arrays.sort(jArr2[i43]);
            }
        }
        int[] iArr11 = new int[i26];
        long[] jArr3 = new long[i26];
        for (int i45 = 0; i45 < i26; i45++) {
            long[] jArr4 = jArr2[i45];
            jArr3[i45] = jArr4.length == 0 ? 0L : jArr4[0];
        }
        ob.a(arrayList, jArr3);
        xm4 xm4Var = xm4.b;
        xm4Var.getClass();
        gd4 gd4VarA = new cd4(xm4Var).a().a();
        int i46 = 0;
        while (i46 < i26) {
            long[] jArr5 = jArr2[i46];
            if (jArr5.length <= 1) {
                jArr = jArr2;
                iArr = iArr11;
            } else {
                int length4 = jArr5.length;
                double[] dArr = new double[length4];
                int i47 = 0;
                while (true) {
                    long[] jArr6 = jArr2[i46];
                    double dLog = 0.0d;
                    if (i47 >= jArr6.length) {
                        break;
                    }
                    long[][] jArr7 = jArr2;
                    int[] iArr12 = iArr11;
                    long j = jArr6[i47];
                    if (j != -1) {
                        dLog = Math.log(j);
                    }
                    dArr[i47] = dLog;
                    i47++;
                    jArr2 = jArr7;
                    iArr11 = iArr12;
                }
                jArr = jArr2;
                iArr = iArr11;
                int i48 = length4 - 1;
                double d = dArr[i48] - dArr[0];
                int i49 = 0;
                while (i49 < i48) {
                    double d2 = dArr[i49];
                    i49++;
                    Double dValueOf = Double.valueOf(d == 0.0d ? 1.0d : (((d2 + dArr[i49]) * 0.5d) - dArr[0]) / d);
                    double d3 = d;
                    Integer numValueOf = Integer.valueOf(i46);
                    Collection collection = (Collection) gd4VarA.e.get(dValueOf);
                    if (collection == null) {
                        List list = (List) gd4VarA.g.get();
                        if (!list.add(numValueOf)) {
                            defpackage.xg.d("New Collection violated the Collection spec");
                            return null;
                        }
                        gd4VarA.f++;
                        gd4VarA.e.put(dValueOf, list);
                    } else if (collection.add(numValueOf)) {
                        gd4VarA.f++;
                    }
                    d = d3;
                }
            }
            i46++;
            jArr2 = jArr;
            iArr11 = iArr;
        }
        long[][] jArr8 = jArr2;
        int[] iArr13 = iArr11;
        b0 b0Var = gd4VarA.c;
        if (b0Var == null) {
            b0Var = new b0(gd4VarA);
            gd4VarA.c = b0Var;
        }
        oe3 oe3VarA = oe3.a(b0Var);
        for (int i50 = 0; i50 < oe3VarA.size(); i50++) {
            int iIntValue = ((Integer) oe3VarA.get(i50)).intValue();
            int i51 = iArr13[iIntValue] + 1;
            iArr13[iIntValue] = i51;
            jArr3[iIntValue] = jArr8[iIntValue][i51];
            ob.a(arrayList, jArr3);
        }
        for (int i52 = 0; i52 < i26; i52++) {
            if (arrayList.get(i52) != null) {
                jArr3[i52] = jArr3[i52] * 2;
            }
        }
        ob.a(arrayList, jArr3);
        ke3 ke3VarF2 = oe3.f();
        for (int i53 = 0; i53 < arrayList.size(); i53++) {
            ke3 ke3Var = (ke3) arrayList.get(i53);
            ke3VarF2.a((Object) (ke3Var == null ? k55.f : ke3Var.a()));
        }
        k55 k55VarA2 = ke3VarF2.a();
        er2[] er2VarArr = new er2[i26];
        for (int i54 = 0; i54 < i26; i54++) {
            dr2 dr2Var5 = dr2VarArr4[i54];
            if (dr2Var5 != null) {
                int[] iArr14 = dr2Var5.b;
                if (iArr14.length != 0) {
                    int length5 = iArr14.length;
                    f06 f06Var3 = dr2Var5.a;
                    er2VarArr[i54] = length5 == 1 ? new zx2(f06Var3, iArr14[0]) : new ob(f06Var3, iArr14, vnVar, 10000L, 25000L, 25000L, (oe3) k55VarA2.get(i54));
                }
            }
        }
        n65[] n65VarArr = new n65[i26];
        for (int i55 = 0; i55 < i26; i55++) {
            n65VarArr[i55] = (mm0Var.Q.get(i55) || mm0Var.A.contains(Integer.valueOf(sw3Var.b[i55])) || (sw3Var.b[i55] != -2 && er2VarArr[i55] == null)) ? null : n65.b;
        }
        if (mm0Var.N) {
            int i56 = -1;
            int i57 = -1;
            int i58 = 0;
            while (true) {
                if (i58 >= sw3Var.a) {
                    i2 = -1;
                    z3 = true;
                    break;
                }
                int i59 = sw3Var.b[i58];
                er2 er2Var = er2VarArr[i58];
                if ((i59 == 1 || i59 == 2) && er2Var != null) {
                    int[][] iArr15 = iArr4[i58];
                    int iIndexOf2 = sw3Var.c[i58].c.indexOf(er2Var.c());
                    if (iIndexOf2 < 0) {
                        iIndexOf2 = -1;
                    }
                    int i60 = 0;
                    while (true) {
                        if (i60 >= er2Var.length()) {
                            i3 = i34;
                            if (i59 != 1) {
                                i2 = -1;
                                if (i57 == -1) {
                                    i57 = i58;
                                    break;
                                }
                                z3 = false;
                                break;
                            }
                            i2 = -1;
                            if (i56 == -1) {
                                i56 = i58;
                                break;
                            }
                            z3 = false;
                            break;
                        }
                        i3 = i34;
                        if ((iArr15[iIndexOf2][er2Var.b(i60)] & 32) == i3) {
                            i60++;
                            i34 = i3;
                        }
                    }
                    i58++;
                    i34 = i3;
                } else {
                    i3 = i34;
                }
                i58++;
                i34 = i3;
            }
            if (((i56 == i2 || i57 == i2) ? false : true) && z3) {
                z = true;
                n65 n65Var = new n65(true);
                n65VarArr[i56] = n65Var;
                n65VarArr[i57] = n65Var;
            } else {
                z = true;
            }
        } else {
            z = true;
        }
        Pair pairCreate = Pair.create(n65VarArr, er2VarArr);
        er2[] er2VarArr2 = (er2[]) pairCreate.second;
        List[] listArr = new List[er2VarArr2.length];
        for (int i61 = 0; i61 < er2VarArr2.length; i61++) {
            er2 er2Var2 = er2VarArr2[i61];
            if (er2Var2 != null) {
                k55VarA = oe3.a(er2Var2);
            } else {
                le3 le3Var = oe3.c;
                k55VarA = k55.f;
            }
            listArr[i61] = k55VarA;
        }
        ke3 ke3Var2 = new ke3();
        int i62 = 0;
        while (i62 < sw3Var.a) {
            g06 g06Var5 = sw3Var.c[i62];
            List list2 = listArr[i62];
            int i63 = 0;
            while (i63 < g06Var5.b) {
                f06 f06VarA3 = g06Var5.a(i63);
                boolean z4 = sw3Var.a(i62, i63) != 0 ? z : false;
                int i64 = f06VarA3.b;
                int[] iArr16 = new int[i64];
                boolean[] zArr = new boolean[i64];
                for (int i65 = 0; i65 < f06VarA3.b; i65++) {
                    iArr16[i65] = sw3Var.e[i62][i63][i65] & 7;
                    int i66 = 0;
                    while (true) {
                        if (i66 >= list2.size()) {
                            z2 = false;
                            break;
                        }
                        er2 er2Var3 = (er2) list2.get(i66);
                        if (er2Var3.c().equals(f06VarA3) && er2Var3.c(i65) != -1) {
                            z2 = true;
                            break;
                        }
                        i66++;
                    }
                    zArr[i65] = z2;
                }
                ke3Var2.a(new l16(f06VarA3, z4, iArr16, zArr));
                i63++;
                z = true;
            }
            i62++;
            z = true;
        }
        g06 g06Var6 = sw3Var.f;
        for (int i67 = 0; i67 < g06Var6.b; i67++) {
            f06 f06VarA4 = g06Var6.a(i67);
            int[] iArr17 = new int[f06VarA4.b];
            Arrays.fill(iArr17, 0);
            ke3Var2.a(new l16(f06VarA4, false, iArr17, new boolean[f06VarA4.b]));
        }
        return new q06((n65[]) pairCreate.first, (er2[]) pairCreate.second, new m16(ke3Var2.a()), sw3Var);
    }
}
