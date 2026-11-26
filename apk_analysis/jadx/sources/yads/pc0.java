package yads;

import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class pc0 implements z04, ti5 {
    public final int b;
    public final gk0 c;
    public final p16 d;
    public final xl2 e;
    public final ll0 f;
    public final ns g;
    public final long h;
    public final su3 i;
    public final aj0 j;
    public final g06 k;
    public final oc0[] l;
    public final dk0 m;
    public final ow4 n;
    public final k14 p;
    public final tl2 q;
    public final rw4 r;
    public y04 s;
    public i50 v;
    public kc0 w;
    public int x;
    public List y;
    public static final Pattern z = Pattern.compile("CC([1-4])=(.+)");
    public static final Pattern A = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");
    public jz[] t = new jz[0];
    public hp2[] u = new hp2[0];
    public final IdentityHashMap o = new IdentityHashMap();

    public pc0(int i, kc0 kc0Var, ns nsVar, int i2, gk0 gk0Var, p16 p16Var, xl2 xl2Var, tl2 tl2Var, ll0 ll0Var, k14 k14Var, long j, su3 su3Var, aj0 aj0Var, dk0 dk0Var, com.monetization.ads.exo.source.dash.c cVar, rw4 rw4Var) {
        int i3;
        int i4;
        int[][] iArr;
        boolean[] zArr;
        vz2[] vz2VarArrA;
        kn0 kn0VarA;
        xl2 xl2Var2 = xl2Var;
        this.b = i;
        this.w = kc0Var;
        this.g = nsVar;
        this.x = i2;
        this.c = gk0Var;
        this.d = p16Var;
        this.e = xl2Var2;
        this.q = tl2Var;
        this.f = ll0Var;
        this.p = k14Var;
        this.h = j;
        this.i = su3Var;
        this.j = aj0Var;
        this.m = dk0Var;
        this.r = rw4Var;
        this.n = new ow4(kc0Var, cVar, aj0Var);
        int i5 = 0;
        jz[] jzVarArr = this.t;
        dk0Var.getClass();
        this.v = new i50(jzVarArr);
        au4 au4Var = (au4) kc0Var.m.get(i2);
        List list = au4Var.d;
        this.y = list;
        List list2 = au4Var.c;
        int size = list2.size();
        SparseIntArray sparseIntArray = new SparseIntArray(size);
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i6 = 0; i6 < size; i6++) {
            sparseIntArray.put(((eb) list2.get(i6)).a, i6);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i6));
            arrayList.add(arrayList2);
            sparseArray.put(i6, arrayList2);
        }
        for (int i7 = 0; i7 < size; i7++) {
            eb ebVar = (eb) list2.get(i7);
            kn0 kn0VarA2 = a("http://dashif.org/guidelines/trickmode", ebVar.e);
            kn0VarA2 = kn0VarA2 == null ? a("http://dashif.org/guidelines/trickmode", ebVar.f) : kn0VarA2;
            int iMin = (kn0VarA2 == null || (iMin = sparseIntArray.get(Integer.parseInt(kn0VarA2.b), -1)) == -1) ? i7 : iMin;
            if (iMin == i7 && (kn0VarA = a("urn:mpeg:dash:adaptation-set-switching:2016", ebVar.f)) != null) {
                String str = kn0VarA.b;
                int i8 = u56.a;
                for (String str2 : str.split(StringUtils.COMMA, -1)) {
                    int i9 = sparseIntArray.get(Integer.parseInt(str2), -1);
                    if (i9 != -1) {
                        iMin = Math.min(iMin, i9);
                    }
                }
            }
            if (iMin != i7) {
                List list3 = (List) sparseArray.get(i7);
                List list4 = (List) sparseArray.get(iMin);
                list4.addAll(list3);
                sparseArray.put(i7, list4);
                arrayList.remove(list3);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr2 = new int[size2][];
        for (int i10 = 0; i10 < size2; i10++) {
            int[] iArrA = bq3.a((Collection) arrayList.get(i10));
            iArr2[i10] = iArrA;
            Arrays.sort(iArrA);
        }
        boolean[] zArr2 = new boolean[size2];
        vz2[][] vz2VarArr = new vz2[size2][];
        int i11 = 0;
        int i12 = 0;
        while (i11 < size2) {
            int[] iArr3 = iArr2[i11];
            int length = iArr3.length;
            int i13 = i5;
            while (i13 < length) {
                List list5 = ((eb) list2.get(iArr3[i13])).c;
                for (int i14 = i5; i14 < list5.size(); i14++) {
                    if (!((o75) list5.get(i14)).d.isEmpty()) {
                        zArr2[i11] = true;
                        i12++;
                        break;
                    }
                }
                i13++;
                i5 = 0;
            }
            int[] iArr4 = iArr2[i11];
            int length2 = iArr4.length;
            int i15 = 0;
            while (true) {
                if (i15 >= length2) {
                    iArr = iArr2;
                    zArr = zArr2;
                    vz2VarArrA = new vz2[0];
                    break;
                }
                int i16 = iArr4[i15];
                eb ebVar2 = (eb) list2.get(i16);
                List list6 = ((eb) list2.get(i16)).d;
                int[] iArr5 = iArr4;
                int i17 = 0;
                while (i17 < list6.size()) {
                    kn0 kn0Var = (kn0) list6.get(i17);
                    iArr = iArr2;
                    zArr = zArr2;
                    if ("urn:scte:dash:cc:cea-608:2015".equals(kn0Var.a)) {
                        uz2 uz2Var = new uz2();
                        uz2Var.k = MimeTypes.APPLICATION_CEA608;
                        uz2Var.a = defpackage.l2.e(new StringBuilder(), ":cea608", ebVar2.a);
                        vz2VarArrA = a(kn0Var, z, new vz2(uz2Var));
                        break;
                    }
                    if ("urn:scte:dash:cc:cea-708:2015".equals(kn0Var.a)) {
                        uz2 uz2Var2 = new uz2();
                        uz2Var2.k = MimeTypes.APPLICATION_CEA708;
                        uz2Var2.a = defpackage.l2.e(new StringBuilder(), ":cea708", ebVar2.a);
                        vz2VarArrA = a(kn0Var, A, new vz2(uz2Var2));
                        break;
                    }
                    i17++;
                    iArr2 = iArr;
                    zArr2 = zArr;
                }
                i15++;
                iArr4 = iArr5;
            }
            vz2VarArr[i11] = vz2VarArrA;
            if (vz2VarArrA.length != 0) {
                i12++;
            }
            i11++;
            iArr2 = iArr;
            zArr2 = zArr;
            i5 = 0;
        }
        int[][] iArr6 = iArr2;
        boolean[] zArr3 = zArr2;
        int size3 = list.size() + i12 + size2;
        f06[] f06VarArr = new f06[size3];
        oc0[] oc0VarArr = new oc0[size3];
        int i18 = 0;
        int i19 = 0;
        while (i18 < size2) {
            int[] iArr7 = iArr6[i18];
            ArrayList arrayList3 = new ArrayList();
            for (int i20 : iArr7) {
                arrayList3.addAll(((eb) list2.get(i20)).c);
            }
            int size4 = arrayList3.size();
            vz2[] vz2VarArr2 = new vz2[size4];
            int i21 = 0;
            while (i21 < size4) {
                int i22 = size2;
                vz2 vz2Var = ((o75) arrayList3.get(i21)).a;
                vz2[][] vz2VarArr3 = vz2VarArr;
                int iA = xl2Var2.a(vz2Var);
                uz2 uz2Var3 = new uz2(vz2Var);
                uz2Var3.D = iA;
                vz2VarArr2[i21] = new vz2(uz2Var3);
                i21++;
                size2 = i22;
                xl2Var2 = xl2Var;
                vz2VarArr = vz2VarArr3;
            }
            int i23 = size2;
            vz2[][] vz2VarArr4 = vz2VarArr;
            eb ebVar3 = (eb) list2.get(iArr7[0]);
            int i24 = ebVar3.a;
            String string = i24 != -1 ? Integer.toString(i24) : vx4.a(i18, "unset:");
            int i25 = i19 + 1;
            if (zArr3[i18]) {
                i3 = i25;
                i25 = i19 + 2;
            } else {
                i3 = -1;
            }
            if (vz2VarArr4[i18].length != 0) {
                i4 = i25 + 1;
            } else {
                i4 = i25;
                i25 = -1;
            }
            f06VarArr[i19] = new f06(string, vz2VarArr2);
            int i26 = i25;
            int i27 = i19;
            int i28 = i3;
            oc0VarArr[i27] = new oc0(ebVar3.b, 0, iArr7, i27, i28, i26, -1);
            int i29 = -1;
            if (i28 != -1) {
                String strC = defpackage.ni0.c(string, ":emsg");
                uz2 uz2Var4 = new uz2();
                uz2Var4.a = strC;
                uz2Var4.k = MimeTypes.APPLICATION_EMSG;
                f06VarArr[i28] = new f06(strC, new vz2(uz2Var4));
                oc0VarArr[i28] = new oc0(5, 1, iArr7, i27, -1, -1, -1);
                i29 = -1;
            }
            if (i26 != i29) {
                f06VarArr[i26] = new f06(defpackage.ni0.c(string, ":cc"), vz2VarArr4[i18]);
                oc0VarArr[i26] = new oc0(3, 1, iArr7, i27, -1, -1, -1);
            }
            i18++;
            size2 = i23;
            xl2Var2 = xl2Var;
            i19 = i4;
            vz2VarArr = vz2VarArr4;
        }
        int i30 = 0;
        while (i30 < list.size()) {
            ip2 ip2Var = (ip2) list.get(i30);
            uz2 uz2Var5 = new uz2();
            uz2Var5.a = ip2Var.c + "/" + ip2Var.d;
            uz2Var5.k = MimeTypes.APPLICATION_EMSG;
            f06VarArr[i19] = new f06(defpackage.ag.d(new StringBuilder(ip2Var.c + "/" + ip2Var.d), StringUtils.PROCESS_POSTFIX_DELIMITER, i30), new vz2(uz2Var5));
            oc0VarArr[i19] = new oc0(5, 2, new int[0], -1, -1, -1, i30);
            i30++;
            i19++;
        }
        Pair pairCreate = Pair.create(new g06(f06VarArr), oc0VarArr);
        this.k = (g06) pairCreate.first;
        this.l = (oc0[]) pairCreate.second;
    }

    /* JADX WARN: Code duplicated, block: B:152:0x027b  */
    /* JADX WARN: Code duplicated, block: B:153:0x0283  */
    /* JADX WARN: Code duplicated, block: B:156:0x0290  */
    /* JADX WARN: Code duplicated, block: B:160:0x029c  */
    /* JADX WARN: Code duplicated, block: B:163:0x02b3 A[LOOP:8: B:154:0x028b->B:163:0x02b3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:166:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:207:0x02b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x02af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:212:0x0296 A[SYNTHETIC] */
    @Override // yads.z04
    public final long a(er2[] er2VarArr, boolean[] zArr, mc5[] mc5VarArr, boolean[] zArr2, long j) throws Throwable {
        int i;
        int i2;
        int i3;
        jz jzVar;
        int i4;
        int i5;
        lc5[] lc5VarArr;
        boolean[] zArr3;
        int[] iArr;
        int i6;
        int i7;
        boolean z2;
        int i8;
        f06 f06VarA;
        f06 f06VarA2;
        int i9;
        nw4 nw4Var;
        int i10;
        int length = er2VarArr.length;
        int[] iArr2 = new int[length];
        int i11 = 0;
        while (true) {
            i = -1;
            if (i11 >= er2VarArr.length) {
                break;
            }
            er2 er2Var = er2VarArr[i11];
            if (er2Var != null) {
                int iIndexOf = this.k.c.indexOf(er2Var.c());
                iArr2[i11] = iIndexOf >= 0 ? iIndexOf : -1;
            } else {
                iArr2[i11] = -1;
            }
            i11++;
        }
        for (int i12 = 0; i12 < er2VarArr.length; i12++) {
            if (er2VarArr[i12] == null || !zArr[i12]) {
                mc5 mc5Var = mc5VarArr[i12];
                if (mc5Var instanceof jz) {
                    jz jzVar2 = (jz) mc5Var;
                    jzVar2.s = this;
                    lc5 lc5Var = jzVar2.n;
                    lc5Var.a();
                    lc5Var.d();
                    for (lc5 lc5Var2 : jzVar2.o) {
                        lc5Var2.a();
                        lc5Var2.d();
                    }
                    jzVar2.j.a(jzVar2);
                } else if (mc5Var instanceof iz) {
                    iz izVar = (iz) mc5Var;
                    boolean[] zArr4 = izVar.f.e;
                    int i13 = izVar.d;
                    if (!zArr4[i13]) {
                        defpackage.ud.g();
                        return 0L;
                    }
                    zArr4[i13] = false;
                }
                mc5VarArr[i12] = null;
            }
        }
        int i14 = 0;
        while (true) {
            boolean z3 = true;
            boolean z4 = true;
            if (i14 >= er2VarArr.length) {
                int i15 = 0;
                while (i15 < er2VarArr.length) {
                    er2 er2Var2 = er2VarArr[i15];
                    if (er2Var2 == null) {
                        iArr = iArr2;
                        i6 = i15;
                        i7 = length;
                        z2 = z3 ? 1 : 0;
                    } else {
                        mc5 mc5Var2 = mc5VarArr[i15];
                        if (mc5Var2 == null) {
                            zArr2[i15] = z3;
                            oc0 oc0Var = this.l[iArr2[i15]];
                            int i16 = oc0Var.c;
                            if (i16 == 0) {
                                int i17 = oc0Var.f;
                                boolean z5 = i17 != i ? z3 ? 1 : 0 : false;
                                if (z5) {
                                    f06VarA = this.k.a(i17);
                                    i8 = z3 ? 1 : 0;
                                } else {
                                    i8 = 0;
                                    f06VarA = null;
                                }
                                int i18 = oc0Var.g;
                                Object[] objArr = i18 != i ? z3 ? 1 : 0 : null;
                                if (objArr != null) {
                                    f06VarA2 = this.k.a(i18);
                                    i8 += f06VarA2.b;
                                } else {
                                    f06VarA2 = null;
                                }
                                vz2[] vz2VarArr = new vz2[i8];
                                int[] iArr3 = new int[i8];
                                if (z5) {
                                    vz2VarArr[0] = f06VarA.e[0];
                                    iArr3[0] = 5;
                                    i9 = z3 ? 1 : 0;
                                } else {
                                    i9 = 0;
                                }
                                ArrayList arrayList = new ArrayList();
                                if (objArr != null) {
                                    for (int i19 = 0; i19 < f06VarA2.b; i19++) {
                                        vz2 vz2Var = f06VarA2.e[i19];
                                        vz2VarArr[i9] = vz2Var;
                                        iArr3[i9] = 3;
                                        arrayList.add(vz2Var);
                                        i9 += z3 ? 1 : 0;
                                    }
                                }
                                if (this.w.d && z5) {
                                    ow4 ow4Var = this.n;
                                    nw4Var = new nw4(ow4Var, ow4Var.b);
                                } else {
                                    nw4Var = null;
                                }
                                gk0 gk0Var = this.c;
                                su3 su3Var = this.i;
                                kc0 kc0Var = this.w;
                                ns nsVar = this.g;
                                int i20 = this.x;
                                int[] iArr4 = oc0Var.a;
                                iArr = iArr2;
                                int i21 = oc0Var.b;
                                i6 = i15;
                                long j2 = this.h;
                                p16 p16Var = this.d;
                                rw4 rw4Var = this.r;
                                wc0 wc0VarA = gk0Var.a.a();
                                if (p16Var != null) {
                                    wc0VarA.a(p16Var);
                                }
                                nw4 nw4Var2 = nw4Var;
                                i7 = length;
                                z2 = true;
                                jz jzVar3 = new jz(oc0Var.b, iArr3, vz2VarArr, new jk0(gk0Var.c, su3Var, kc0Var, nsVar, i20, iArr4, er2Var2, i21, wc0VarA, j2, gk0Var.b, z5, arrayList, nw4Var, rw4Var), this, this.j, j, this.e, this.q, this.f, this.p);
                                synchronized (this) {
                                    this.o.put(jzVar3, nw4Var2);
                                }
                                mc5VarArr[i6] = jzVar3;
                            } else {
                                iArr = iArr2;
                                i6 = i15;
                                i7 = length;
                                z2 = z3 ? 1 : 0;
                                if (i16 == 2) {
                                    mc5VarArr[i6] = new hp2((ip2) this.y.get(oc0Var.d), er2Var2.c().e[0], this.w.d);
                                }
                            }
                        } else {
                            iArr = iArr2;
                            i6 = i15;
                            i7 = length;
                            z2 = z3 ? 1 : 0;
                            if (mc5Var2 instanceof jz) {
                                ((jz) mc5Var2).f.j = er2Var2;
                            }
                        }
                    }
                    i15 = i6 + 1;
                    z3 = z2;
                    length = i7;
                    iArr2 = iArr;
                    i = -1;
                }
                int[] iArr5 = iArr2;
                int i22 = length;
                boolean z6 = z3 ? 1 : 0;
                int i23 = 0;
                while (i23 < er2VarArr.length) {
                    if (mc5VarArr[i23] != null || er2VarArr[i23] == null) {
                        i2 = i22;
                    } else {
                        int i24 = iArr5[i23];
                        oc0 oc0Var2 = this.l[i24];
                        if (oc0Var2.c == z6) {
                            if (i24 == -1) {
                                i2 = i22;
                            } else {
                                int i25 = oc0Var2.e;
                                i3 = 0;
                                i2 = i22;
                                while (true) {
                                    if (i3 < i2) {
                                        int i26 = iArr5[i3];
                                        if (i26 == i25 && this.l[i26].c == 0) {
                                            break;
                                        }
                                        i3++;
                                    }
                                }
                                if (i3 == -1) {
                                    mc5VarArr[i23] = new cn2();
                                } else {
                                    jzVar = (jz) mc5VarArr[i3];
                                    i4 = oc0Var2.b;
                                    i5 = 0;
                                    while (true) {
                                        lc5VarArr = jzVar.o;
                                        if (i5 < lc5VarArr.length) {
                                            defpackage.ud.g();
                                            return 0L;
                                        }
                                        if (jzVar.c[i5] == i4) {
                                            zArr3 = jzVar.e;
                                            if (zArr3[i5]) {
                                                zArr3[i5] = z6;
                                                lc5VarArr[i5].c(j, z6);
                                                mc5VarArr[i23] = new iz(jzVar, jzVar, jzVar.o[i5], i5);
                                                break;
                                            }
                                            defpackage.ud.g();
                                            return 0L;
                                        }
                                        i5++;
                                    }
                                }
                            }
                            i3 = -1;
                            if (i3 == -1) {
                                mc5VarArr[i23] = new cn2();
                            } else {
                                jzVar = (jz) mc5VarArr[i3];
                                i4 = oc0Var2.b;
                                i5 = 0;
                                while (true) {
                                    lc5VarArr = jzVar.o;
                                    if (i5 < lc5VarArr.length) {
                                        defpackage.ud.g();
                                        return 0L;
                                    }
                                    if (jzVar.c[i5] == i4) {
                                        zArr3 = jzVar.e;
                                        if (zArr3[i5]) {
                                            defpackage.ud.g();
                                            return 0L;
                                        }
                                        zArr3[i5] = z6;
                                        lc5VarArr[i5].c(j, z6);
                                        mc5VarArr[i23] = new iz(jzVar, jzVar, jzVar.o[i5], i5);
                                        break;
                                        break;
                                    }
                                    i5++;
                                }
                            }
                        } else {
                            i2 = i22;
                        }
                    }
                    i23++;
                    i22 = i2;
                }
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                for (mc5 mc5Var3 : mc5VarArr) {
                    if (mc5Var3 instanceof jz) {
                        arrayList2.add((jz) mc5Var3);
                    } else if (mc5Var3 instanceof hp2) {
                        arrayList3.add((hp2) mc5Var3);
                    }
                }
                jz[] jzVarArr = new jz[arrayList2.size()];
                this.t = jzVarArr;
                arrayList2.toArray(jzVarArr);
                hp2[] hp2VarArr = new hp2[arrayList3.size()];
                this.u = hp2VarArr;
                arrayList3.toArray(hp2VarArr);
                dk0 dk0Var = this.m;
                jz[] jzVarArr2 = this.t;
                dk0Var.getClass();
                this.v = new i50(jzVarArr2);
                return j;
            }
            mc5 mc5Var4 = mc5VarArr[i14];
            if ((mc5Var4 instanceof cn2) || (mc5Var4 instanceof iz)) {
                int i27 = iArr2[i14];
                if (i27 == -1) {
                    i10 = -1;
                    break;
                }
                int i28 = this.l[i27].e;
                i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        i10 = -1;
                        break;
                    }
                    int i29 = iArr2[i10];
                    if (i29 == i28 && this.l[i29].c == 0) {
                        break;
                    }
                    i10++;
                }
                if (i10 == -1) {
                    z4 = mc5VarArr[i14] instanceof cn2;
                } else {
                    mc5 mc5Var5 = mc5VarArr[i14];
                    if (!(mc5Var5 instanceof iz) || ((iz) mc5Var5).b != mc5VarArr[i10]) {
                        z4 = false;
                    }
                }
                if (z4) {
                    continue;
                } else {
                    mc5 mc5Var6 = mc5VarArr[i14];
                    if (mc5Var6 instanceof iz) {
                        iz izVar2 = (iz) mc5Var6;
                        boolean[] zArr5 = izVar2.f.e;
                        int i30 = izVar2.d;
                        if (!zArr5[i30]) {
                            defpackage.ud.g();
                            return 0L;
                        }
                        zArr5[i30] = false;
                    }
                    mc5VarArr[i14] = null;
                }
            }
            i14++;
        }
    }

    @Override // yads.ui5
    public final boolean c(long j) {
        return this.v.c(j);
    }

    @Override // yads.ui5
    public final long getBufferedPositionUs() {
        return this.v.getBufferedPositionUs();
    }

    @Override // yads.ui5
    public final long getNextLoadPositionUs() {
        return this.v.getNextLoadPositionUs();
    }

    @Override // yads.z04
    public final g06 getTrackGroups() {
        return this.k;
    }

    @Override // yads.ui5
    public final boolean isLoading() {
        return this.v.isLoading();
    }

    @Override // yads.z04
    public final void maybeThrowPrepareError() {
        this.i.a();
    }

    @Override // yads.z04
    public final long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override // yads.ui5
    public final void reevaluateBuffer(long j) {
        this.v.reevaluateBuffer(j);
    }

    @Override // yads.z04
    public final long seekToUs(long j) throws Throwable {
        zr zrVar;
        boolean zC;
        for (jz jzVar : this.t) {
            jzVar.u = j;
            if (jzVar.d()) {
                jzVar.t = j;
            } else {
                int i = 0;
                while (true) {
                    if (i < jzVar.l.size()) {
                        zrVar = (zr) jzVar.l.get(i);
                        long j2 = zrVar.g;
                        if (j2 == j && zrVar.k == C.TIME_UNSET) {
                            break;
                        }
                        if (j2 <= j) {
                            i++;
                        }
                    }
                    zrVar = null;
                    break;
                }
                lc5 lc5Var = jzVar.n;
                if (zrVar != null) {
                    int iA = zrVar.a(0);
                    synchronized (lc5Var) {
                        lc5Var.e();
                        int i2 = lc5Var.q;
                        if (iA < i2 || iA > lc5Var.p + i2) {
                            zC = false;
                        } else {
                            lc5Var.t = Long.MIN_VALUE;
                            lc5Var.s = iA - i2;
                            zC = true;
                        }
                    }
                } else {
                    zC = lc5Var.c(j, j < jzVar.getNextLoadPositionUs());
                }
                if (zC) {
                    lc5 lc5Var2 = jzVar.n;
                    jzVar.v = jzVar.a(lc5Var2.q + lc5Var2.s, 0);
                    lc5[] lc5VarArr = jzVar.o;
                    for (lc5 lc5Var3 : lc5VarArr) {
                        lc5Var3.c(j, true);
                    }
                } else {
                    jzVar.t = j;
                    jzVar.x = false;
                    jzVar.l.clear();
                    jzVar.v = 0;
                    if (jzVar.j.b()) {
                        jzVar.n.a();
                        for (lc5 lc5Var4 : jzVar.o) {
                            lc5Var4.a();
                        }
                        mu3 mu3Var = jzVar.j.b;
                        if (mu3Var == null) {
                            defpackage.ud.g();
                            return 0L;
                        }
                        mu3Var.a(false);
                    } else {
                        jzVar.j.c = null;
                        jzVar.n.b(false);
                        for (lc5 lc5Var5 : jzVar.o) {
                            lc5Var5.b(false);
                        }
                    }
                }
            }
        }
        for (hp2 hp2Var : this.u) {
            int iA2 = u56.a(hp2Var.d, j, true);
            hp2Var.h = iA2;
            hp2Var.i = (hp2Var.e && iA2 == hp2Var.d.length) ? j : -9223372036854775807L;
        }
        return j;
    }

    @Override // yads.z04
    public final void a(long j) throws Throwable {
        long j2;
        for (jz jzVar : this.t) {
            if (!jzVar.d()) {
                lc5 lc5Var = jzVar.n;
                int i = lc5Var.q;
                lc5Var.a(j, true);
                lc5 lc5Var2 = jzVar.n;
                int i2 = lc5Var2.q;
                if (i2 > i) {
                    synchronized (lc5Var2) {
                        j2 = lc5Var2.p == 0 ? Long.MIN_VALUE : lc5Var2.n[lc5Var2.r];
                    }
                    int i3 = 0;
                    while (true) {
                        lc5[] lc5VarArr = jzVar.o;
                        if (i3 >= lc5VarArr.length) {
                            break;
                        }
                        lc5VarArr[i3].a(j2, jzVar.e[i3]);
                        i3++;
                    }
                }
                int iMin = Math.min(jzVar.a(i2, 0), jzVar.v);
                if (iMin > 0) {
                    ArrayList arrayList = jzVar.l;
                    int i4 = u56.a;
                    if (iMin <= arrayList.size() && iMin >= 0) {
                        if (iMin != 0) {
                            arrayList.subList(0, iMin).clear();
                        }
                        jzVar.v -= iMin;
                    } else {
                        defpackage.mi2.b();
                        return;
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override // yads.z04
    public final long a(long j, th5 th5Var) {
        long j2;
        long jA;
        int i = 0;
        for (jz jzVar : this.t) {
            if (jzVar.b == 2) {
                hk0[] hk0VarArr = jzVar.f.i;
                int length = hk0VarArr.length;
                while (i < length) {
                    hk0 hk0Var = hk0VarArr[i];
                    qc0 qc0Var = hk0Var.d;
                    if (qc0Var != null) {
                        long jA2 = qc0Var.a(j, hk0Var.e);
                        long j3 = hk0Var.f;
                        long j4 = jA2 + j3;
                        long jA3 = hk0Var.d.a(j4 - j3);
                        long jC = hk0Var.d.c(hk0Var.e);
                        if (jA3 >= j || (jC != -1 && j4 >= ((hk0Var.d.b() + hk0Var.f) + jC) - 1)) {
                            j2 = jA3;
                            jA = j2;
                        } else {
                            jA = hk0Var.d.a((j4 + 1) - hk0Var.f);
                            j2 = jA3;
                        }
                        return th5Var.a(j, j2, jA);
                    }
                    i++;
                    j = j;
                }
                break;
            }
        }
        return j;
    }

    @Override // yads.ti5
    public final void a(ui5 ui5Var) {
        this.s.a((ui5) this);
    }

    @Override // yads.z04
    public final void a(y04 y04Var, long j) {
        this.s = y04Var;
        y04Var.a((z04) this);
    }

    public static kn0 a(String str, List list) {
        for (int i = 0; i < list.size(); i++) {
            kn0 kn0Var = (kn0) list.get(i);
            if (str.equals(kn0Var.a)) {
                return kn0Var;
            }
        }
        return null;
    }

    public static vz2[] a(kn0 kn0Var, Pattern pattern, vz2 vz2Var) {
        String str = kn0Var.b;
        if (str == null) {
            return new vz2[]{vz2Var};
        }
        int i = u56.a;
        String[] strArrSplit = str.split(";", -1);
        vz2[] vz2VarArr = new vz2[strArrSplit.length];
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            Matcher matcher = pattern.matcher(strArrSplit[i2]);
            if (!matcher.matches()) {
                return new vz2[]{vz2Var};
            }
            int i3 = Integer.parseInt(matcher.group(1));
            uz2 uz2Var = new uz2(vz2Var);
            uz2Var.a = vz2Var.b + StringUtils.PROCESS_POSTFIX_DELIMITER + i3;
            uz2Var.C = i3;
            uz2Var.c = matcher.group(2);
            vz2VarArr[i2] = new vz2(uz2Var);
        }
        return vz2VarArr;
    }
}
