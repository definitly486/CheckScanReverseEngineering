package yads;

import android.util.Pair;
import androidx.collection.SieveCacheKt;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4Box;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wa4 implements ws2, sh5 {
    public int i;
    public long j;
    public int k;
    public os4 l;
    public int n;
    public int o;
    public int p;
    public long[][] s;
    public int t;
    public long u;
    public int v;
    public int h = 0;
    public final yh5 f = new yh5();
    public final ArrayList g = new ArrayList();
    public final os4 d = new os4(16);
    public final ArrayDeque e = new ArrayDeque();
    public final os4 a = new os4(qd4.a);
    public final os4 b = new os4(4);
    public final os4 c = new os4();
    public int m = -1;
    public zs2 q = zs2.a;
    public va4[] r = new va4[0];

    public static ws2[] d() {
        return new ws2[]{new wa4()};
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x009b  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) throws xs4 {
        int i;
        long j;
        long j2;
        int i2;
        char c;
        boolean z;
        jl jlVar;
        while (true) {
            int i3 = this.h;
            int i4 = 0;
            if (i3 == 0) {
                if (this.k == 0) {
                    if (!xs2Var.a(this.d.a, 0, 8, true)) {
                        return -1;
                    }
                    this.k = 8;
                    this.d.e(0);
                    this.j = this.d.l();
                    this.i = this.d.a();
                }
                long j3 = this.j;
                if (j3 == 1) {
                    xs2Var.b(this.d.a, 8, 8);
                    this.k += 8;
                    this.j = this.d.o();
                } else if (j3 == 0) {
                    long jA = xs2Var.a();
                    if (jA == -1 && (jlVar = (jl) this.e.peek()) != null) {
                        jA = jlVar.b;
                    }
                    if (jA != -1) {
                        this.j = (jA - xs2Var.f()) + ((long) this.k);
                    }
                }
                long j4 = this.j;
                int i5 = this.k;
                if (j4 < i5) {
                    throw xs4.a("Atom size less than header length (unsupported).");
                }
                int i6 = this.i;
                if (i6 == 1836019574 || i6 == 1953653099 || i6 == 1835297121 || i6 == 1835626086 || i6 == 1937007212 || i6 == 1701082227 || i6 == 1835365473) {
                    long jF = xs2Var.f();
                    long j5 = this.j;
                    long j6 = this.k;
                    long j7 = (jF + j5) - j6;
                    if (j5 != j6 && this.i == 1835365473) {
                        this.c.c(8);
                        xs2Var.a(this.c.a, 0, 8);
                        os4 os4Var = this.c;
                        byte[] bArr = sl.a;
                        int i7 = os4Var.b;
                        int i8 = i7 + 4;
                        os4Var.e(i8);
                        if (os4Var.a() != 1751411826) {
                            i7 = i8;
                        }
                        os4Var.e(i7);
                        xs2Var.a(this.c.b);
                        xs2Var.c();
                    }
                    this.e.push(new jl(this.i, j7));
                    if (this.j == this.k) {
                        c(j7);
                    } else {
                        this.h = 0;
                        this.k = 0;
                    }
                } else if (i6 == 1835296868 || i6 == 1836476516 || i6 == 1751411826 || i6 == 1937011556 || i6 == 1937011827 || i6 == 1937011571 || i6 == 1668576371 || i6 == 1701606260 || i6 == 1937011555 || i6 == 1937011578 || i6 == 1937013298 || i6 == 1937007471 || i6 == 1668232756 || i6 == 1953196132 || i6 == 1718909296 || i6 == 1969517665 || i6 == 1801812339 || i6 == 1768715124) {
                    if (i5 != 8) {
                        defpackage.ud.g();
                        return 0;
                    }
                    if (j4 > SieveCacheKt.NodeLinkMask) {
                        defpackage.ud.g();
                        return 0;
                    }
                    os4 os4Var2 = new os4((int) j4);
                    System.arraycopy(this.d.a, 0, os4Var2.a, 0, 8);
                    this.l = os4Var2;
                    this.h = 1;
                } else {
                    long jF2 = xs2Var.f();
                    long j8 = this.k;
                    long j9 = jF2 - j8;
                    if (this.i == 1836086884) {
                        new ta4(0L, j9, C.TIME_UNSET, j9 + j8, this.j - j8);
                    }
                    this.l = null;
                    this.h = 1;
                }
            } else {
                if (i3 != 1) {
                    if (i3 == 2) {
                        long jF3 = xs2Var.f();
                        int i9 = this.m;
                        if (i9 == -1) {
                            int i10 = -1;
                            int i11 = -1;
                            boolean z2 = true;
                            boolean z3 = true;
                            int i12 = 0;
                            long j10 = Long.MAX_VALUE;
                            long j11 = Long.MAX_VALUE;
                            long j12 = Long.MAX_VALUE;
                            while (true) {
                                va4[] va4VarArr = this.r;
                                if (i12 >= va4VarArr.length) {
                                    break;
                                }
                                va4 va4Var = va4VarArr[i12];
                                int i13 = va4Var.e;
                                l06 l06Var = va4Var.b;
                                if (i13 != l06Var.b) {
                                    long j13 = l06Var.c[i13];
                                    long[][] jArr = this.s;
                                    int i14 = u56.a;
                                    long j14 = jArr[i12][i13];
                                    long j15 = j13 - jF3;
                                    boolean z4 = j15 < 0 || j15 >= 262144;
                                    if ((!z4 && z3) || (z4 == z3 && j15 < j12)) {
                                        z3 = z4;
                                        i11 = i12;
                                        j12 = j15;
                                        j11 = j14;
                                    }
                                    if (j14 < j10) {
                                        z2 = z4;
                                        i10 = i12;
                                        j10 = j14;
                                    }
                                }
                                i12++;
                            }
                            i9 = (j10 == Long.MAX_VALUE || !z2 || j11 < j10 + 10485760) ? i11 : i10;
                            this.m = i9;
                            if (i9 == -1) {
                                return -1;
                            }
                        }
                        va4 va4Var2 = this.r[i9];
                        k06 k06Var = va4Var2.c;
                        int i15 = va4Var2.e;
                        l06 l06Var2 = va4Var2.b;
                        long j16 = l06Var2.c[i15];
                        int i16 = l06Var2.d[i15];
                        j26 j26Var = va4Var2.d;
                        long j17 = (j16 - jF3) + ((long) this.n);
                        if (j17 < 0 || j17 >= 262144) {
                            qx4Var.a = j16;
                            return 1;
                        }
                        if (va4Var2.a.g == 1) {
                            j17 += 8;
                            i16 -= 8;
                        }
                        xs2Var.a((int) j17);
                        c06 c06Var = va4Var2.a;
                        int i17 = c06Var.j;
                        if (i17 == 0) {
                            if (MimeTypes.AUDIO_AC4.equals(c06Var.f.m)) {
                                if (this.o == 0) {
                                    j0.a(i16, this.c);
                                    k06Var.a(7, this.c);
                                    this.o += 7;
                                }
                                i16 += 7;
                            } else if (j26Var != null) {
                                j26Var.a(xs2Var);
                            }
                            while (true) {
                                int i18 = this.o;
                                if (i18 >= i16) {
                                    break;
                                }
                                int iA = k06Var.a(xs2Var, i16 - i18, false);
                                this.n += iA;
                                this.o += iA;
                                this.p -= iA;
                            }
                        } else {
                            byte[] bArr2 = this.b.a;
                            bArr2[0] = 0;
                            bArr2[1] = 0;
                            bArr2[2] = 0;
                            int i19 = 4 - i17;
                            while (this.o < i16) {
                                int i20 = this.p;
                                if (i20 == 0) {
                                    xs2Var.b(bArr2, i19, i17);
                                    this.n += i17;
                                    this.b.e(0);
                                    int iA2 = this.b.a();
                                    if (iA2 < 0) {
                                        defpackage.e2.h("Invalid NAL length", null);
                                        return 0;
                                    }
                                    this.p = iA2;
                                    this.a.e(0);
                                    k06Var.a(4, this.a);
                                    this.o += 4;
                                    i16 += i19;
                                } else {
                                    int iA3 = k06Var.a(xs2Var, i20, false);
                                    this.n += iA3;
                                    this.o += iA3;
                                    this.p -= iA3;
                                }
                            }
                        }
                        int i21 = i16;
                        l06 l06Var3 = va4Var2.b;
                        long j18 = l06Var3.f[i15];
                        int i22 = l06Var3.g[i15];
                        if (j26Var != null) {
                            j26Var.a(k06Var, j18, i22, i21, 0, null);
                            if (i15 + 1 == va4Var2.b.b && j26Var.c > 0) {
                                k06Var.a(j26Var.d, j26Var.e, j26Var.f, j26Var.g, null);
                                j26Var.c = 0;
                            }
                        } else {
                            k06Var.a(j18, i22, i21, 0, null);
                        }
                        va4Var2.e++;
                        this.m = -1;
                        this.n = 0;
                        this.o = 0;
                        this.p = 0;
                        return 0;
                    }
                    if (i3 != 3) {
                        defpackage.ud.g();
                        return 0;
                    }
                    yh5 yh5Var = this.f;
                    ArrayList arrayList = this.g;
                    int i23 = yh5Var.b;
                    if (i23 == 0) {
                        long jA2 = xs2Var.a();
                        long j19 = (jA2 == -1 || jA2 < 8) ? 0L : jA2 - 8;
                        qx4Var.a = j19;
                        i = 1;
                        yh5Var.b = 1;
                        j = j19;
                        j2 = 0;
                    } else if (i23 != 1) {
                        char c2 = 2192;
                        if (i23 == 2) {
                            long jA3 = xs2Var.a();
                            int i24 = yh5Var.c - 20;
                            os4 os4Var3 = new os4(i24);
                            xs2Var.b(os4Var3.a, 0, i24);
                            for (int i25 = 0; i25 < i24 / 12; i25++) {
                                os4Var3.e(os4Var3.b + 2);
                                byte[] bArr3 = os4Var3.a;
                                int i26 = os4Var3.b;
                                int i27 = i26 + 1;
                                os4Var3.b = i27;
                                int i28 = bArr3[i26] & 255;
                                os4Var3.b = i26 + 2;
                                short s = (short) (((bArr3[i27] & 255) << 8) | i28);
                                if (s != 2192 && s != 2816) {
                                    if (s != 2817) {
                                        if (s != 2819 && s != 2820) {
                                            os4Var3.e(i26 + 10);
                                        }
                                    }
                                    yh5Var.a.add(new xh5(os4Var3.c(), (jA3 - ((long) yh5Var.c)) - ((long) os4Var3.c())));
                                }
                                yh5Var.a.add(new xh5(os4Var3.c(), (jA3 - ((long) yh5Var.c)) - ((long) os4Var3.c())));
                            }
                            if (yh5Var.a.isEmpty()) {
                                qx4Var.a = 0L;
                            } else {
                                yh5Var.b = 3;
                                long j20 = ((xh5) yh5Var.a.get(0)).a;
                                qx4Var.a = j20;
                                j = j20;
                                j2 = 0;
                                i = 1;
                            }
                        } else {
                            if (i23 != 3) {
                                defpackage.ud.g();
                                return 0;
                            }
                            long jF4 = xs2Var.f();
                            int iA4 = (int) ((xs2Var.a() - xs2Var.f()) - ((long) yh5Var.c));
                            byte[] bArr4 = new byte[iA4];
                            xs2Var.b(bArr4, 0, iA4);
                            int i29 = 0;
                            while (i29 < yh5Var.a.size()) {
                                xh5 xh5Var = (xh5) yh5Var.a.get(i29);
                                int i30 = i4;
                                int i31 = (int) (xh5Var.a - jF4);
                                if (i31 < 0 || i31 > iA4) {
                                    defpackage.mi2.b();
                                    return i30;
                                }
                                int i32 = i31 + 4;
                                if (i32 < 0 || i32 > iA4) {
                                    defpackage.mi2.b();
                                    return 0;
                                }
                                int i33 = ((bArr4[i31 + 5] & 255) << 8) | (bArr4[i32] & 255);
                                int i34 = i31 + 7;
                                int i35 = i33 | ((bArr4[i31 + 6] & 255) << 16);
                                int i36 = i31 + 8;
                                int i37 = i35 | ((bArr4[i34] & 255) << 24);
                                Charset charset = az.c;
                                String str = new String(bArr4, i36, i37, charset);
                                int i38 = i36 + i37;
                                switch (str.hashCode()) {
                                    case -1711564334:
                                        if (str.equals("SlowMotion_Data")) {
                                            i2 = i30;
                                        } else {
                                            i2 = -1;
                                        }
                                        break;
                                    case -1332107749:
                                        if (str.equals("Super_SlowMotion_Edit_Data")) {
                                            i2 = 1;
                                        } else {
                                            i2 = -1;
                                        }
                                        break;
                                    case -1251387154:
                                        if (str.equals("Super_SlowMotion_Data")) {
                                            i2 = 2;
                                        } else {
                                            i2 = -1;
                                        }
                                        break;
                                    case -830665521:
                                        if (str.equals("Super_SlowMotion_Deflickering_On")) {
                                            i2 = 3;
                                        } else {
                                            i2 = -1;
                                        }
                                        break;
                                    case 1760745220:
                                        if (str.equals("Super_SlowMotion_BGM")) {
                                            i2 = 4;
                                        } else {
                                            i2 = -1;
                                        }
                                        break;
                                    default:
                                        i2 = -1;
                                        break;
                                }
                                switch (i2) {
                                    case 0:
                                        c = c2;
                                        break;
                                    case 1:
                                        c = 2819;
                                        break;
                                    case 2:
                                        c = 2816;
                                        break;
                                    case 3:
                                        c = 2820;
                                        break;
                                    case 4:
                                        c = 2817;
                                        break;
                                    default:
                                        defpackage.e2.h("Invalid SEF name", null);
                                        return i30;
                                }
                                int i39 = xh5Var.b - (i37 + 8);
                                if (c == c2) {
                                    ArrayList arrayList2 = new ArrayList();
                                    String str2 = new String(bArr4, i38, i39, charset);
                                    pp5 pp5Var = yh5.e;
                                    pp5Var.getClass();
                                    op5 op5Var = pp5Var.b;
                                    op5Var.getClass();
                                    np5 np5Var = new np5(op5Var, pp5Var, str2);
                                    ArrayList arrayList3 = new ArrayList();
                                    while (np5Var.hasNext()) {
                                        arrayList3.add((String) np5Var.next());
                                    }
                                    List listUnmodifiableList = Collections.unmodifiableList(arrayList3);
                                    int i40 = i30;
                                    while (i40 < listUnmodifiableList.size()) {
                                        pp5 pp5Var2 = yh5.d;
                                        CharSequence charSequence = (CharSequence) listUnmodifiableList.get(i40);
                                        pp5Var2.getClass();
                                        charSequence.getClass();
                                        op5 op5Var2 = pp5Var2.b;
                                        op5Var2.getClass();
                                        np5 np5Var2 = new np5(op5Var2, pp5Var2, charSequence);
                                        ArrayList arrayList4 = new ArrayList();
                                        while (np5Var2.hasNext()) {
                                            arrayList4.add((String) np5Var2.next());
                                        }
                                        List listUnmodifiableList2 = Collections.unmodifiableList(arrayList4);
                                        if (listUnmodifiableList2.size() != 3) {
                                            throw new xs4(null, null, true, 1);
                                        }
                                        try {
                                            arrayList2.add(new pn5(1 << (Integer.parseInt((String) listUnmodifiableList2.get(2)) - 1), Long.parseLong((String) listUnmodifiableList2.get(i30)), Long.parseLong((String) listUnmodifiableList2.get(1))));
                                            i40++;
                                            i30 = 0;
                                        } catch (NumberFormatException e) {
                                            defpackage.e2.h(null, e);
                                            return 0;
                                        }
                                    }
                                    arrayList.add(new qn5(arrayList2));
                                } else if (c != 2816 && c != 2817 && c != 2819 && c != 2820) {
                                    defpackage.ud.g();
                                    return i30;
                                }
                                i29++;
                                c2 = 2192;
                                i4 = 0;
                            }
                            qx4Var.a = 0L;
                        }
                        j2 = 0;
                        i = 1;
                        j = 0;
                    } else {
                        os4 os4Var4 = new os4(8);
                        xs2Var.b(os4Var4.a, 0, 8);
                        yh5Var.c = os4Var4.c() + 8;
                        if (os4Var4.a() != 1397048916) {
                            qx4Var.a = 0L;
                            j2 = 0;
                            i = 1;
                            j = 0;
                        } else {
                            long jF5 = xs2Var.f() - ((long) (yh5Var.c - 12));
                            qx4Var.a = jF5;
                            yh5Var.b = 2;
                            j = jF5;
                            j2 = 0;
                            i = 1;
                        }
                    }
                    if (j == j2) {
                        this.h = 0;
                        this.k = 0;
                    }
                    return i;
                }
                long j21 = this.j - ((long) this.k);
                long jF6 = xs2Var.f() + j21;
                os4 os4Var5 = this.l;
                if (os4Var5 != null) {
                    xs2Var.b(os4Var5.a, this.k, (int) j21);
                    if (this.i == 1718909296) {
                        os4Var5.e(8);
                        int iA5 = os4Var5.a();
                        int i41 = iA5 != 1751476579 ? iA5 != 1903435808 ? 0 : 1 : 2;
                        if (i41 == 0) {
                            os4Var5.e(os4Var5.b + 4);
                            do {
                                if (os4Var5.c - os4Var5.b <= 0) {
                                    i41 = 0;
                                    break;
                                }
                                int iA6 = os4Var5.a();
                                i41 = iA6 != 1751476579 ? iA6 != 1903435808 ? 0 : 1 : 2;
                            } while (i41 == 0);
                        }
                        this.v = i41;
                    } else if (!this.e.isEmpty()) {
                        ((jl) this.e.peek()).c.add(new kl(this.i, os4Var5));
                    }
                } else {
                    if (j21 < 262144) {
                        xs2Var.a((int) j21);
                    } else {
                        qx4Var.a = xs2Var.f() + j21;
                        z = true;
                    }
                    c(jF6);
                    if (z && this.h != 2) {
                        return 1;
                    }
                }
                z = false;
                c(jF6);
                if (z) {
                    continue;
                }
            }
        }
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        long jMin;
        long jMin2;
        long j2;
        boolean z;
        int i;
        long j3;
        long j4;
        int iA;
        long j5 = j;
        va4[] va4VarArr = this.r;
        if (va4VarArr.length == 0) {
            uh5 uh5Var = uh5.c;
            return new qh5(uh5Var, uh5Var);
        }
        int i2 = this.t;
        boolean z2 = false;
        int i3 = -1;
        if (i2 != -1) {
            l06 l06Var = va4VarArr[i2].b;
            int iB = u56.b(l06Var.f, j5, false);
            while (true) {
                if (iB < 0) {
                    iB = -1;
                    break;
                }
                if ((l06Var.g[iB] & 1) != 0) {
                    break;
                }
                iB--;
            }
            if (iB == -1) {
                iB = l06Var.a(j5);
            }
            if (iB == -1) {
                uh5 uh5Var2 = uh5.c;
                return new qh5(uh5Var2, uh5Var2);
            }
            long j6 = l06Var.f[iB];
            jMin = l06Var.c[iB];
            if (j6 >= j5 || iB >= l06Var.b - 1 || (iA = l06Var.a(j5)) == -1 || iA == iB) {
                j4 = -1;
                j2 = C.TIME_UNSET;
            } else {
                j2 = l06Var.f[iA];
                j4 = l06Var.c[iA];
            }
            jMin2 = j4;
            j5 = j6;
        } else {
            jMin = Long.MAX_VALUE;
            jMin2 = -1;
            j2 = C.TIME_UNSET;
        }
        int i4 = 0;
        while (true) {
            va4[] va4VarArr2 = this.r;
            if (i4 >= va4VarArr2.length) {
                break;
            }
            if (i4 != this.t) {
                l06 l06Var2 = va4VarArr2[i4].b;
                int iB2 = u56.b(l06Var2.f, j5, z2);
                while (true) {
                    if (iB2 < 0) {
                        j3 = C.TIME_UNSET;
                        iB2 = i3;
                        break;
                    }
                    j3 = C.TIME_UNSET;
                    if ((l06Var2.g[iB2] & 1) != 0) {
                        break;
                    }
                    iB2--;
                }
                if (iB2 == i3) {
                    iB2 = l06Var2.a(j5);
                }
                if (iB2 != i3) {
                    jMin = Math.min(l06Var2.c[iB2], jMin);
                }
                if (j2 != j3) {
                    z = false;
                    int iB3 = u56.b(l06Var2.f, j2, false);
                    while (true) {
                        if (iB3 < 0) {
                            iB3 = -1;
                            break;
                        }
                        if ((l06Var2.g[iB3] & 1) != 0) {
                            break;
                        }
                        iB3--;
                    }
                    i = -1;
                    if (iB3 == -1) {
                        iB3 = l06Var2.a(j2);
                    }
                    if (iB3 != -1) {
                        jMin2 = Math.min(l06Var2.c[iB3], jMin2);
                    }
                } else {
                    z = false;
                    i = -1;
                }
            } else {
                z = z2;
                i = i3;
            }
            i4++;
            i3 = i;
            z2 = z;
        }
        uh5 uh5Var3 = new uh5(j5, jMin);
        return j2 == C.TIME_UNSET ? new qh5(uh5Var3, uh5Var3) : new qh5(uh5Var3, new uh5(j2, jMin2));
    }

    public final void c(long j) {
        while (!this.e.isEmpty() && ((jl) this.e.peek()).b == j) {
            jl jlVar = (jl) this.e.pop();
            if (jlVar.a == 1836019574) {
                a(jlVar);
                this.e.clear();
                this.h = 2;
            } else if (!this.e.isEmpty()) {
                ((jl) this.e.peek()).d.add(jlVar);
            }
        }
        if (this.h != 2) {
            this.h = 0;
            this.k = 0;
        }
    }

    @Override // yads.ws2
    public final void release() {
    }

    @Override // yads.sh5
    public final long c() {
        return this.u;
    }

    @Override // yads.sh5
    public final boolean b() {
        return true;
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        return fo5.a(xs2Var, false, false);
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        this.q = zs2Var;
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        this.e.clear();
        this.k = 0;
        this.m = -1;
        this.n = 0;
        this.o = 0;
        this.p = 0;
        if (j == 0) {
            if (this.h != 3) {
                this.h = 0;
                this.k = 0;
                return;
            } else {
                yh5 yh5Var = this.f;
                yh5Var.a.clear();
                yh5Var.b = 0;
                this.g.clear();
                return;
            }
        }
        for (va4 va4Var : this.r) {
            l06 l06Var = va4Var.b;
            int iB = u56.b(l06Var.f, j2, false);
            while (true) {
                if (iB < 0) {
                    iB = -1;
                    break;
                } else if ((l06Var.g[iB] & 1) != 0) {
                    break;
                } else {
                    iB--;
                }
            }
            if (iB == -1) {
                iB = l06Var.a(j2);
            }
            va4Var.e = iB;
            j26 j26Var = va4Var.d;
            if (j26Var != null) {
                j26Var.b = false;
                j26Var.c = 0;
            }
        }
    }

    public static /* synthetic */ c06 a(c06 c06Var) {
        return c06Var;
    }

    /* JADX WARN: Code duplicated, block: B:128:0x023f A[Catch: all -> 0x00ca, TRY_LEAVE, TryCatch #0 {all -> 0x00ca, blocks: (B:31:0x00ae, B:33:0x00be, B:38:0x00d5, B:40:0x00db, B:43:0x00e3, B:44:0x00eb, B:36:0x00cd, B:47:0x00fa, B:50:0x0106, B:53:0x0112, B:57:0x0123, B:60:0x0131, B:63:0x013c, B:66:0x0148, B:69:0x0154, B:72:0x0160, B:75:0x016c, B:78:0x0178, B:81:0x0184, B:84:0x0192, B:87:0x019f, B:90:0x01ac, B:93:0x01b9, B:128:0x023f, B:94:0x01bf, B:96:0x01c8, B:109:0x01eb, B:112:0x01f8, B:115:0x0205, B:118:0x0212, B:121:0x021f, B:124:0x022c, B:127:0x0237, B:130:0x0257, B:131:0x025f), top: B:302:0x00ae }] */
    /* JADX WARN: Code duplicated, block: B:208:0x042b  */
    /* JADX WARN: Code duplicated, block: B:244:0x04fe A[PHI: r2
      0x04fe: PHI (r2v10 yads.f23) = (r2v3 yads.f23), (r2v3 yads.f23), (r2v5 yads.f23), (r2v3 yads.f23) binds: [B:246:0x0502, B:247:0x0504, B:331:0x04fe, B:242:0x04f8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:41:0x00e0  */
    /* JADX WARN: Instruction removed from duplicated block: B:128:0x023f, please report this as an issue */
    public final void a(jl jlVar) {
        boolean z;
        int i;
        int i2;
        h84 h84Var;
        h84 h84Var2;
        f23 f23Var;
        h84 h84Var3;
        int i3;
        f23 f23Var2;
        int i4;
        int i5;
        ux3 ux3Var;
        boolean z2;
        nb3 nb3VarB;
        nb3 nb3VarA;
        int iK;
        String str;
        ArrayList arrayList = new ArrayList();
        boolean z3 = this.v == 1;
        f23 f23Var3 = new f23();
        kl klVarC = jlVar.c(Mp4Box.TYPE_udta);
        int i6 = Mp4Box.TYPE_ilst;
        int i7 = Mp4Box.TYPE_hdlr;
        int i8 = Mp4Box.TYPE_meta;
        int i9 = 8;
        if (klVarC != null) {
            byte[] bArr = sl.a;
            os4 os4Var = klVarC.b;
            os4Var.e(8);
            h84 h84Var4 = null;
            h84 h84Var5 = null;
            while (true) {
                int i10 = 12;
                int i11 = os4Var.c;
                int i12 = os4Var.b;
                if (i11 - i12 < i9) {
                    break;
                }
                int iA = os4Var.a();
                int i13 = i9;
                int iA2 = os4Var.a();
                if (iA2 == i8) {
                    os4Var.e(i12);
                    int i14 = i12 + iA;
                    os4Var.e(os4Var.b + 8);
                    int i15 = os4Var.b;
                    int i16 = i15 + 4;
                    os4Var.e(i16);
                    if (os4Var.a() != i7) {
                        i15 = i16;
                    }
                    os4Var.e(i15);
                    while (true) {
                        int i17 = os4Var.b;
                        if (i17 < i14) {
                            int iA3 = os4Var.a();
                            if (os4Var.a() == i6) {
                                os4Var.e(i17);
                                int i18 = i17 + iA3;
                                os4Var.e(os4Var.b + 8);
                                ArrayList arrayList2 = new ArrayList();
                                while (true) {
                                    int i19 = os4Var.b;
                                    if (i19 >= i18) {
                                        break;
                                    }
                                    int iA4 = os4Var.a() + i19;
                                    int iA5 = os4Var.a();
                                    int i20 = (iA5 >> 24) & 255;
                                    boolean z4 = z3;
                                    if (i20 == 169 || i20 == 253) {
                                        int i21 = 16777215 & iA5;
                                        if (i21 == 6516084) {
                                            nb3VarA = l84.a(iA5, os4Var);
                                        } else {
                                            if (i21 == 7233901 || i21 == 7631467) {
                                                nb3VarB = l84.b(iA5, "TIT2", os4Var);
                                            } else if (i21 == 6516589 || i21 == 7828084) {
                                                nb3VarB = l84.b(iA5, "TCOM", os4Var);
                                            } else if (i21 == 6578553) {
                                                nb3VarB = l84.b(iA5, "TDRC", os4Var);
                                            } else if (i21 == 4280916) {
                                                nb3VarB = l84.b(iA5, "TPE1", os4Var);
                                            } else if (i21 == 7630703) {
                                                nb3VarB = l84.b(iA5, "TSSE", os4Var);
                                            } else if (i21 == 6384738) {
                                                nb3VarB = l84.b(iA5, "TALB", os4Var);
                                            } else if (i21 == 7108978) {
                                                nb3VarB = l84.b(iA5, "USLT", os4Var);
                                            } else if (i21 == 6776174) {
                                                nb3VarB = l84.b(iA5, "TCON", os4Var);
                                            } else if (i21 == 6779504) {
                                                nb3VarB = l84.b(iA5, "TIT1", os4Var);
                                            } else {
                                                sv3.a("MetadataUtil", "Skipped unknown metadata entry: " + ll.a(iA5));
                                                os4Var.e(iA4);
                                                nb3VarA = null;
                                            }
                                            nb3VarA = nb3VarB;
                                        }
                                        os4Var.e(iA4);
                                    } else {
                                        if (iA5 == 1735291493) {
                                            try {
                                                os4Var.e(os4Var.b + 4);
                                                if (os4Var.a() == 1684108385) {
                                                    os4Var.e(os4Var.b + 8);
                                                    iK = os4Var.k();
                                                } else {
                                                    sv3.d("MetadataUtil", "Failed to parse uint8 attribute value");
                                                    iK = -1;
                                                }
                                                if (iK > 0) {
                                                    String[] strArr = l84.a;
                                                    if (iK <= 192) {
                                                        str = strArr[iK - 1];
                                                    } else {
                                                        str = null;
                                                    }
                                                } else {
                                                    str = null;
                                                }
                                                if (str != null) {
                                                    nb3VarA = new gw5("TCON", null, str);
                                                } else {
                                                    sv3.d("MetadataUtil", "Failed to parse standard genre code");
                                                    nb3VarA = null;
                                                }
                                            } catch (Throwable th) {
                                                os4Var.e(iA4);
                                                throw th;
                                            }
                                        } else {
                                            if (iA5 == 1684632427) {
                                                nb3VarB = l84.a(iA5, "TPOS", os4Var);
                                            } else if (iA5 == 1953655662) {
                                                nb3VarB = l84.a(iA5, "TRCK", os4Var);
                                            } else if (iA5 == 1953329263) {
                                                nb3VarB = l84.a(iA5, "TBPM", os4Var, true, false);
                                            } else if (iA5 == 1668311404) {
                                                nb3VarA = l84.a(iA5, "TCMP", os4Var, true, true);
                                            } else if (iA5 == 1668249202) {
                                                nb3VarA = l84.a(os4Var);
                                            } else if (iA5 == 1631670868) {
                                                nb3VarB = l84.b(iA5, "TPE2", os4Var);
                                            } else if (iA5 == 1936682605) {
                                                nb3VarB = l84.b(iA5, "TSOT", os4Var);
                                            } else if (iA5 == 1936679276) {
                                                nb3VarB = l84.b(iA5, "TSO2", os4Var);
                                            } else if (iA5 == 1936679282) {
                                                nb3VarB = l84.b(iA5, "TSOA", os4Var);
                                            } else if (iA5 == 1936679265) {
                                                nb3VarB = l84.b(iA5, "TSOP", os4Var);
                                            } else if (iA5 == 1936679791) {
                                                nb3VarB = l84.b(iA5, "TSOC", os4Var);
                                            } else if (iA5 == 1920233063) {
                                                nb3VarB = l84.a(iA5, "ITUNESADVISORY", os4Var, false, false);
                                            } else if (iA5 == 1885823344) {
                                                nb3VarB = l84.a(iA5, "ITUNESGAPLESS", os4Var, false, true);
                                            } else if (iA5 == 1936683886) {
                                                nb3VarB = l84.b(iA5, "TVSHOWSORT", os4Var);
                                            } else if (iA5 == 1953919848) {
                                                nb3VarB = l84.b(iA5, "TVSHOW", os4Var);
                                            } else if (iA5 == 757935405) {
                                                nb3VarA = l84.b(iA4, os4Var);
                                            } else {
                                                sv3.a("MetadataUtil", "Skipped unknown metadata entry: " + ll.a(iA5));
                                                os4Var.e(iA4);
                                                nb3VarA = null;
                                            }
                                            nb3VarA = nb3VarB;
                                        }
                                        os4Var.e(iA4);
                                    }
                                    if (nb3VarA != null) {
                                        arrayList2.add(nb3VarA);
                                    }
                                    z3 = z4;
                                }
                                z2 = z3;
                                if (!arrayList2.isEmpty()) {
                                    h84Var4 = new h84(arrayList2);
                                    break;
                                }
                            } else {
                                os4Var.e(i17 + iA3);
                                i6 = Mp4Box.TYPE_ilst;
                            }
                        } else {
                            z2 = z3;
                        }
                        h84Var4 = null;
                        break;
                    }
                } else {
                    z2 = z3;
                    if (iA2 == 1936553057) {
                        os4Var.e(i12);
                        int i22 = i12 + iA;
                        os4Var.e(os4Var.b + 12);
                        while (true) {
                            int i23 = os4Var.b;
                            if (i23 < i22) {
                                int iA6 = os4Var.a();
                                if (os4Var.a() != 1935766900) {
                                    os4Var.e(i23 + iA6);
                                    i10 = 12;
                                } else if (iA6 >= 14) {
                                    os4Var.e(os4Var.b + 5);
                                    int iK2 = os4Var.k();
                                    int i24 = i10;
                                    if (iK2 == i24 || iK2 == 13) {
                                        float f = iK2 == i24 ? 240.0f : 120.0f;
                                        os4Var.e(os4Var.b + 1);
                                        h84Var5 = new h84(new eo5(os4Var.k(), f));
                                        break;
                                    }
                                }
                            }
                            h84Var5 = null;
                            break;
                        }
                    }
                }
                os4Var.e(i12 + iA);
                i9 = i13;
                z3 = z2;
                i6 = Mp4Box.TYPE_ilst;
                i7 = Mp4Box.TYPE_hdlr;
                i8 = Mp4Box.TYPE_meta;
            }
            z = z3;
            i = i9;
            Pair pairCreate = Pair.create(h84Var4, h84Var5);
            h84 h84Var6 = (h84) pairCreate.first;
            h84 h84Var7 = (h84) pairCreate.second;
            if (h84Var6 != null) {
                f23Var3.a(h84Var6);
            }
            h84Var = h84Var7;
            h84Var2 = h84Var6;
            i2 = Mp4Box.TYPE_meta;
        } else {
            z = z3;
            i = 8;
            i2 = 1835365473;
            h84Var = null;
            h84Var2 = null;
        }
        jl jlVarB = jlVar.b(i2);
        if (jlVarB != null) {
            byte[] bArr2 = sl.a;
            kl klVarC2 = jlVarB.c(Mp4Box.TYPE_hdlr);
            kl klVarC3 = jlVarB.c(Mp4Box.TYPE_keys);
            kl klVarC4 = jlVarB.c(Mp4Box.TYPE_ilst);
            if (klVarC2 == null || klVarC3 == null || klVarC4 == null) {
                f23Var = f23Var3;
                h84Var3 = null;
            } else {
                os4 os4Var2 = klVarC2.b;
                os4Var2.e(16);
                if (os4Var2.a() != 1835299937) {
                    f23Var = f23Var3;
                } else {
                    os4 os4Var3 = klVarC3.b;
                    os4Var3.e(12);
                    int iA7 = os4Var3.a();
                    String[] strArr2 = new String[iA7];
                    for (int i25 = 0; i25 < iA7; i25++) {
                        int iA8 = os4Var3.a();
                        os4Var3.e(os4Var3.b + 4);
                        strArr2[i25] = os4Var3.a(iA8 - 8, az.c);
                    }
                    os4 os4Var4 = klVarC4.b;
                    int i26 = i;
                    os4Var4.e(i26);
                    ArrayList arrayList3 = new ArrayList();
                    while (true) {
                        int i27 = os4Var4.c;
                        int i28 = os4Var4.b;
                        if (i27 - i28 <= i26) {
                            break;
                        }
                        int iA9 = os4Var4.a();
                        int iA10 = os4Var4.a() - 1;
                        if (iA10 >= 0 && iA10 < iA7) {
                            String str2 = strArr2[iA10];
                            int i29 = i28 + iA9;
                            while (true) {
                                int i30 = os4Var4.b;
                                if (i30 >= i29) {
                                    ux3Var = null;
                                    break;
                                }
                                int iA11 = os4Var4.a();
                                if (os4Var4.a() == 1684108385) {
                                    int iA12 = os4Var4.a();
                                    int iA13 = os4Var4.a();
                                    int i31 = iA11 - 16;
                                    byte[] bArr3 = new byte[i31];
                                    os4Var4.a(bArr3, 0, i31);
                                    ux3Var = new ux3(iA13, iA12, str2, bArr3);
                                    break;
                                }
                                os4Var4.e(i30 + iA11);
                            }
                            if (ux3Var != null) {
                                arrayList3.add(ux3Var);
                            }
                        } else {
                            f23Var3 = f23Var3;
                            qt3.a(iA10, "Skipped metadata with unknown key index: ", "AtomParsers");
                        }
                        os4Var4.e(i28 + iA9);
                        f23Var3 = f23Var3;
                        i26 = 8;
                    }
                    f23Var = f23Var3;
                    if (!arrayList3.isEmpty()) {
                        h84Var3 = new h84(arrayList3);
                    }
                }
                h84Var3 = null;
            }
        } else {
            f23Var = f23Var3;
            h84Var3 = null;
        }
        f23 f23Var4 = f23Var;
        ArrayList arrayListA = sl.a(jlVar, f23Var4, C.TIME_UNSET, null, false, z, new defpackage.m2(10));
        int size = arrayListA.size();
        int i32 = 0;
        long j = C.TIME_UNSET;
        int size2 = -1;
        while (i32 < size) {
            l06 l06Var = (l06) arrayListA.get(i32);
            if (l06Var.b == 0) {
                f23Var2 = f23Var4;
            } else {
                c06 c06Var = l06Var.a;
                long j2 = c06Var.e;
                if (j2 == C.TIME_UNSET) {
                    j2 = l06Var.h;
                }
                long jMax = Math.max(j, j2);
                va4 va4Var = new va4(c06Var, l06Var, this.q.a(i32, c06Var.b));
                boolean zEquals = MimeTypes.AUDIO_TRUEHD.equals(c06Var.f.m);
                int i33 = l06Var.e;
                int i34 = zEquals ? i33 * 16 : i33 + 30;
                vz2 vz2Var = c06Var.f;
                vz2Var.getClass();
                uz2 uz2Var = new uz2(vz2Var);
                uz2Var.l = i34;
                int i35 = c06Var.b;
                if (i35 != 2 || j2 <= 0) {
                    i3 = 1;
                } else {
                    int i36 = l06Var.b;
                    i3 = 1;
                    if (i36 > 1) {
                        uz2Var.r = i36 / (j2 / 1000000.0f);
                    }
                }
                if (i35 == i3 && (i4 = f23Var4.a) != -1 && (i5 = f23Var4.b) != -1) {
                    uz2Var.A = i4;
                    uz2Var.B = i5;
                }
                h84[] h84VarArr = {h84Var, this.g.isEmpty() ? null : new h84(this.g)};
                h84 h84Var8 = new h84(new g84[0]);
                if (i35 != 1) {
                    if (i35 != 2 || h84Var3 == null) {
                        f23Var2 = f23Var4;
                        break;
                    }
                    int i37 = 0;
                    while (true) {
                        g84[] g84VarArr = h84Var3.b;
                        if (i37 >= g84VarArr.length) {
                            f23Var2 = f23Var4;
                            break;
                        }
                        g84 g84Var = g84VarArr[i37];
                        if (g84Var instanceof ux3) {
                            ux3 ux3Var2 = (ux3) g84Var;
                            f23Var2 = f23Var4;
                            if (MdtaMetadataEntry.KEY_ANDROID_CAPTURE_FPS.equals(ux3Var2.b)) {
                                h84Var8 = new h84(ux3Var2);
                                break;
                            }
                        } else {
                            f23Var2 = f23Var4;
                        }
                        i37++;
                        f23Var4 = f23Var2;
                    }
                } else if (h84Var2 == null) {
                    f23Var2 = f23Var4;
                    break;
                } else {
                    f23Var2 = f23Var4;
                    h84Var8 = h84Var2;
                }
                for (int i38 = 0; i38 < 2; i38++) {
                    h84 h84Var9 = h84VarArr[i38];
                    if (h84Var9 != null) {
                        g84[] g84VarArr2 = h84Var9.b;
                        h84Var8.getClass();
                        if (g84VarArr2.length != 0) {
                            h84Var8 = new h84((g84[]) u56.a((Object[]) h84Var8.b, (Object[]) g84VarArr2));
                        }
                    }
                }
                if (h84Var8.b.length > 0) {
                    uz2Var.i = h84Var8;
                }
                va4Var.c.a(new vz2(uz2Var));
                if (c06Var.b == 2 && size2 == -1) {
                    size2 = arrayList.size();
                }
                arrayList.add(va4Var);
                j = jMax;
            }
            i32++;
            arrayListA = arrayListA;
            size = size;
            f23Var4 = f23Var2;
        }
        this.t = size2;
        this.u = j;
        va4[] va4VarArr = (va4[]) arrayList.toArray(new va4[0]);
        this.r = va4VarArr;
        long[][] jArr = new long[va4VarArr.length][];
        int[] iArr = new int[va4VarArr.length];
        long[] jArr2 = new long[va4VarArr.length];
        boolean[] zArr = new boolean[va4VarArr.length];
        for (int i39 = 0; i39 < va4VarArr.length; i39++) {
            jArr[i39] = new long[va4VarArr[i39].b.b];
            jArr2[i39] = va4VarArr[i39].b.f[0];
        }
        long j3 = 0;
        int i40 = 0;
        while (i40 < va4VarArr.length) {
            long j4 = Long.MAX_VALUE;
            int i41 = -1;
            for (int i42 = 0; i42 < va4VarArr.length; i42++) {
                if (!zArr[i42]) {
                    long j5 = jArr2[i42];
                    if (j5 <= j4) {
                        i41 = i42;
                        j4 = j5;
                    }
                }
            }
            int i43 = iArr[i41];
            long[] jArr3 = jArr[i41];
            jArr3[i43] = j3;
            l06 l06Var2 = va4VarArr[i41].b;
            j3 += (long) l06Var2.d[i43];
            int i44 = i43 + 1;
            iArr[i41] = i44;
            if (i44 < jArr3.length) {
                jArr2[i41] = l06Var2.f[i44];
            } else {
                zArr[i41] = true;
                i40++;
            }
        }
        this.s = jArr;
        this.q.a();
        this.q.a(this);
    }
}
