package yads;

import android.net.Uri;
import android.os.SystemClock;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.media3.common.C;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class jz implements mc5, ui5, ku3, ou3 {
    public final int b;
    public final int[] c;
    public final vz2[] d;
    public final boolean[] e;
    public final jk0 f;
    public final pc0 g;
    public final k14 h;
    public final ll0 i;
    public final ru3 j = new ru3("ChunkSampleStream");
    public final fz k = new fz();
    public final ArrayList l;
    public final List m;
    public final lc5 n;
    public final lc5[] o;
    public final bs p;
    public cz q;
    public vz2 r;
    public pc0 s;
    public long t;
    public long u;
    public int v;
    public zr w;
    public boolean x;

    public jz(int i, int[] iArr, vz2[] vz2VarArr, jk0 jk0Var, pc0 pc0Var, aj0 aj0Var, long j, xl2 xl2Var, tl2 tl2Var, ll0 ll0Var, k14 k14Var) {
        this.b = i;
        this.c = iArr;
        this.d = vz2VarArr;
        this.f = jk0Var;
        this.g = pc0Var;
        this.h = k14Var;
        this.i = ll0Var;
        ArrayList arrayList = new ArrayList();
        this.l = arrayList;
        this.m = Collections.unmodifiableList(arrayList);
        int length = iArr.length;
        this.o = new lc5[length];
        this.e = new boolean[length];
        int i2 = length + 1;
        int[] iArr2 = new int[i2];
        lc5[] lc5VarArr = new lc5[i2];
        xl2Var.getClass();
        lc5 lc5Var = new lc5(aj0Var, xl2Var, tl2Var);
        this.n = lc5Var;
        int i3 = 0;
        iArr2[0] = i;
        lc5VarArr[0] = lc5Var;
        while (i3 < length) {
            lc5 lc5Var2 = new lc5(aj0Var, null, null);
            this.o[i3] = lc5Var2;
            int i4 = i3 + 1;
            lc5VarArr[i4] = lc5Var2;
            iArr2[i4] = this.c[i3];
            i3 = i4;
        }
        this.p = new bs(iArr2, lc5VarArr);
        this.t = j;
        this.u = j;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:101:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:103:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:105:0x0213  */
    /* JADX WARN: Code duplicated, block: B:106:0x0224  */
    /* JADX WARN: Code duplicated, block: B:109:0x0232  */
    /* JADX WARN: Code duplicated, block: B:111:0x023e  */
    /* JADX WARN: Code duplicated, block: B:116:0x025a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x025c  */
    /* JADX WARN: Code duplicated, block: B:119:0x0260  */
    /* JADX WARN: Code duplicated, block: B:121:0x0266  */
    /* JADX WARN: Code duplicated, block: B:123:0x026e  */
    /* JADX WARN: Code duplicated, block: B:124:0x0273  */
    /* JADX WARN: Code duplicated, block: B:126:0x0277  */
    /* JADX WARN: Code duplicated, block: B:127:0x027e  */
    /* JADX WARN: Code duplicated, block: B:129:0x0282  */
    /* JADX WARN: Code duplicated, block: B:146:0x02ba A[EDGE_INSN: B:146:0x02ba->B:147:0x02bc BREAK  A[LOOP:0: B:138:0x0298->B:144:0x02a8]] */
    /* JADX WARN: Code duplicated, block: B:149:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:150:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:151:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:157:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:160:0x0300  */
    /* JADX WARN: Code duplicated, block: B:168:0x012a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x008f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0097 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:47:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:50:0x0102  */
    /* JADX WARN: Code duplicated, block: B:55:0x0122  */
    /* JADX WARN: Code duplicated, block: B:57:0x0128  */
    /* JADX WARN: Code duplicated, block: B:62:0x0139 A[LOOP:2: B:60:0x0133->B:62:0x0139, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x0168 A[LOOP:3: B:64:0x0162->B:66:0x0168, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:69:0x018a  */
    /* JADX WARN: Code duplicated, block: B:72:0x0193  */
    /* JADX WARN: Code duplicated, block: B:75:0x019b  */
    /* JADX WARN: Code duplicated, block: B:89:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:90:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:92:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:93:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:95:0x01db  */
    /* JADX WARN: Code duplicated, block: B:98:0x01e5  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [yads.cz] */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [yads.bu3] */
    @Override // yads.ku3
    public final lu3 a(nu3 nu3Var, long j, long j2, IOException iOException, int i) {
        boolean z;
        lu3 lu3Var;
        hk0 hk0Var;
        ms msVarB;
        er2 er2Var;
        oe3 oe3Var;
        long jElapsedRealtime;
        int length;
        int i2;
        int i3;
        HashSet hashSet;
        int i4;
        au3 au3Var;
        HashSet hashSet2;
        ArrayList arrayListA;
        boolean z2;
        int i5;
        ?? r7;
        int i6;
        ns nsVar;
        long jElapsedRealtime2;
        String str;
        HashMap map;
        long jMax;
        int i7;
        Integer numValueOf;
        HashMap map2;
        boolean zA;
        int i8;
        bu3 bu3Var;
        bu3 bu3Var2;
        lu3 lu3Var2;
        boolean z3;
        int i9;
        boolean z4;
        long jMin;
        cz czVar = (cz) nu3Var;
        long j3 = czVar.i.b;
        boolean z5 = czVar instanceof zr;
        int size = this.l.size() - 1;
        boolean z6 = (j3 != 0 && z5 && b(size)) ? false : true;
        Uri uri = czVar.i.c;
        cu3 cu3Var = new cu3();
        long j4 = czVar.g;
        int i10 = u56.a;
        jk0 jk0Var = this.f;
        ll0 ll0Var = this.i;
        long j5 = C.TIME_UNSET;
        if (z6) {
            nw4 nw4Var = jk0Var.h;
            z = z5;
            if (nw4Var != null) {
                long j6 = nw4Var.d;
                boolean z7 = j6 != C.TIME_UNSET && j6 < j4;
                ow4 ow4Var = nw4Var.e;
                if (ow4Var.g.d) {
                    if (!ow4Var.i) {
                        if (z7) {
                            if (ow4Var.h) {
                                ow4Var.i = true;
                                ow4Var.h = false;
                                com.monetization.ads.exo.source.dash.i iVar = ow4Var.c.a;
                                iVar.D.removeCallbacks(iVar.w);
                                iVar.h();
                            }
                        } else if (jk0Var.k.d && z && (iOException instanceof la3) && ((la3) iOException).e == 404) {
                            hk0 hk0Var2 = jk0Var.i[jk0Var.j.a(czVar.d)];
                            long jC = hk0Var2.d.c(hk0Var2.e);
                            if (jC == -1 || jC == 0) {
                                lu3Var = null;
                            } else {
                                lu3Var = null;
                                if (((zr) czVar).c() > ((hk0Var2.d.b() + hk0Var2.f) + jC) - 1) {
                                    jk0Var.n = true;
                                    zA = true;
                                    j5 = -9223372036854775807L;
                                    z2 = z6;
                                }
                            }
                            hk0Var = jk0Var.i[jk0Var.j.a(czVar.d)];
                            msVarB = jk0Var.b.b(hk0Var.b.b);
                            if (msVarB != null) {
                            }
                            er2Var = jk0Var.j;
                            oe3Var = hk0Var.b.b;
                            jElapsedRealtime = SystemClock.elapsedRealtime();
                            j5 = -9223372036854775807L;
                            length = er2Var.length();
                            i3 = 0;
                            for (i2 = 0; i2 < length; i2++) {
                                if (er2Var.b(i2, jElapsedRealtime)) {
                                    i3++;
                                }
                            }
                            hashSet = new HashSet();
                            for (i4 = 0; i4 < oe3Var.size(); i4++) {
                                hashSet.add(Integer.valueOf(((ms) oe3Var.get(i4)).c));
                            }
                            int size2 = hashSet.size();
                            ns nsVar2 = jk0Var.b;
                            nsVar2.getClass();
                            hashSet2 = new HashSet();
                            arrayListA = nsVar2.a(oe3Var);
                            z2 = z6;
                            for (i5 = 0; i5 < arrayListA.size(); i5++) {
                                hashSet2.add(Integer.valueOf(((ms) arrayListA.get(i5)).c));
                            }
                            au3Var = new au3(size2, size2 - hashSet2.size(), length, i3);
                            if (au3Var.a(2)) {
                                ll0Var.getClass();
                                if (iOException instanceof la3) {
                                    r7 = lu3Var;
                                } else if (au3Var.a(1)) {
                                    bu3Var2 = new bu3(1, 300000L);
                                } else if (au3Var.a(2)) {
                                    bu3Var = new bu3(2, 60000L);
                                } else {
                                    r7 = lu3Var;
                                }
                                if (r7 != 0) {
                                    r7 = bu3Var;
                                    if (au3Var.a(r7.a)) {
                                        i6 = r7.a;
                                        if (i6 == 2) {
                                            er2 er2Var2 = jk0Var.j;
                                            zA = er2Var2.a(er2Var2.a(czVar.d), r7.b);
                                        } else if (i6 == 1) {
                                            nsVar = jk0Var.b;
                                            ms msVar = hk0Var.c;
                                            long j7 = r7.b;
                                            nsVar.getClass();
                                            jElapsedRealtime2 = SystemClock.elapsedRealtime() + j7;
                                            str = msVar.b;
                                            map = nsVar.a;
                                            if (map.containsKey(str)) {
                                                r7 = bu3Var2;
                                                Long l = (Long) map.get(str);
                                                int i11 = u56.a;
                                                jMax = Math.max(jElapsedRealtime2, l.longValue());
                                            } else {
                                                r7 = bu3Var2;
                                                jMax = jElapsedRealtime2;
                                            }
                                            map.put(str, Long.valueOf(jMax));
                                            i7 = msVar.c;
                                            if (i7 != Integer.MIN_VALUE) {
                                                numValueOf = Integer.valueOf(i7);
                                                map2 = nsVar.b;
                                                if (map2.containsKey(numValueOf)) {
                                                    Long l2 = (Long) map2.get(numValueOf);
                                                    int i12 = u56.a;
                                                    jElapsedRealtime2 = Math.max(jElapsedRealtime2, l2.longValue());
                                                }
                                                map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                            }
                                            zA = true;
                                        }
                                    }
                                }
                            } else {
                                ll0Var.getClass();
                                if (iOException instanceof la3) {
                                    r7 = lu3Var;
                                } else if (au3Var.a(1)) {
                                    bu3Var2 = new bu3(1, 300000L);
                                } else if (au3Var.a(2)) {
                                    bu3Var = new bu3(2, 60000L);
                                } else {
                                    r7 = lu3Var;
                                }
                                if (r7 != 0) {
                                    r7 = bu3Var;
                                    if (au3Var.a(r7.a)) {
                                        i6 = r7.a;
                                        if (i6 == 2) {
                                            er2 er2Var3 = jk0Var.j;
                                            zA = er2Var3.a(er2Var3.a(czVar.d), r7.b);
                                        } else if (i6 == 1) {
                                            nsVar = jk0Var.b;
                                            ms msVar2 = hk0Var.c;
                                            long j8 = r7.b;
                                            nsVar.getClass();
                                            jElapsedRealtime2 = SystemClock.elapsedRealtime() + j8;
                                            str = msVar2.b;
                                            map = nsVar.a;
                                            if (map.containsKey(str)) {
                                                r7 = bu3Var2;
                                                Long l3 = (Long) map.get(str);
                                                int i13 = u56.a;
                                                jMax = Math.max(jElapsedRealtime2, l3.longValue());
                                            } else {
                                                r7 = bu3Var2;
                                                jMax = jElapsedRealtime2;
                                            }
                                            map.put(str, Long.valueOf(jMax));
                                            i7 = msVar2.c;
                                            if (i7 != Integer.MIN_VALUE) {
                                                numValueOf = Integer.valueOf(i7);
                                                map2 = nsVar.b;
                                                if (map2.containsKey(numValueOf)) {
                                                    Long l4 = (Long) map2.get(numValueOf);
                                                    int i14 = u56.a;
                                                    jElapsedRealtime2 = Math.max(jElapsedRealtime2, l4.longValue());
                                                }
                                                map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                            }
                                            zA = true;
                                        }
                                    }
                                }
                            }
                        } else {
                            lu3Var = null;
                            hk0Var = jk0Var.i[jk0Var.j.a(czVar.d)];
                            msVarB = jk0Var.b.b(hk0Var.b.b);
                            if (msVarB != null || hk0Var.c.equals(msVarB)) {
                                er2Var = jk0Var.j;
                                oe3Var = hk0Var.b.b;
                                jElapsedRealtime = SystemClock.elapsedRealtime();
                                j5 = -9223372036854775807L;
                                length = er2Var.length();
                                i3 = 0;
                                while (i2 < length) {
                                    if (er2Var.b(i2, jElapsedRealtime)) {
                                        i3++;
                                    }
                                }
                                hashSet = new HashSet();
                                while (i4 < oe3Var.size()) {
                                    hashSet.add(Integer.valueOf(((ms) oe3Var.get(i4)).c));
                                }
                                int size3 = hashSet.size();
                                ns nsVar3 = jk0Var.b;
                                nsVar3.getClass();
                                hashSet2 = new HashSet();
                                arrayListA = nsVar3.a(oe3Var);
                                z2 = z6;
                                while (i5 < arrayListA.size()) {
                                    hashSet2.add(Integer.valueOf(((ms) arrayListA.get(i5)).c));
                                }
                                au3Var = new au3(size3, size3 - hashSet2.size(), length, i3);
                                if (au3Var.a(2) || au3Var.a(1)) {
                                    ll0Var.getClass();
                                    if ((iOException instanceof la3) || !((i8 = ((la3) iOException).e) == 403 || i8 == 404 || i8 == 410 || i8 == 416 || i8 == 500 || i8 == 503)) {
                                        r7 = lu3Var;
                                    } else if (au3Var.a(1)) {
                                        bu3Var2 = new bu3(1, 300000L);
                                    } else if (au3Var.a(2)) {
                                        bu3Var = new bu3(2, 60000L);
                                    } else {
                                        r7 = lu3Var;
                                    }
                                    if (r7 != 0) {
                                        r7 = bu3Var;
                                        if (au3Var.a(r7.a)) {
                                            i6 = r7.a;
                                            if (i6 == 2) {
                                                er2 er2Var4 = jk0Var.j;
                                                zA = er2Var4.a(er2Var4.a(czVar.d), r7.b);
                                            } else if (i6 == 1) {
                                                nsVar = jk0Var.b;
                                                ms msVar3 = hk0Var.c;
                                                long j9 = r7.b;
                                                nsVar.getClass();
                                                jElapsedRealtime2 = SystemClock.elapsedRealtime() + j9;
                                                str = msVar3.b;
                                                map = nsVar.a;
                                                if (map.containsKey(str)) {
                                                    r7 = bu3Var2;
                                                    Long l5 = (Long) map.get(str);
                                                    int i15 = u56.a;
                                                    jMax = Math.max(jElapsedRealtime2, l5.longValue());
                                                } else {
                                                    r7 = bu3Var2;
                                                    jMax = jElapsedRealtime2;
                                                }
                                                map.put(str, Long.valueOf(jMax));
                                                i7 = msVar3.c;
                                                if (i7 != Integer.MIN_VALUE) {
                                                    numValueOf = Integer.valueOf(i7);
                                                    map2 = nsVar.b;
                                                    if (map2.containsKey(numValueOf)) {
                                                        Long l6 = (Long) map2.get(numValueOf);
                                                        int i16 = u56.a;
                                                        jElapsedRealtime2 = Math.max(jElapsedRealtime2, l6.longValue());
                                                    }
                                                    map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                                }
                                                zA = true;
                                            }
                                        }
                                    }
                                }
                            } else {
                                z2 = z6;
                                zA = true;
                            }
                        }
                    }
                    lu3Var = null;
                    z2 = z6;
                    zA = true;
                } else if (jk0Var.k.d) {
                    lu3Var = null;
                    hk0Var = jk0Var.i[jk0Var.j.a(czVar.d)];
                    msVarB = jk0Var.b.b(hk0Var.b.b);
                    if (msVarB != null) {
                    }
                    er2Var = jk0Var.j;
                    oe3Var = hk0Var.b.b;
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    j5 = -9223372036854775807L;
                    length = er2Var.length();
                    i3 = 0;
                    while (i2 < length) {
                        if (er2Var.b(i2, jElapsedRealtime)) {
                            i3++;
                        }
                    }
                    hashSet = new HashSet();
                    while (i4 < oe3Var.size()) {
                        hashSet.add(Integer.valueOf(((ms) oe3Var.get(i4)).c));
                    }
                    int size4 = hashSet.size();
                    ns nsVar4 = jk0Var.b;
                    nsVar4.getClass();
                    hashSet2 = new HashSet();
                    arrayListA = nsVar4.a(oe3Var);
                    z2 = z6;
                    while (i5 < arrayListA.size()) {
                        hashSet2.add(Integer.valueOf(((ms) arrayListA.get(i5)).c));
                    }
                    au3Var = new au3(size4, size4 - hashSet2.size(), length, i3);
                    if (au3Var.a(2)) {
                        ll0Var.getClass();
                        if (iOException instanceof la3) {
                            r7 = lu3Var;
                        } else if (au3Var.a(1)) {
                            bu3Var2 = new bu3(1, 300000L);
                        } else if (au3Var.a(2)) {
                            bu3Var = new bu3(2, 60000L);
                        } else {
                            r7 = lu3Var;
                        }
                        if (r7 != 0) {
                            r7 = bu3Var;
                            if (au3Var.a(r7.a)) {
                                i6 = r7.a;
                                if (i6 == 2) {
                                    er2 er2Var5 = jk0Var.j;
                                    zA = er2Var5.a(er2Var5.a(czVar.d), r7.b);
                                } else if (i6 == 1) {
                                    nsVar = jk0Var.b;
                                    ms msVar4 = hk0Var.c;
                                    long j10 = r7.b;
                                    nsVar.getClass();
                                    jElapsedRealtime2 = SystemClock.elapsedRealtime() + j10;
                                    str = msVar4.b;
                                    map = nsVar.a;
                                    if (map.containsKey(str)) {
                                        r7 = bu3Var2;
                                        Long l7 = (Long) map.get(str);
                                        int i17 = u56.a;
                                        jMax = Math.max(jElapsedRealtime2, l7.longValue());
                                    } else {
                                        r7 = bu3Var2;
                                        jMax = jElapsedRealtime2;
                                    }
                                    map.put(str, Long.valueOf(jMax));
                                    i7 = msVar4.c;
                                    if (i7 != Integer.MIN_VALUE) {
                                        numValueOf = Integer.valueOf(i7);
                                        map2 = nsVar.b;
                                        if (map2.containsKey(numValueOf)) {
                                            Long l8 = (Long) map2.get(numValueOf);
                                            int i18 = u56.a;
                                            jElapsedRealtime2 = Math.max(jElapsedRealtime2, l8.longValue());
                                        }
                                        map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                    }
                                    zA = true;
                                }
                            }
                        }
                    } else {
                        ll0Var.getClass();
                        if (iOException instanceof la3) {
                            r7 = lu3Var;
                        } else if (au3Var.a(1)) {
                            bu3Var2 = new bu3(1, 300000L);
                        } else if (au3Var.a(2)) {
                            bu3Var = new bu3(2, 60000L);
                        } else {
                            r7 = lu3Var;
                        }
                        if (r7 != 0) {
                            r7 = bu3Var;
                            if (au3Var.a(r7.a)) {
                                i6 = r7.a;
                                if (i6 == 2) {
                                    er2 er2Var6 = jk0Var.j;
                                    zA = er2Var6.a(er2Var6.a(czVar.d), r7.b);
                                } else if (i6 == 1) {
                                    nsVar = jk0Var.b;
                                    ms msVar5 = hk0Var.c;
                                    long j11 = r7.b;
                                    nsVar.getClass();
                                    jElapsedRealtime2 = SystemClock.elapsedRealtime() + j11;
                                    str = msVar5.b;
                                    map = nsVar.a;
                                    if (map.containsKey(str)) {
                                        r7 = bu3Var2;
                                        Long l9 = (Long) map.get(str);
                                        int i19 = u56.a;
                                        jMax = Math.max(jElapsedRealtime2, l9.longValue());
                                    } else {
                                        r7 = bu3Var2;
                                        jMax = jElapsedRealtime2;
                                    }
                                    map.put(str, Long.valueOf(jMax));
                                    i7 = msVar5.c;
                                    if (i7 != Integer.MIN_VALUE) {
                                        numValueOf = Integer.valueOf(i7);
                                        map2 = nsVar.b;
                                        if (map2.containsKey(numValueOf)) {
                                            Long l10 = (Long) map2.get(numValueOf);
                                            int i110 = u56.a;
                                            jElapsedRealtime2 = Math.max(jElapsedRealtime2, l10.longValue());
                                        }
                                        map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                    }
                                    zA = true;
                                }
                            }
                        }
                    }
                } else {
                    lu3Var = null;
                    hk0Var = jk0Var.i[jk0Var.j.a(czVar.d)];
                    msVarB = jk0Var.b.b(hk0Var.b.b);
                    if (msVarB != null) {
                    }
                    er2Var = jk0Var.j;
                    oe3Var = hk0Var.b.b;
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    j5 = -9223372036854775807L;
                    length = er2Var.length();
                    i3 = 0;
                    while (i2 < length) {
                        if (er2Var.b(i2, jElapsedRealtime)) {
                            i3++;
                        }
                    }
                    hashSet = new HashSet();
                    while (i4 < oe3Var.size()) {
                        hashSet.add(Integer.valueOf(((ms) oe3Var.get(i4)).c));
                    }
                    int size5 = hashSet.size();
                    ns nsVar5 = jk0Var.b;
                    nsVar5.getClass();
                    hashSet2 = new HashSet();
                    arrayListA = nsVar5.a(oe3Var);
                    z2 = z6;
                    while (i5 < arrayListA.size()) {
                        hashSet2.add(Integer.valueOf(((ms) arrayListA.get(i5)).c));
                    }
                    au3Var = new au3(size5, size5 - hashSet2.size(), length, i3);
                    if (au3Var.a(2)) {
                        ll0Var.getClass();
                        if (iOException instanceof la3) {
                            r7 = lu3Var;
                        } else if (au3Var.a(1)) {
                            bu3Var2 = new bu3(1, 300000L);
                        } else if (au3Var.a(2)) {
                            bu3Var = new bu3(2, 60000L);
                        } else {
                            r7 = lu3Var;
                        }
                        if (r7 != 0) {
                            r7 = bu3Var;
                            if (au3Var.a(r7.a)) {
                                i6 = r7.a;
                                if (i6 == 2) {
                                    er2 er2Var7 = jk0Var.j;
                                    zA = er2Var7.a(er2Var7.a(czVar.d), r7.b);
                                } else if (i6 == 1) {
                                    nsVar = jk0Var.b;
                                    ms msVar6 = hk0Var.c;
                                    long j12 = r7.b;
                                    nsVar.getClass();
                                    jElapsedRealtime2 = SystemClock.elapsedRealtime() + j12;
                                    str = msVar6.b;
                                    map = nsVar.a;
                                    if (map.containsKey(str)) {
                                        r7 = bu3Var2;
                                        Long l11 = (Long) map.get(str);
                                        int i111 = u56.a;
                                        jMax = Math.max(jElapsedRealtime2, l11.longValue());
                                    } else {
                                        r7 = bu3Var2;
                                        jMax = jElapsedRealtime2;
                                    }
                                    map.put(str, Long.valueOf(jMax));
                                    i7 = msVar6.c;
                                    if (i7 != Integer.MIN_VALUE) {
                                        numValueOf = Integer.valueOf(i7);
                                        map2 = nsVar.b;
                                        if (map2.containsKey(numValueOf)) {
                                            Long l12 = (Long) map2.get(numValueOf);
                                            int i112 = u56.a;
                                            jElapsedRealtime2 = Math.max(jElapsedRealtime2, l12.longValue());
                                        }
                                        map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                    }
                                    zA = true;
                                }
                            }
                        }
                    } else {
                        ll0Var.getClass();
                        if (iOException instanceof la3) {
                            r7 = lu3Var;
                        } else if (au3Var.a(1)) {
                            bu3Var2 = new bu3(1, 300000L);
                        } else if (au3Var.a(2)) {
                            bu3Var = new bu3(2, 60000L);
                        } else {
                            r7 = lu3Var;
                        }
                        if (r7 != 0) {
                            r7 = bu3Var;
                            if (au3Var.a(r7.a)) {
                                i6 = r7.a;
                                if (i6 == 2) {
                                    er2 er2Var8 = jk0Var.j;
                                    zA = er2Var8.a(er2Var8.a(czVar.d), r7.b);
                                } else if (i6 == 1) {
                                    nsVar = jk0Var.b;
                                    ms msVar7 = hk0Var.c;
                                    long j13 = r7.b;
                                    nsVar.getClass();
                                    jElapsedRealtime2 = SystemClock.elapsedRealtime() + j13;
                                    str = msVar7.b;
                                    map = nsVar.a;
                                    if (map.containsKey(str)) {
                                        r7 = bu3Var2;
                                        Long l13 = (Long) map.get(str);
                                        int i113 = u56.a;
                                        jMax = Math.max(jElapsedRealtime2, l13.longValue());
                                    } else {
                                        r7 = bu3Var2;
                                        jMax = jElapsedRealtime2;
                                    }
                                    map.put(str, Long.valueOf(jMax));
                                    i7 = msVar7.c;
                                    if (i7 != Integer.MIN_VALUE) {
                                        numValueOf = Integer.valueOf(i7);
                                        map2 = nsVar.b;
                                        if (map2.containsKey(numValueOf)) {
                                            Long l14 = (Long) map2.get(numValueOf);
                                            int i114 = u56.a;
                                            jElapsedRealtime2 = Math.max(jElapsedRealtime2, l14.longValue());
                                        }
                                        map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                    }
                                    zA = true;
                                }
                            }
                        }
                    }
                }
            } else if (jk0Var.k.d) {
                lu3Var = null;
                hk0Var = jk0Var.i[jk0Var.j.a(czVar.d)];
                msVarB = jk0Var.b.b(hk0Var.b.b);
                if (msVarB != null) {
                }
                er2Var = jk0Var.j;
                oe3Var = hk0Var.b.b;
                jElapsedRealtime = SystemClock.elapsedRealtime();
                j5 = -9223372036854775807L;
                length = er2Var.length();
                i3 = 0;
                while (i2 < length) {
                    if (er2Var.b(i2, jElapsedRealtime)) {
                        i3++;
                    }
                }
                hashSet = new HashSet();
                while (i4 < oe3Var.size()) {
                    hashSet.add(Integer.valueOf(((ms) oe3Var.get(i4)).c));
                }
                int size6 = hashSet.size();
                ns nsVar6 = jk0Var.b;
                nsVar6.getClass();
                hashSet2 = new HashSet();
                arrayListA = nsVar6.a(oe3Var);
                z2 = z6;
                while (i5 < arrayListA.size()) {
                    hashSet2.add(Integer.valueOf(((ms) arrayListA.get(i5)).c));
                }
                au3Var = new au3(size6, size6 - hashSet2.size(), length, i3);
                if (au3Var.a(2)) {
                    ll0Var.getClass();
                    if (iOException instanceof la3) {
                        r7 = lu3Var;
                    } else if (au3Var.a(1)) {
                        bu3Var2 = new bu3(1, 300000L);
                    } else if (au3Var.a(2)) {
                        bu3Var = new bu3(2, 60000L);
                    } else {
                        r7 = lu3Var;
                    }
                    if (r7 != 0) {
                        r7 = bu3Var;
                        if (au3Var.a(r7.a)) {
                            i6 = r7.a;
                            if (i6 == 2) {
                                er2 er2Var9 = jk0Var.j;
                                zA = er2Var9.a(er2Var9.a(czVar.d), r7.b);
                            } else if (i6 == 1) {
                                nsVar = jk0Var.b;
                                ms msVar8 = hk0Var.c;
                                long j14 = r7.b;
                                nsVar.getClass();
                                jElapsedRealtime2 = SystemClock.elapsedRealtime() + j14;
                                str = msVar8.b;
                                map = nsVar.a;
                                if (map.containsKey(str)) {
                                    r7 = bu3Var2;
                                    Long l15 = (Long) map.get(str);
                                    int i115 = u56.a;
                                    jMax = Math.max(jElapsedRealtime2, l15.longValue());
                                } else {
                                    r7 = bu3Var2;
                                    jMax = jElapsedRealtime2;
                                }
                                map.put(str, Long.valueOf(jMax));
                                i7 = msVar8.c;
                                if (i7 != Integer.MIN_VALUE) {
                                    numValueOf = Integer.valueOf(i7);
                                    map2 = nsVar.b;
                                    if (map2.containsKey(numValueOf)) {
                                        Long l16 = (Long) map2.get(numValueOf);
                                        int i116 = u56.a;
                                        jElapsedRealtime2 = Math.max(jElapsedRealtime2, l16.longValue());
                                    }
                                    map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                }
                                zA = true;
                            }
                        }
                    }
                } else {
                    ll0Var.getClass();
                    if (iOException instanceof la3) {
                        r7 = lu3Var;
                    } else if (au3Var.a(1)) {
                        bu3Var2 = new bu3(1, 300000L);
                    } else if (au3Var.a(2)) {
                        bu3Var = new bu3(2, 60000L);
                    } else {
                        r7 = lu3Var;
                    }
                    if (r7 != 0) {
                        r7 = bu3Var;
                        if (au3Var.a(r7.a)) {
                            i6 = r7.a;
                            if (i6 == 2) {
                                er2 er2Var10 = jk0Var.j;
                                zA = er2Var10.a(er2Var10.a(czVar.d), r7.b);
                            } else if (i6 == 1) {
                                nsVar = jk0Var.b;
                                ms msVar9 = hk0Var.c;
                                long j15 = r7.b;
                                nsVar.getClass();
                                jElapsedRealtime2 = SystemClock.elapsedRealtime() + j15;
                                str = msVar9.b;
                                map = nsVar.a;
                                if (map.containsKey(str)) {
                                    r7 = bu3Var2;
                                    Long l17 = (Long) map.get(str);
                                    int i117 = u56.a;
                                    jMax = Math.max(jElapsedRealtime2, l17.longValue());
                                } else {
                                    r7 = bu3Var2;
                                    jMax = jElapsedRealtime2;
                                }
                                map.put(str, Long.valueOf(jMax));
                                i7 = msVar9.c;
                                if (i7 != Integer.MIN_VALUE) {
                                    numValueOf = Integer.valueOf(i7);
                                    map2 = nsVar.b;
                                    if (map2.containsKey(numValueOf)) {
                                        Long l18 = (Long) map2.get(numValueOf);
                                        int i118 = u56.a;
                                        jElapsedRealtime2 = Math.max(jElapsedRealtime2, l18.longValue());
                                    }
                                    map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                }
                                zA = true;
                            }
                        }
                    }
                }
            } else {
                lu3Var = null;
                hk0Var = jk0Var.i[jk0Var.j.a(czVar.d)];
                msVarB = jk0Var.b.b(hk0Var.b.b);
                if (msVarB != null) {
                }
                er2Var = jk0Var.j;
                oe3Var = hk0Var.b.b;
                jElapsedRealtime = SystemClock.elapsedRealtime();
                j5 = -9223372036854775807L;
                length = er2Var.length();
                i3 = 0;
                while (i2 < length) {
                    if (er2Var.b(i2, jElapsedRealtime)) {
                        i3++;
                    }
                }
                hashSet = new HashSet();
                while (i4 < oe3Var.size()) {
                    hashSet.add(Integer.valueOf(((ms) oe3Var.get(i4)).c));
                }
                int size7 = hashSet.size();
                ns nsVar7 = jk0Var.b;
                nsVar7.getClass();
                hashSet2 = new HashSet();
                arrayListA = nsVar7.a(oe3Var);
                z2 = z6;
                while (i5 < arrayListA.size()) {
                    hashSet2.add(Integer.valueOf(((ms) arrayListA.get(i5)).c));
                }
                au3Var = new au3(size7, size7 - hashSet2.size(), length, i3);
                if (au3Var.a(2)) {
                    ll0Var.getClass();
                    if (iOException instanceof la3) {
                        r7 = lu3Var;
                    } else if (au3Var.a(1)) {
                        bu3Var2 = new bu3(1, 300000L);
                    } else if (au3Var.a(2)) {
                        bu3Var = new bu3(2, 60000L);
                    } else {
                        r7 = lu3Var;
                    }
                    if (r7 != 0) {
                        r7 = bu3Var;
                        if (au3Var.a(r7.a)) {
                            i6 = r7.a;
                            if (i6 == 2) {
                                er2 er2Var11 = jk0Var.j;
                                zA = er2Var11.a(er2Var11.a(czVar.d), r7.b);
                            } else if (i6 == 1) {
                                nsVar = jk0Var.b;
                                ms msVar10 = hk0Var.c;
                                long j16 = r7.b;
                                nsVar.getClass();
                                jElapsedRealtime2 = SystemClock.elapsedRealtime() + j16;
                                str = msVar10.b;
                                map = nsVar.a;
                                if (map.containsKey(str)) {
                                    r7 = bu3Var2;
                                    Long l19 = (Long) map.get(str);
                                    int i119 = u56.a;
                                    jMax = Math.max(jElapsedRealtime2, l19.longValue());
                                } else {
                                    r7 = bu3Var2;
                                    jMax = jElapsedRealtime2;
                                }
                                map.put(str, Long.valueOf(jMax));
                                i7 = msVar10.c;
                                if (i7 != Integer.MIN_VALUE) {
                                    numValueOf = Integer.valueOf(i7);
                                    map2 = nsVar.b;
                                    if (map2.containsKey(numValueOf)) {
                                        Long l110 = (Long) map2.get(numValueOf);
                                        int i1110 = u56.a;
                                        jElapsedRealtime2 = Math.max(jElapsedRealtime2, l110.longValue());
                                    }
                                    map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                }
                                zA = true;
                            }
                        }
                    }
                } else {
                    ll0Var.getClass();
                    if (iOException instanceof la3) {
                        r7 = lu3Var;
                    } else if (au3Var.a(1)) {
                        bu3Var2 = new bu3(1, 300000L);
                    } else if (au3Var.a(2)) {
                        bu3Var = new bu3(2, 60000L);
                    } else {
                        r7 = lu3Var;
                    }
                    if (r7 != 0) {
                        r7 = bu3Var;
                        if (au3Var.a(r7.a)) {
                            i6 = r7.a;
                            if (i6 == 2) {
                                er2 er2Var12 = jk0Var.j;
                                zA = er2Var12.a(er2Var12.a(czVar.d), r7.b);
                            } else if (i6 == 1) {
                                nsVar = jk0Var.b;
                                ms msVar11 = hk0Var.c;
                                long j17 = r7.b;
                                nsVar.getClass();
                                jElapsedRealtime2 = SystemClock.elapsedRealtime() + j17;
                                str = msVar11.b;
                                map = nsVar.a;
                                if (map.containsKey(str)) {
                                    r7 = bu3Var2;
                                    Long l111 = (Long) map.get(str);
                                    int i1111 = u56.a;
                                    jMax = Math.max(jElapsedRealtime2, l111.longValue());
                                } else {
                                    r7 = bu3Var2;
                                    jMax = jElapsedRealtime2;
                                }
                                map.put(str, Long.valueOf(jMax));
                                i7 = msVar11.c;
                                if (i7 != Integer.MIN_VALUE) {
                                    numValueOf = Integer.valueOf(i7);
                                    map2 = nsVar.b;
                                    if (map2.containsKey(numValueOf)) {
                                        Long l112 = (Long) map2.get(numValueOf);
                                        int i1112 = u56.a;
                                        jElapsedRealtime2 = Math.max(jElapsedRealtime2, l112.longValue());
                                    }
                                    map2.put(numValueOf, Long.valueOf(jElapsedRealtime2));
                                }
                                zA = true;
                            }
                        }
                    }
                }
            }
            if (!zA) {
                r7 = bu3Var2;
                lu3Var2 = lu3Var;
            } else if (z2) {
                lu3Var2 = ru3.d;
                if (z) {
                    if (a(size) == czVar) {
                        defpackage.ud.g();
                        return lu3Var;
                    }
                    if (this.l.isEmpty()) {
                        this.t = this.u;
                    }
                }
            } else {
                sv3.d("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
                r7 = bu3Var2;
                lu3Var2 = lu3Var;
            }
            if (lu3Var2 == null) {
                this.i.getClass();
                if ((iOException instanceof xs4) || (iOException instanceof FileNotFoundException) || (iOException instanceof ia3) || (iOException instanceof qu3)) {
                    jMin = j5;
                    break;
                }
                Throwable cause = iOException;
                while (true) {
                    if (cause == null) {
                        jMin = Math.min((i - 1) * 1000, AutofillUtils_androidKt.MAX_AUTOFILL_TEXT_LENGTH);
                        break;
                    }
                    if ((cause instanceof xc0) && ((xc0) cause).b == 2008) {
                        jMin = j5;
                        break;
                    }
                    cause = cause.getCause();
                }
                if (jMin != j5) {
                    z3 = false;
                    lu3Var2 = new lu3(0, jMin);
                } else {
                    z3 = false;
                    lu3Var2 = ru3.e;
                }
            } else {
                z3 = false;
            }
            i9 = lu3Var2.a;
            if (i9 != 0 || i9 == 1) {
                z4 = true;
            } else {
                z4 = z3;
            }
            k14 k14Var = this.h;
            lu3 lu3Var3 = lu3Var2;
            k14Var.a(cu3Var, new r04(czVar.c, this.b, czVar.d, czVar.e, czVar.f, k14Var.a(czVar.g), k14Var.a(czVar.h)), iOException, !z4);
            if (!z4) {
                this.q = lu3Var;
                this.i.getClass();
                pc0 pc0Var = this.g;
                pc0Var.s.a((ui5) pc0Var);
            }
            return lu3Var3;
        }
        z = z5;
        j5 = -9223372036854775807L;
        lu3Var = null;
        z2 = z6;
        r7 = bu3Var;
        r7 = bu3Var2;
        r7 = bu3Var2;
        r7 = bu3Var2;
        zA = false;
        if (!zA) {
            r7 = bu3Var2;
            lu3Var2 = lu3Var;
        } else if (z2) {
            lu3Var2 = ru3.d;
            if (z) {
                if (a(size) == czVar) {
                    defpackage.ud.g();
                    return lu3Var;
                }
                if (this.l.isEmpty()) {
                    this.t = this.u;
                }
            }
        } else {
            sv3.d("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
            r7 = bu3Var2;
            lu3Var2 = lu3Var;
        }
        if (lu3Var2 == null) {
            this.i.getClass();
            if (iOException instanceof xs4) {
                jMin = j5;
                break;
            }
            jMin = j5;
            break;
            if (jMin != j5) {
                z3 = false;
                lu3Var2 = new lu3(0, jMin);
            } else {
                z3 = false;
                lu3Var2 = ru3.e;
            }
        } else {
            z3 = false;
        }
        i9 = lu3Var2.a;
        if (i9 != 0) {
            z4 = true;
        } else {
            z4 = true;
        }
        k14 k14Var2 = this.h;
        lu3 lu3Var4 = lu3Var2;
        k14Var2.a(cu3Var, new r04(czVar.c, this.b, czVar.d, czVar.e, czVar.f, k14Var2.a(czVar.g), k14Var2.a(czVar.h)), iOException, !z4);
        if (!z4) {
            this.q = lu3Var;
            this.i.getClass();
            pc0 pc0Var2 = this.g;
            pc0Var2.s.a((ui5) pc0Var2);
        }
        return lu3Var4;
    }

    @Override // yads.ou3
    public final void b() {
        lc5 lc5Var = this.n;
        lc5Var.b(true);
        lc5Var.d();
        for (lc5 lc5Var2 : this.o) {
            lc5Var2.b(true);
            lc5Var2.d();
        }
        for (hk0 hk0Var : this.f.i) {
            ez ezVar = hk0Var.a;
            if (ezVar != null) {
                ((nv) ezVar).b.release();
            }
        }
        pc0 pc0Var = this.s;
        if (pc0Var != null) {
            synchronized (pc0Var) {
                nw4 nw4Var = (nw4) pc0Var.o.remove(this);
                if (nw4Var != null) {
                    lc5 lc5Var3 = nw4Var.a;
                    lc5Var3.b(true);
                    lc5Var3.d();
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:103:0x030e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0317  */
    /* JADX WARN: Code duplicated, block: B:159:0x043b  */
    /* JADX WARN: Code duplicated, block: B:90:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:92:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:93:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:96:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:97:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:99:0x02f0  */
    @Override // yads.ui5
    public final boolean c(long j) {
        List list;
        long j2;
        long j3;
        boolean z;
        long jMax;
        long j4;
        boolean z2;
        long jC;
        long jE;
        long jMax2;
        cz b60Var;
        boolean z3;
        int i;
        long jMax3;
        hk0 hk0Var;
        if (this.x || this.j.b() || this.j.c != null) {
            return false;
        }
        boolean zD = d();
        if (zD) {
            list = Collections.EMPTY_LIST;
            j2 = this.t;
        } else {
            list = this.m;
            j2 = ((zr) defpackage.dd2.b(1, this.l)).h;
        }
        List list2 = list;
        jk0 jk0Var = this.f;
        fz fzVar = this.k;
        if (jk0Var.m != null) {
            z = zD;
            j3 = -9223372036854775807L;
        } else {
            long j5 = j2 - j;
            long jA = u56.a(((au4) jk0Var.k.m.get(jk0Var.l)).b) + u56.a(jk0Var.k.a) + j2;
            nw4 nw4Var = jk0Var.h;
            if (nw4Var == null || !nw4Var.e.a(jA)) {
                long j6 = jk0Var.f;
                long jA2 = u56.a(j6 == C.TIME_UNSET ? System.currentTimeMillis() : j6 + SystemClock.elapsedRealtime());
                kc0 kc0Var = jk0Var.k;
                j3 = -9223372036854775807L;
                long j7 = kc0Var.a;
                long jA3 = j7 == C.TIME_UNSET ? -9223372036854775807L : jA2 - u56.a(j7 + ((au4) kc0Var.m.get(jk0Var.l)).b);
                zr zrVar = list2.isEmpty() ? null : (zr) defpackage.xy.d(1, list2);
                int length = jk0Var.j.length();
                ly3[] ly3VarArr = new ly3[length];
                int i2 = 0;
                while (i2 < length) {
                    hk0 hk0Var2 = jk0Var.i[i2];
                    qc0 qc0Var = hk0Var2.d;
                    if (qc0Var == null) {
                        ly3VarArr[i2] = ly3.a;
                        z3 = zD;
                        i = length;
                        i2 = i2;
                        list2 = list2;
                        ly3VarArr = ly3VarArr;
                    } else {
                        z3 = zD;
                        long jC2 = qc0Var.c(hk0Var2.e, jA2) + hk0Var2.f;
                        i = length;
                        long jE2 = (hk0Var2.d.e(hk0Var2.e, jA2) + (hk0Var2.d.c(hk0Var2.e, jA2) + hk0Var2.f)) - 1;
                        if (zrVar != null) {
                            jMax3 = zrVar.c();
                        } else {
                            long jA4 = hk0Var2.d.a(j2, hk0Var2.e) + hk0Var2.f;
                            int i3 = u56.a;
                            jMax3 = Math.max(jC2, Math.min(jA4, jE2));
                        }
                        long j8 = jMax3;
                        if (j8 < jC2) {
                            ly3VarArr[i2] = ly3.a;
                        } else {
                            hk0 hk0Var3 = jk0Var.i[i2];
                            ms msVarB = jk0Var.b.b(hk0Var3.b.b);
                            if (msVarB == null || msVarB.equals(hk0Var3.c)) {
                                hk0Var = hk0Var3;
                            } else {
                                hk0 hk0Var4 = new hk0(hk0Var3.e, hk0Var3.b, msVarB, hk0Var3.a, hk0Var3.f, hk0Var3.d);
                                jk0Var.i[i2] = hk0Var4;
                                hk0Var = hk0Var4;
                            }
                            ly3VarArr[i2] = new ik0(hk0Var, j8, jE2);
                        }
                    }
                    i2++;
                    zD = z3;
                    length = i;
                    list2 = list2;
                    ly3VarArr = ly3VarArr;
                }
                z = zD;
                List list3 = list2;
                ly3[] ly3VarArr2 = ly3VarArr;
                if (jk0Var.k.d) {
                    hk0 hk0Var5 = jk0Var.i[0];
                    long jA5 = jk0Var.i[0].a((hk0Var5.d.e(hk0Var5.e, jA2) + (hk0Var5.d.c(hk0Var5.e, jA2) + hk0Var5.f)) - 1);
                    kc0 kc0Var2 = jk0Var.k;
                    long j9 = kc0Var2.a;
                    jMax = Math.max(0L, Math.min(j9 == C.TIME_UNSET ? -9223372036854775807L : jA2 - u56.a(j9 + ((au4) kc0Var2.m.get(jk0Var.l)).b), jA5) - j);
                } else {
                    jMax = -9223372036854775807L;
                }
                jk0Var.j.a(j, j5, jMax, list3, ly3VarArr2);
                int iF = jk0Var.j.f();
                hk0 hk0Var6 = jk0Var.i[iF];
                ms msVarB2 = jk0Var.b.b(hk0Var6.b.b);
                if (msVarB2 != null && !msVarB2.equals(hk0Var6.c)) {
                    hk0 hk0Var7 = new hk0(hk0Var6.e, hk0Var6.b, msVarB2, hk0Var6.a, hk0Var6.f, hk0Var6.d);
                    jk0Var.i[iF] = hk0Var7;
                    hk0Var6 = hk0Var7;
                }
                ez ezVar = hk0Var6.a;
                if (ezVar != null) {
                    o75 o75Var = hk0Var6.b;
                    y35 y35Var = ((nv) ezVar).j == null ? o75Var.e : null;
                    y35 y35VarE = hk0Var6.d == null ? o75Var.e() : null;
                    if (y35Var == null && y35VarE == null) {
                        j4 = hk0Var6.e;
                        if (j4 != C.TIME_UNSET) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (hk0Var6.d.c(j4) == 0) {
                            r2.b = z2;
                        } else {
                            jC = hk0Var6.d.c(hk0Var6.e, jA2) + hk0Var6.f;
                            jE = (hk0Var6.d.e(hk0Var6.e, jA2) + (hk0Var6.d.c(hk0Var6.e, jA2) + hk0Var6.f)) - 1;
                            if (zrVar != null) {
                                jMax2 = zrVar.c();
                            } else {
                                long jA6 = hk0Var6.d.a(j2, hk0Var6.e) + hk0Var6.f;
                                int i4 = u56.a;
                                jMax2 = Math.max(jC, Math.min(jA6, jE));
                            }
                            if (jMax2 < jC) {
                                jk0Var.m = new vs();
                            } else if (jMax2 <= jE || (jk0Var.n && jMax2 >= jE)) {
                                r2.b = z2;
                            } else if (!z2 || hk0Var6.d.a(jMax2 - hk0Var6.f) < j4) {
                                int iMin = (int) Math.min(jk0Var.g, (jE - jMax2) + 1);
                                if (j4 != C.TIME_UNSET) {
                                    while (iMin > 1 && hk0Var6.d.a(((((long) iMin) + jMax2) - 1) - hk0Var6.f) >= j4) {
                                        iMin--;
                                    }
                                }
                                long j10 = list3.isEmpty() ? j2 : -9223372036854775807L;
                                wc0 wc0Var = jk0Var.e;
                                int i5 = jk0Var.d;
                                vz2 vz2VarD = jk0Var.j.d();
                                int iE = jk0Var.j.e();
                                Object objG = jk0Var.j.g();
                                o75 o75Var2 = hk0Var6.b;
                                long jA7 = hk0Var6.d.a(jMax2 - hk0Var6.f);
                                y35 y35VarB = hk0Var6.d.b(jMax2 - hk0Var6.f);
                                if (hk0Var6.a == null) {
                                    b60Var = new kl5(wc0Var, rc0.a(o75Var2, hk0Var6.c.a, y35VarB, (hk0Var6.d.a() || jA3 == C.TIME_UNSET || hk0Var6.a(jMax2) <= jA3) ? 0 : 8), vz2VarD, iE, objG, jA7, hk0Var6.a(jMax2), jMax2, i5, vz2VarD);
                                } else {
                                    long j11 = jMax2;
                                    int i6 = 1;
                                    int i7 = 1;
                                    while (i6 < iMin) {
                                        y35 y35VarA = y35VarB.a(hk0Var6.d.b((j11 + ((long) i6)) - hk0Var6.f), hk0Var6.c.a);
                                        if (y35VarA == null) {
                                            break;
                                        }
                                        i7++;
                                        i6++;
                                        y35VarB = y35VarA;
                                    }
                                    long j12 = (j11 + ((long) i7)) - 1;
                                    long jA8 = hk0Var6.a(j12);
                                    long j13 = hk0Var6.e;
                                    b60Var = new b60(wc0Var, rc0.a(o75Var2, hk0Var6.c.a, y35VarB, (hk0Var6.d.a() || jA3 == C.TIME_UNSET || hk0Var6.a(j12) <= jA3) ? 0 : 8), vz2VarD, iE, objG, jA7, jA8, j10, (j13 == C.TIME_UNSET || j13 > jA8) ? -9223372036854775807L : j13, j11, i7, -o75Var2.c, hk0Var6.a);
                                }
                                r2.a = b60Var;
                            } else {
                                r2.b = true;
                            }
                        }
                    } else {
                        wc0 wc0Var2 = jk0Var.e;
                        vz2 vz2VarD2 = jk0Var.j.d();
                        int iE2 = jk0Var.j.e();
                        Object objG2 = jk0Var.j.g();
                        o75 o75Var3 = hk0Var6.b;
                        if (y35Var == null || (y35VarE = y35Var.a(y35VarE, hk0Var6.c.a)) != null) {
                            y35Var = y35VarE;
                        }
                        fzVar.a = new lg3(wc0Var2, rc0.a(o75Var3, hk0Var6.c.a, y35Var, 0), vz2VarD2, iE2, objG2, hk0Var6.a);
                    }
                } else {
                    j4 = hk0Var6.e;
                    if (j4 != C.TIME_UNSET) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (hk0Var6.d.c(j4) == 0) {
                        r2.b = z2;
                    } else {
                        jC = hk0Var6.d.c(hk0Var6.e, jA2) + hk0Var6.f;
                        jE = (hk0Var6.d.e(hk0Var6.e, jA2) + (hk0Var6.d.c(hk0Var6.e, jA2) + hk0Var6.f)) - 1;
                        if (zrVar != null) {
                            jMax2 = zrVar.c();
                        } else {
                            long jA9 = hk0Var6.d.a(j2, hk0Var6.e) + hk0Var6.f;
                            int i8 = u56.a;
                            jMax2 = Math.max(jC, Math.min(jA9, jE));
                        }
                        if (jMax2 < jC) {
                            jk0Var.m = new vs();
                        } else if (jMax2 <= jE) {
                            r2.b = z2;
                        } else {
                            r2.b = z2;
                        }
                    }
                }
            } else {
                z = zD;
                j3 = -9223372036854775807L;
            }
        }
        fz fzVar2 = this.k;
        boolean z4 = fzVar2.b;
        cz czVar = fzVar2.a;
        fzVar2.a = null;
        fzVar2.b = false;
        if (z4) {
            this.t = j3;
            this.x = true;
            return true;
        }
        if (czVar == null) {
            return false;
        }
        this.q = czVar;
        if (czVar instanceof zr) {
            zr zrVar2 = (zr) czVar;
            if (z) {
                long j14 = zrVar2.g;
                long j15 = this.t;
                if (j14 != j15) {
                    this.n.t = j15;
                    for (lc5 lc5Var : this.o) {
                        lc5Var.t = this.t;
                    }
                }
                this.t = C.TIME_UNSET;
            }
            bs bsVar = this.p;
            zrVar2.m = bsVar;
            int[] iArr = new int[bsVar.b.length];
            int i9 = 0;
            while (true) {
                lc5[] lc5VarArr = bsVar.b;
                if (i9 >= lc5VarArr.length) {
                    break;
                }
                lc5 lc5Var2 = lc5VarArr[i9];
                iArr[i9] = lc5Var2.q + lc5Var2.p;
                i9++;
            }
            zrVar2.n = iArr;
            this.l.add(zrVar2);
        } else if (czVar instanceof lg3) {
            ((lg3) czVar).k = this.p;
        }
        this.j.a(czVar, this, this.i.a(czVar.c));
        k14 k14Var = this.h;
        k14Var.c(new cu3(czVar.b), new r04(czVar.c, this.b, czVar.d, czVar.e, czVar.f, k14Var.a(czVar.g), k14Var.a(czVar.h)));
        return true;
    }

    public final boolean d() {
        return this.t != C.TIME_UNSET;
    }

    public final void e() {
        lc5 lc5Var = this.n;
        int iA = a(lc5Var.q + lc5Var.s, this.v - 1);
        while (true) {
            int i = this.v;
            if (i > iA) {
                return;
            }
            this.v = i + 1;
            zr zrVar = (zr) this.l.get(i);
            vz2 vz2Var = zrVar.d;
            if (!vz2Var.equals(this.r)) {
                k14 k14Var = this.h;
                k14Var.a(new r04(1, this.b, vz2Var, zrVar.e, zrVar.f, k14Var.a(zrVar.g), C.TIME_UNSET));
            }
            this.r = vz2Var;
        }
    }

    @Override // yads.ui5
    public final long getBufferedPositionUs() {
        long j;
        if (this.x) {
            return Long.MIN_VALUE;
        }
        if (d()) {
            return this.t;
        }
        long jMax = this.u;
        zr zrVar = (zr) defpackage.dd2.b(1, this.l);
        if (!zrVar.d()) {
            zrVar = this.l.size() > 1 ? (zr) defpackage.dd2.b(2, this.l) : null;
        }
        if (zrVar != null) {
            jMax = Math.max(jMax, zrVar.h);
        }
        lc5 lc5Var = this.n;
        synchronized (lc5Var) {
            j = lc5Var.v;
        }
        return Math.max(jMax, j);
    }

    @Override // yads.ui5
    public final long getNextLoadPositionUs() {
        if (d()) {
            return this.t;
        }
        if (this.x) {
            return Long.MIN_VALUE;
        }
        return ((zr) defpackage.dd2.b(1, this.l)).h;
    }

    @Override // yads.ui5
    public final boolean isLoading() {
        return this.j.b();
    }

    @Override // yads.ui5
    public final void reevaluateBuffer(long j) {
        if (this.j.c == null && !d()) {
            if (this.j.b()) {
                cz czVar = this.q;
                czVar.getClass();
                boolean z = czVar instanceof zr;
                if (z && b(this.l.size() - 1)) {
                    return;
                }
                jk0 jk0Var = this.f;
                if (jk0Var.m != null ? false : jk0Var.j.a(j, czVar, this.m)) {
                    mu3 mu3Var = this.j.b;
                    if (mu3Var == null) {
                        defpackage.ud.g();
                        return;
                    }
                    mu3Var.a(false);
                    if (z) {
                        this.w = (zr) czVar;
                        return;
                    }
                    return;
                }
                return;
            }
            jk0 jk0Var2 = this.f;
            List list = this.m;
            int size = (jk0Var2.m != null || jk0Var2.j.length() < 2) ? list.size() : jk0Var2.j.a(j, list);
            if (size < this.l.size()) {
                if (this.j.b()) {
                    defpackage.ud.g();
                    return;
                }
                int size2 = this.l.size();
                while (true) {
                    if (size >= size2) {
                        size = -1;
                        break;
                    } else if (!b(size)) {
                        break;
                    } else {
                        size++;
                    }
                }
                if (size == -1) {
                    return;
                }
                long j2 = ((zr) defpackage.dd2.b(1, this.l)).h;
                zr zrVarA = a(size);
                if (this.l.isEmpty()) {
                    this.t = this.u;
                }
                this.x = false;
                k14 k14Var = this.h;
                k14Var.b(new r04(1, this.b, null, 3, null, k14Var.a(zrVarA.g), k14Var.a(j2)));
            }
        }
    }

    @Override // yads.mc5
    public final int b(long j) throws Throwable {
        if (d()) {
            return 0;
        }
        int iB = this.n.b(j, this.x);
        zr zrVar = this.w;
        if (zrVar != null) {
            int iA = zrVar.a(0);
            lc5 lc5Var = this.n;
            iB = Math.min(iB, iA - (lc5Var.q + lc5Var.s));
        }
        lc5 lc5Var2 = this.n;
        synchronized (lc5Var2) {
            if (iB >= 0) {
                int i = lc5Var2.s + iB;
                if (i <= lc5Var2.p) {
                    lc5Var2.s = i;
                }
            }
            throw new IllegalArgumentException();
        }
        e();
        return iB;
    }

    public final boolean b(int i) {
        lc5 lc5Var;
        zr zrVar = (zr) this.l.get(i);
        lc5 lc5Var2 = this.n;
        if (lc5Var2.q + lc5Var2.s > zrVar.a(0)) {
            return true;
        }
        int i2 = 0;
        do {
            lc5[] lc5VarArr = this.o;
            if (i2 >= lc5VarArr.length) {
                return false;
            }
            lc5Var = lc5VarArr[i2];
            i2++;
        } while (lc5Var.q + lc5Var.s <= zrVar.a(i2));
        return true;
    }

    @Override // yads.ku3
    public final void a(nu3 nu3Var, long j, long j2) {
        gz gzVarB;
        cz czVar = (cz) nu3Var;
        this.q = null;
        jk0 jk0Var = this.f;
        if (czVar instanceof lg3) {
            int iA = jk0Var.j.a(((lg3) czVar).d);
            hk0 hk0Var = jk0Var.i[iA];
            if (hk0Var.d == null && (gzVarB = ((nv) hk0Var.a).b()) != null) {
                hk0[] hk0VarArr = jk0Var.i;
                o75 o75Var = hk0Var.b;
                hk0VarArr[iA] = new hk0(hk0Var.e, o75Var, hk0Var.c, hk0Var.a, hk0Var.f, new sc0(gzVarB, o75Var.c));
            }
        }
        nw4 nw4Var = jk0Var.h;
        if (nw4Var != null) {
            long j3 = nw4Var.d;
            if (j3 == C.TIME_UNSET || czVar.h > j3) {
                nw4Var.d = czVar.h;
            }
            nw4Var.e.h = true;
        }
        long j4 = czVar.a;
        Uri uri = czVar.i.c;
        cu3 cu3Var = new cu3();
        this.i.getClass();
        k14 k14Var = this.h;
        k14Var.b(cu3Var, new r04(czVar.c, this.b, czVar.d, czVar.e, czVar.f, k14Var.a(czVar.g), k14Var.a(czVar.h)));
        pc0 pc0Var = this.g;
        pc0Var.s.a((ui5) pc0Var);
    }

    @Override // yads.ku3
    public final void a(nu3 nu3Var, long j, long j2, boolean z) {
        cz czVar = (cz) nu3Var;
        this.q = null;
        this.w = null;
        long j3 = czVar.a;
        Uri uri = czVar.i.c;
        cu3 cu3Var = new cu3();
        this.i.getClass();
        k14 k14Var = this.h;
        k14Var.a(cu3Var, new r04(czVar.c, this.b, czVar.d, czVar.e, czVar.f, k14Var.a(czVar.g), k14Var.a(czVar.h)));
        if (z) {
            return;
        }
        if (d()) {
            this.n.b(false);
            for (lc5 lc5Var : this.o) {
                lc5Var.b(false);
            }
        } else if (czVar instanceof zr) {
            a(this.l.size() - 1);
            if (this.l.isEmpty()) {
                this.t = this.u;
            }
        }
        pc0 pc0Var = this.g;
        pc0Var.s.a((ui5) pc0Var);
    }

    @Override // yads.mc5
    public final void a() throws IOException {
        this.j.a(Integer.MIN_VALUE);
        lc5 lc5Var = this.n;
        eo2 eo2Var = lc5Var.h;
        if (eo2Var != null && eo2Var.c() == 1) {
            rl2 rl2VarA = lc5Var.h.a();
            rl2VarA.getClass();
            throw rl2VarA;
        }
        if (this.j.b()) {
            return;
        }
        jk0 jk0Var = this.f;
        vs vsVar = jk0Var.m;
        if (vsVar == null) {
            jk0Var.a.a();
            return;
        }
        throw vsVar;
    }

    @Override // yads.mc5
    public final int a(a03 a03Var, mi0 mi0Var, int i) {
        if (d()) {
            return -3;
        }
        zr zrVar = this.w;
        if (zrVar != null) {
            int iA = zrVar.a(0);
            lc5 lc5Var = this.n;
            if (iA <= lc5Var.q + lc5Var.s) {
                return -3;
            }
        }
        e();
        return this.n.a(a03Var, mi0Var, i, this.x);
    }

    public final int a(int i, int i2) {
        ArrayList arrayList;
        do {
            i2++;
            int size = this.l.size();
            arrayList = this.l;
            if (i2 >= size) {
                return arrayList.size() - 1;
            }
        } while (((zr) arrayList.get(i2)).a(0) <= i);
        return i2 - 1;
    }

    public final zr a(int i) {
        zr zrVar = (zr) this.l.get(i);
        ArrayList arrayList = this.l;
        int size = arrayList.size();
        int i2 = u56.a;
        if (i >= 0 && size <= arrayList.size() && i <= size) {
            if (i != size) {
                arrayList.subList(i, size).clear();
            }
            this.v = Math.max(this.v, this.l.size());
            int i3 = 0;
            this.n.b(zrVar.a(0));
            while (true) {
                lc5[] lc5VarArr = this.o;
                if (i3 >= lc5VarArr.length) {
                    return zrVar;
                }
                lc5 lc5Var = lc5VarArr[i3];
                i3++;
                lc5Var.b(zrVar.a(i3));
            }
        } else {
            defpackage.mi2.b();
            return null;
        }
    }

    @Override // yads.mc5
    public final boolean c() {
        return !d() && this.n.a(this.x);
    }
}
