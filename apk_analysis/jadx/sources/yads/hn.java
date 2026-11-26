package yads;

import androidx.media3.common.C;
import androidx.media3.extractor.avi.AviExtractor;
import defpackage.u4;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class hn implements ws2 {
    public int c;
    public in e;
    public long h;
    public hz i;
    public int m;
    public boolean n;
    public final os4 a = new os4(12);
    public final gn b = new gn();
    public zs2 d = new bm2();
    public hz[] g = new hz[0];
    public long k = -1;
    public long l = -1;
    public int j = -1;
    public long f = C.TIME_UNSET;

    /* JADX WARN: Code duplicated, block: B:155:0x034d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0103  */
    /* JADX WARN: Code duplicated, block: B:65:0x010a  */
    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) throws xs4 {
        boolean z;
        hz hzVar;
        long j;
        int i;
        hz hzVar2;
        long j2 = this.h;
        int i2 = 0;
        if (j2 != -1) {
            wk0 wk0Var = (wk0) xs2Var;
            long j3 = wk0Var.d;
            if (j2 < j3 || j2 > 262144 + j3) {
                qx4Var.a = j2;
                z = true;
            } else {
                wk0Var.a((int) (j2 - j3));
                z = false;
            }
        } else {
            z = false;
        }
        this.h = -1L;
        if (z) {
            return 1;
        }
        hz hzVar3 = null;
        switch (this.c) {
            case 0:
                if (!a(xs2Var)) {
                    defpackage.e2.h("AVI Header List not found", null);
                    return 0;
                }
                ((wk0) xs2Var).a(12);
                this.c = 1;
                return 0;
            case 1:
                ((wk0) xs2Var).a(this.a.a, 0, 12, false);
                this.a.e(0);
                gn gnVar = this.b;
                os4 os4Var = this.a;
                gnVar.a = os4Var.c();
                gnVar.b = os4Var.c();
                gnVar.c = 0;
                if (gnVar.a != 1414744396) {
                    u4.c(gnVar.a, "LIST expected, found: ");
                    return 0;
                }
                gnVar.c = os4Var.c();
                gn gnVar2 = this.b;
                if (gnVar2.c != 1819436136) {
                    u4.c(this.b.c, "hdrl expected, found: ");
                    return 0;
                }
                this.j = gnVar2.b;
                this.c = 2;
                return 0;
            case 2:
                int i3 = this.j - 4;
                os4 os4Var2 = new os4(i3);
                ((wk0) xs2Var).a(os4Var2.a, 0, i3, false);
                rt3 rt3VarA = rt3.a(AviExtractor.FOURCC_hdrl, os4Var2);
                if (rt3VarA.b != 1819436136) {
                    u4.c(rt3VarA.b, "Unexpected header list type ");
                    return 0;
                }
                in inVar = (in) rt3VarA.a(in.class);
                if (inVar == null) {
                    defpackage.e2.h("AviHeader not found", null);
                    return 0;
                }
                this.e = inVar;
                this.f = ((long) inVar.c) * ((long) inVar.a);
                ArrayList arrayList = new ArrayList();
                le3 le3VarListIterator = rt3VarA.a.listIterator(0);
                int i4 = 0;
                while (le3VarListIterator.hasNext()) {
                    en enVar = (en) le3VarListIterator.next();
                    if (enVar.getType() == 1819440243) {
                        rt3 rt3Var = (rt3) enVar;
                        int i5 = i4 + 1;
                        jn jnVar = (jn) rt3Var.a(jn.class);
                        zr5 zr5Var = (zr5) rt3Var.a(zr5.class);
                        if (jnVar == null) {
                            sv3.d("AviExtractor", "Missing Stream Header");
                        } else if (zr5Var == null) {
                            sv3.d("AviExtractor", "Missing Stream Format");
                        } else {
                            long jA = u56.a(jnVar.d, ((long) jnVar.b) * 1000000, jnVar.c);
                            vz2 vz2Var = zr5Var.a;
                            uz2 uz2Var = new uz2(vz2Var);
                            uz2Var.a = Integer.toString(i4);
                            int i6 = jnVar.e;
                            if (i6 != 0) {
                                uz2Var.l = i6;
                            }
                            cs5 cs5Var = (cs5) rt3Var.a(cs5.class);
                            if (cs5Var != null) {
                                uz2Var.b = cs5Var.a;
                            }
                            int iD = z84.d(vz2Var.m);
                            if (iD == 1 || iD == 2) {
                                k06 k06VarA = this.d.a(i4, iD);
                                k06VarA.a(new vz2(uz2Var));
                                hzVar = new hz(i4, iD, jA, jnVar.d, k06VarA);
                                this.f = jA;
                            }
                            if (hzVar != null) {
                                arrayList.add(hzVar);
                            }
                            i4 = i5;
                        }
                        hzVar = null;
                        if (hzVar != null) {
                            arrayList.add(hzVar);
                        }
                        i4 = i5;
                    }
                }
                this.g = (hz[]) arrayList.toArray(new hz[0]);
                this.d.a();
                this.c = 3;
                return 0;
            case 3:
                long j4 = this.k;
                if (j4 != -1 && ((wk0) xs2Var).d != j4) {
                    this.h = j4;
                    return 0;
                }
                wk0 wk0Var2 = (wk0) xs2Var;
                wk0Var2.b(this.a.a, 0, 12, false);
                wk0Var2.f = 0;
                this.a.e(0);
                gn gnVar3 = this.b;
                os4 os4Var3 = this.a;
                gnVar3.a = os4Var3.c();
                gnVar3.b = os4Var3.c();
                gnVar3.c = 0;
                int iC = this.a.c();
                gn gnVar4 = this.b;
                int i7 = gnVar4.a;
                if (i7 == 1179011410) {
                    wk0Var2.a(12);
                    return 0;
                }
                if (i7 != 1414744396 || iC != 1769369453) {
                    this.h = wk0Var2.d + ((long) gnVar4.b) + 8;
                    return 0;
                }
                long j5 = wk0Var2.d;
                this.k = j5;
                this.l = j5 + ((long) gnVar4.b) + 8;
                if (!this.n) {
                    in inVar2 = this.e;
                    inVar2.getClass();
                    if ((inVar2.b & 16) == 16) {
                        this.c = 4;
                        this.h = this.l;
                        return 0;
                    }
                    this.d.a(new rh5(this.f, 0L));
                    this.n = true;
                }
                this.h = wk0Var2.d + 12;
                this.c = 6;
                return 0;
            case 4:
                wk0 wk0Var3 = (wk0) xs2Var;
                wk0Var3.a(this.a.a, 0, 8, false);
                this.a.e(0);
                int iC2 = this.a.c();
                int iC3 = this.a.c();
                if (iC2 != 829973609) {
                    this.h = wk0Var3.d + ((long) iC3);
                    return 0;
                }
                this.c = 5;
                this.m = iC3;
                return 0;
            case 5:
                os4 os4Var4 = new os4(this.m);
                ((wk0) xs2Var).a(os4Var4.a, 0, this.m, false);
                int i8 = os4Var4.c;
                int i9 = os4Var4.b;
                if (i8 - i9 < 16) {
                    j = 0;
                } else {
                    os4Var4.e(i9 + 8);
                    long jC = os4Var4.c();
                    long j6 = this.k;
                    j = jC > j6 ? 0L : j6 + 8;
                    os4Var4.e(i9);
                }
                while (os4Var4.c - os4Var4.b >= 16) {
                    int iC4 = os4Var4.c();
                    int iC5 = os4Var4.c();
                    long jC2 = ((long) os4Var4.c()) + j;
                    os4Var4.c();
                    hz[] hzVarArr = this.g;
                    int length = hzVarArr.length;
                    int i10 = i2;
                    while (true) {
                        if (i10 < length) {
                            hzVar2 = hzVarArr[i10];
                            i = i2;
                            if (hzVar2.b != iC4 && hzVar2.c != iC4) {
                                i10++;
                                i2 = i;
                            }
                        } else {
                            i = i2;
                            hzVar2 = null;
                        }
                    }
                    if (hzVar2 != null) {
                        if ((iC5 & 16) == 16) {
                            hzVar2.a(jC2);
                        }
                        hzVar2.i++;
                    }
                    i2 = i;
                }
                int i11 = i2;
                hz[] hzVarArr2 = this.g;
                int length2 = hzVarArr2.length;
                for (int i12 = i11; i12 < length2; i12++) {
                    hzVarArr2[i12].a();
                }
                this.n = true;
                this.d.a(new fn(this, this.f));
                this.c = 6;
                this.h = this.k;
                return i11;
            case 6:
                wk0 wk0Var4 = (wk0) xs2Var;
                long j7 = wk0Var4.d;
                if (j7 >= this.l) {
                    return -1;
                }
                hz hzVar4 = this.i;
                if (hzVar4 != null) {
                    int i13 = hzVar4.g;
                    int iA = i13 - hzVar4.a.a(xs2Var, i13, false);
                    hzVar4.g = iA;
                    boolean z2 = iA == 0;
                    if (z2) {
                        if (hzVar4.f > 0) {
                            k06 k06Var = hzVar4.a;
                            int i14 = hzVar4.h;
                            k06Var.a((hzVar4.d * ((long) i14)) / ((long) hzVar4.e), Arrays.binarySearch(hzVar4.l, i14) >= 0 ? 1 : 0, hzVar4.f, 0, null);
                        }
                        hzVar4.h++;
                    }
                    if (z2) {
                        this.i = null;
                    }
                } else {
                    if ((j7 & 1) == 1) {
                        wk0Var4.a(1);
                    }
                    wk0Var4.b(this.a.a, 0, 12, false);
                    this.a.e(0);
                    int iC6 = this.a.c();
                    os4 os4Var5 = this.a;
                    if (iC6 == 1414744396) {
                        os4Var5.e(8);
                        wk0Var4.a(this.a.c() == 1769369453 ? 12 : 8);
                        wk0Var4.f = 0;
                    } else {
                        int iC7 = os4Var5.c();
                        if (iC6 == 1263424842) {
                            this.h = wk0Var4.d + ((long) iC7) + 8;
                            return 0;
                        }
                        wk0Var4.a(8);
                        wk0Var4.f = 0;
                        for (hz hzVar5 : this.g) {
                            if (hzVar5.b == iC6 || hzVar5.c == iC6) {
                                hzVar3 = hzVar5;
                                if (hzVar3 == null) {
                                    this.h = wk0Var4.d + ((long) iC7);
                                    return 0;
                                }
                                hzVar3.f = iC7;
                                hzVar3.g = iC7;
                                this.i = hzVar3;
                            }
                        }
                        if (hzVar3 == null) {
                            this.h = wk0Var4.d + ((long) iC7);
                            return 0;
                        }
                        hzVar3.f = iC7;
                        hzVar3.g = iC7;
                        this.i = hzVar3;
                    }
                }
                return 0;
            default:
                defpackage.xp.g();
                return 0;
        }
    }

    @Override // yads.ws2
    public final void release() {
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        ((wk0) xs2Var).b(this.a.a, 0, 12, false);
        this.a.e(0);
        if (this.a.c() != 1179011410) {
            return false;
        }
        os4 os4Var = this.a;
        os4Var.e(os4Var.b + 4);
        return this.a.c() == 541677121;
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        this.h = -1L;
        this.i = null;
        for (hz hzVar : this.g) {
            if (hzVar.j == 0) {
                hzVar.h = 0;
            } else {
                hzVar.h = hzVar.l[u56.b(hzVar.k, j, true)];
            }
        }
        if (j == 0) {
            if (this.g.length == 0) {
                this.c = 0;
                return;
            } else {
                this.c = 3;
                return;
            }
        }
        this.c = 6;
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        this.c = 0;
        this.d = zs2Var;
        this.h = -1L;
    }
}
