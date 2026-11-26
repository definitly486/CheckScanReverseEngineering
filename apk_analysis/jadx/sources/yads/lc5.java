package yads;

import android.util.SparseArray;
import androidx.media3.common.MimeTypes;
import java.io.EOFException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class lc5 implements k06 {
    public vz2 A;
    public vz2 B;
    public boolean C;
    public boolean D;
    public long E;
    public final ic5 a;
    public final xl2 d;
    public final tl2 e;
    public v15 f;
    public vz2 g;
    public eo2 h;
    public int p;
    public int q;
    public int r;
    public int s;
    public boolean w;
    public boolean z;
    public final jc5 b = new jc5();
    public int i = 1000;
    public int[] j = new int[1000];
    public long[] k = new long[1000];
    public long[] n = new long[1000];
    public int[] m = new int[1000];
    public int[] l = new int[1000];
    public j06[] o = new j06[1000];
    public final to5 c = new to5(new defpackage.l2(5));
    public long t = Long.MIN_VALUE;
    public long u = Long.MIN_VALUE;
    public long v = Long.MIN_VALUE;
    public boolean y = true;
    public boolean x = true;

    public lc5(aj0 aj0Var, xl2 xl2Var, tl2 tl2Var) {
        this.d = xl2Var;
        this.e = tl2Var;
        this.a = new ic5(aj0Var);
    }

    /* JADX WARN: Code duplicated, block: B:70:0x013b A[Catch: all -> 0x0076, TRY_LEAVE, TryCatch #0 {all -> 0x0076, blocks: (B:30:0x0058, B:32:0x005c, B:35:0x0070, B:36:0x0075, B:39:0x0079, B:43:0x0081, B:48:0x00cd, B:50:0x00d1, B:52:0x00d6, B:54:0x00ec, B:56:0x00f4, B:57:0x00f7, B:58:0x00fc, B:59:0x00fd, B:61:0x0105, B:64:0x0114, B:65:0x0127, B:66:0x012c, B:67:0x012d, B:68:0x0132, B:70:0x013b, B:51:0x00d4, B:46:0x00b4), top: B:75:0x0058 }] */
    @Override // yads.k06
    public final void a(long j, int i, int i2, int i3, j06 j06Var) {
        int i4;
        int i5;
        if (this.z) {
            vz2 vz2Var = this.A;
            if (vz2Var == null) {
                defpackage.ud.g();
                return;
            }
            a(vz2Var);
        }
        int i6 = i & 1;
        boolean z = i6 != 0;
        if (this.x) {
            if (!z) {
                return;
            } else {
                this.x = false;
            }
        }
        long j2 = j + this.E;
        if (this.C) {
            if (j2 < this.t) {
                return;
            }
            if (i6 == 0) {
                if (!this.D) {
                    sv3.d("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.B);
                    this.D = true;
                }
                i |= 1;
            }
        }
        long j3 = (this.a.f - ((long) i2)) - ((long) i3);
        synchronized (this) {
            try {
                int i7 = this.p;
                if (i7 > 0) {
                    int iD = d(i7 - 1);
                    if (this.k[iD] + ((long) this.l[iD]) > j3) {
                        throw new IllegalArgumentException();
                    }
                }
                this.w = (536870912 & i) != 0;
                this.v = Math.max(this.v, j2);
                int iD2 = d(this.p);
                this.n[iD2] = j2;
                this.k[iD2] = j3;
                this.l[iD2] = i2;
                this.m[iD2] = i;
                this.o[iD2] = j06Var;
                this.j[iD2] = 0;
                if (this.c.b.size() != 0) {
                    SparseArray sparseArray = this.c.b;
                    if (!((kc5) sparseArray.valueAt(sparseArray.size() - 1)).a.equals(this.B)) {
                    }
                    i4 = this.p + 1;
                    this.p = i4;
                    i5 = this.i;
                    if (i4 == i5) {
                        int i8 = i5 + 1000;
                        int[] iArr = new int[i8];
                        long[] jArr = new long[i8];
                        long[] jArr2 = new long[i8];
                        int[] iArr2 = new int[i8];
                        int[] iArr3 = new int[i8];
                        j06[] j06VarArr = new j06[i8];
                        int i9 = this.r;
                        int i10 = i5 - i9;
                        System.arraycopy(this.k, i9, jArr, 0, i10);
                        System.arraycopy(this.n, this.r, jArr2, 0, i10);
                        System.arraycopy(this.m, this.r, iArr2, 0, i10);
                        System.arraycopy(this.l, this.r, iArr3, 0, i10);
                        System.arraycopy(this.o, this.r, j06VarArr, 0, i10);
                        System.arraycopy(this.j, this.r, iArr, 0, i10);
                        int i11 = this.r;
                        System.arraycopy(this.k, 0, jArr, i10, i11);
                        System.arraycopy(this.n, 0, jArr2, i10, i11);
                        System.arraycopy(this.m, 0, iArr2, i10, i11);
                        System.arraycopy(this.l, 0, iArr3, i10, i11);
                        System.arraycopy(this.o, 0, j06VarArr, i10, i11);
                        System.arraycopy(this.j, 0, iArr, i10, i11);
                        this.k = jArr;
                        this.n = jArr2;
                        this.m = iArr2;
                        this.l = iArr3;
                        this.o = j06VarArr;
                        this.j = iArr;
                        this.r = 0;
                        this.i = i8;
                    }
                }
                wl2 wl2Var = this.d != null ? wl2.a : wl2.a;
                to5 to5Var = this.c;
                int i12 = this.q + this.p;
                vz2 vz2Var2 = this.B;
                vz2Var2.getClass();
                kc5 kc5Var = new kc5(vz2Var2, wl2Var);
                if (to5Var.a == -1) {
                    if (to5Var.b.size() != 0) {
                        throw new IllegalStateException();
                    }
                    to5Var.a = 0;
                }
                if (to5Var.b.size() > 0) {
                    SparseArray sparseArray2 = to5Var.b;
                    int iKeyAt = sparseArray2.keyAt(sparseArray2.size() - 1);
                    if (i12 < iKeyAt) {
                        throw new IllegalArgumentException();
                    }
                    if (iKeyAt == i12) {
                        a60 a60Var = to5Var.c;
                        SparseArray sparseArray3 = to5Var.b;
                        ((defpackage.l2) a60Var).b(sparseArray3.valueAt(sparseArray3.size() - 1));
                    }
                }
                to5Var.b.append(i12, kc5Var);
                i4 = this.p + 1;
                this.p = i4;
                i5 = this.i;
                if (i4 == i5) {
                    int i13 = i5 + 1000;
                    int[] iArr4 = new int[i13];
                    long[] jArr3 = new long[i13];
                    long[] jArr4 = new long[i13];
                    int[] iArr5 = new int[i13];
                    int[] iArr6 = new int[i13];
                    j06[] j06VarArr2 = new j06[i13];
                    int i14 = this.r;
                    int i15 = i5 - i14;
                    System.arraycopy(this.k, i14, jArr3, 0, i15);
                    System.arraycopy(this.n, this.r, jArr4, 0, i15);
                    System.arraycopy(this.m, this.r, iArr5, 0, i15);
                    System.arraycopy(this.l, this.r, iArr6, 0, i15);
                    System.arraycopy(this.o, this.r, j06VarArr2, 0, i15);
                    System.arraycopy(this.j, this.r, iArr4, 0, i15);
                    int i16 = this.r;
                    System.arraycopy(this.k, 0, jArr3, i15, i16);
                    System.arraycopy(this.n, 0, jArr4, i15, i16);
                    System.arraycopy(this.m, 0, iArr5, i15, i16);
                    System.arraycopy(this.l, 0, iArr6, i15, i16);
                    System.arraycopy(this.o, 0, j06VarArr2, i15, i16);
                    System.arraycopy(this.j, 0, iArr4, i15, i16);
                    this.k = jArr3;
                    this.n = jArr4;
                    this.m = iArr5;
                    this.l = iArr6;
                    this.o = j06VarArr2;
                    this.j = iArr4;
                    this.r = 0;
                    this.i = i13;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(int i) {
        long j;
        hc5 hc5Var;
        ic5 ic5Var = this.a;
        int i2 = this.q;
        int i3 = this.p;
        int i4 = (i2 + i3) - i;
        if (i4 < 0 || i4 > i3 - this.s) {
            defpackage.mi2.b();
            return;
        }
        int i5 = i3 - i4;
        this.p = i5;
        this.v = Math.max(this.u, c(i5));
        this.w = i4 == 0 && this.w;
        this.c.a(i);
        int i6 = this.p;
        if (i6 != 0) {
            int iD = d(i6 - 1);
            j = this.k[iD] + ((long) this.l[iD]);
        } else {
            j = 0;
        }
        if (j > ic5Var.f) {
            defpackage.mi2.b();
            return;
        }
        ic5Var.f = j;
        if (j != 0) {
            hc5 hc5Var2 = ic5Var.c;
            if (j != hc5Var2.a) {
                while (true) {
                    long j2 = ic5Var.f;
                    long j3 = hc5Var2.b;
                    hc5Var = hc5Var2.d;
                    if (j2 <= j3) {
                        break;
                    } else {
                        hc5Var2 = hc5Var;
                    }
                }
                hc5Var.getClass();
                ic5Var.a(hc5Var);
                hc5 hc5Var3 = new hc5(hc5Var2.b);
                hc5Var2.d = hc5Var3;
                if (ic5Var.f == hc5Var2.b) {
                    hc5Var2 = hc5Var3;
                }
                ic5Var.e = hc5Var2;
                if (ic5Var.d == hc5Var) {
                    ic5Var.d = hc5Var3;
                    return;
                }
                return;
            }
        }
        ic5Var.a(ic5Var.c);
        hc5 hc5Var4 = new hc5(ic5Var.f);
        ic5Var.c = hc5Var4;
        ic5Var.d = hc5Var4;
        ic5Var.e = hc5Var4;
    }

    public final synchronized boolean c(long j, boolean z) throws Throwable {
        try {
            try {
                e();
                int iD = d(this.s);
                int i = this.s;
                int i2 = this.p;
                if (i == i2 || j < this.n[iD] || (j > this.v && !z)) {
                    return false;
                }
                int iA = a(iD, i2 - i, j, true);
                if (iA == -1) {
                    return false;
                }
                this.t = j;
                this.s += iA;
                return true;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final void d() {
        eo2 eo2Var = this.h;
        if (eo2Var != null) {
            eo2Var.b(this.e);
            this.h = null;
            this.g = null;
        }
    }

    public final synchronized void e() {
        this.s = 0;
        ic5 ic5Var = this.a;
        ic5Var.d = ic5Var.c;
    }

    public final int d(int i) {
        int i2 = this.r + i;
        int i3 = this.i;
        return i2 < i3 ? i2 : i2 - i3;
    }

    public final synchronized vz2 c() {
        return this.y ? null : this.B;
    }

    public final long c(int i) {
        long jMax = Long.MIN_VALUE;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int iD = d(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            jMax = Math.max(jMax, this.n[iD]);
            if ((this.m[iD] & 1) != 0) {
                return jMax;
            }
            iD--;
            if (iD == -1) {
                iD = this.i - 1;
            }
        }
        return jMax;
    }

    public final void b(boolean z) {
        ic5 ic5Var = this.a;
        ic5Var.a(ic5Var.c);
        hc5 hc5Var = ic5Var.c;
        if (hc5Var.c == null) {
            hc5Var.a = 0L;
            hc5Var.b = 65536L;
            ic5Var.d = hc5Var;
            ic5Var.e = hc5Var;
            ic5Var.f = 0L;
            ic5Var.a.b();
            this.p = 0;
            this.q = 0;
            this.r = 0;
            this.s = 0;
            this.x = true;
            this.t = Long.MIN_VALUE;
            this.u = Long.MIN_VALUE;
            this.v = Long.MIN_VALUE;
            this.w = false;
            to5 to5Var = this.c;
            for (int i = 0; i < to5Var.b.size(); i++) {
                ((defpackage.l2) to5Var.c).b(to5Var.b.valueAt(i));
            }
            to5Var.a = -1;
            to5Var.b.clear();
            if (z) {
                this.A = null;
                this.B = null;
                this.y = true;
                return;
            }
            return;
        }
        defpackage.ud.g();
    }

    public final synchronized long b() {
        return this.v;
    }

    public final synchronized int b(long j, boolean z) throws Throwable {
        try {
            try {
                int iD = d(this.s);
                int i = this.s;
                int i2 = this.p;
                if (i == i2 || j < this.n[iD]) {
                    return 0;
                }
                if (j > this.v && z) {
                    return i2 - i;
                }
                int iA = a(iD, i2 - i, j, true);
                if (iA == -1) {
                    return 0;
                }
                return iA;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final int a(a03 a03Var, mi0 mi0Var, int i, boolean z) {
        int i2;
        boolean z2 = (i & 2) != 0;
        jc5 jc5Var = this.b;
        synchronized (this) {
            try {
                mi0Var.e = false;
                int i3 = this.s;
                i2 = -3;
                if (i3 != this.p) {
                    vz2 vz2Var = ((kc5) this.c.c(this.q + i3)).a;
                    if (!z2 && vz2Var == this.g) {
                        int iD = d(this.s);
                        eo2 eo2Var = this.h;
                        if (eo2Var != null && eo2Var.c() != 4 && ((this.m[iD] & 1073741824) != 0 || !this.h.d())) {
                            mi0Var.e = true;
                        } else {
                            int i4 = this.m[iD];
                            mi0Var.b = i4;
                            long j = this.n[iD];
                            mi0Var.f = j;
                            if (j < this.t) {
                                mi0Var.b = i4 | Integer.MIN_VALUE;
                            }
                            jc5Var.a = this.l[iD];
                            jc5Var.b = this.k[iD];
                            jc5Var.c = this.o[iD];
                            i2 = -4;
                        }
                    } else {
                        a(vz2Var, a03Var);
                        i2 = -5;
                    }
                } else if (!z && !this.w) {
                    vz2 vz2Var2 = this.B;
                    if (vz2Var2 != null && (z2 || vz2Var2 != this.g)) {
                        a(vz2Var2, a03Var);
                        i2 = -5;
                    }
                } else {
                    mi0Var.b = 4;
                    i2 = -4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i2 == -4 && !mi0Var.b(4)) {
            boolean z3 = (i & 1) != 0;
            if ((i & 4) == 0) {
                ic5 ic5Var = this.a;
                if (z3) {
                    ic5.a(ic5Var.d, mi0Var, this.b, ic5Var.b);
                } else {
                    ic5Var.d = ic5.a(ic5Var.d, mi0Var, this.b, ic5Var.b);
                }
            }
            if (!z3) {
                this.s++;
            }
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    public final void a(long j, boolean z) throws Throwable {
        lc5 lc5Var;
        Throwable th;
        long jA;
        ic5 ic5Var = this.a;
        synchronized (this) {
            try {
                int i = this.p;
                jA = -1;
                if (i != 0) {
                    long[] jArr = this.n;
                    int i2 = this.r;
                    if (j >= jArr[i2]) {
                        if (z) {
                            try {
                                int i3 = this.s;
                                if (i3 != i) {
                                    i = i3 + 1;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                lc5Var = this;
                                throw th;
                            }
                        }
                        lc5Var = this;
                        try {
                            int iA = lc5Var.a(i2, i, j, false);
                            if (iA == -1) {
                            } else {
                                jA = lc5Var.a(iA);
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            throw th;
                        }
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                lc5Var = this;
            }
        }
        ic5Var.a(jA);
    }

    public final void a() {
        long jA;
        ic5 ic5Var = this.a;
        synchronized (this) {
            int i = this.p;
            jA = i == 0 ? -1L : a(i);
        }
        ic5Var.a(jA);
    }

    @Override // yads.k06
    public final int a(tc0 tc0Var, int i, boolean z) throws EOFException {
        ic5 ic5Var = this.a;
        hc5 hc5Var = ic5Var.e;
        if (hc5Var.c == null) {
            ee eeVarA = ic5Var.a.a();
            hc5 hc5Var2 = new hc5(ic5Var.e.b);
            hc5Var.c = eeVarA;
            hc5Var.d = hc5Var2;
        }
        int iMin = Math.min(i, (int) (ic5Var.e.b - ic5Var.f));
        hc5 hc5Var3 = ic5Var.e;
        ee eeVar = hc5Var3.c;
        int iC = tc0Var.c(eeVar.a, ((int) (ic5Var.f - hc5Var3.a)) + eeVar.b, iMin);
        if (iC == -1) {
            if (z) {
                return -1;
            }
            defpackage.n7.e();
            return 0;
        }
        long j = ic5Var.f + ((long) iC);
        ic5Var.f = j;
        hc5 hc5Var4 = ic5Var.e;
        if (j == hc5Var4.b) {
            ic5Var.e = hc5Var4.d;
        }
        return iC;
    }

    @Override // yads.k06
    public final void a(int i, os4 os4Var) {
        ic5 ic5Var = this.a;
        while (i > 0) {
            hc5 hc5Var = ic5Var.e;
            if (hc5Var.c == null) {
                ee eeVarA = ic5Var.a.a();
                hc5 hc5Var2 = new hc5(ic5Var.e.b);
                hc5Var.c = eeVarA;
                hc5Var.d = hc5Var2;
            }
            int iMin = Math.min(i, (int) (ic5Var.e.b - ic5Var.f));
            hc5 hc5Var3 = ic5Var.e;
            ee eeVar = hc5Var3.c;
            os4Var.a(eeVar.a, ((int) (ic5Var.f - hc5Var3.a)) + eeVar.b, iMin);
            i -= iMin;
            long j = ic5Var.f + ((long) iMin);
            ic5Var.f = j;
            hc5 hc5Var4 = ic5Var.e;
            if (j == hc5Var4.b) {
                ic5Var.e = hc5Var4.d;
            }
        }
        ic5Var.getClass();
    }

    public static void a(kc5 kc5Var) {
        ((defpackage.ah) kc5Var.b).getClass();
        wl2.a();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0147  */
    /* JADX WARN: Code duplicated, block: B:101:0x0149  */
    /* JADX WARN: Code duplicated, block: B:26:0x007f  */
    /* JADX WARN: Code duplicated, block: B:29:0x008d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0097  */
    /* JADX WARN: Code duplicated, block: B:33:0x009a  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:49:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:60:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:68:0x0101  */
    /* JADX WARN: Code duplicated, block: B:69:0x0103  */
    /* JADX WARN: Code duplicated, block: B:72:0x010c  */
    /* JADX WARN: Code duplicated, block: B:75:0x0111  */
    /* JADX WARN: Code duplicated, block: B:82:0x0121 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x0123  */
    /* JADX WARN: Code duplicated, block: B:85:0x0127  */
    /* JADX WARN: Code duplicated, block: B:87:0x012b  */
    /* JADX WARN: Code duplicated, block: B:89:0x012f  */
    /* JADX WARN: Code duplicated, block: B:91:0x0133  */
    /* JADX WARN: Code duplicated, block: B:92:0x0135  */
    /* JADX WARN: Code duplicated, block: B:93:0x0138  */
    /* JADX WARN: Code duplicated, block: B:94:0x013b  */
    /* JADX WARN: Code duplicated, block: B:95:0x013d  */
    /* JADX WARN: Code duplicated, block: B:96:0x0140  */
    @Override // yads.k06
    public final void a(vz2 vz2Var) {
        vz2 vz2Var2;
        String str;
        String str2;
        boolean z;
        char c;
        y84 y84VarB;
        int i;
        if (this.E == 0 || vz2Var.q == Long.MAX_VALUE) {
            vz2Var2 = vz2Var;
        } else {
            uz2 uz2Var = new uz2(vz2Var);
            uz2Var.o = vz2Var.q + this.E;
            vz2Var2 = new vz2(uz2Var);
        }
        boolean z2 = false;
        this.z = false;
        this.A = vz2Var;
        synchronized (this) {
            try {
                this.y = false;
                if (!u56.a(vz2Var2, this.B)) {
                    if (this.c.b.size() != 0) {
                        SparseArray sparseArray = this.c.b;
                        if (((kc5) sparseArray.valueAt(sparseArray.size() - 1)).a.equals(vz2Var2)) {
                            SparseArray sparseArray2 = this.c.b;
                            vz2Var2 = ((kc5) sparseArray2.valueAt(sparseArray2.size() - 1)).a;
                            this.B = vz2Var2;
                        }
                        str = vz2Var2.m;
                        str2 = vz2Var2.j;
                        ArrayList arrayList = z84.a;
                        if (str == null) {
                            c = '\n';
                            switch (str) {
                                case "audio/eac3-joc":
                                case "audio/mpeg-L1":
                                case "audio/mpeg-L2":
                                case "audio/ac3":
                                case "audio/raw":
                                case "audio/eac3":
                                case "audio/flac":
                                case "audio/mpeg":
                                case "audio/g711-alaw":
                                case "audio/g711-mlaw":
                                    z = true;
                                    break;
                                case "audio/mp4a-latm":
                                    if (str2 != null && (y84VarB = z84.b(str2)) != null) {
                                        i = y84VarB.b;
                                        if (i != 2) {
                                            if (i != 5) {
                                                c = 11;
                                            } else if (i != 29) {
                                                c = '\f';
                                            } else if (i != 42) {
                                                c = 16;
                                            } else if (i != 22) {
                                                c = 0;
                                            } else if (i != 23) {
                                                c = 0;
                                            } else {
                                                c = 15;
                                            }
                                        }
                                        if (c == 0 && c != 16) {
                                            z = true;
                                            break;
                                        }
                                    }
                                    z = false;
                                    break;
                                default:
                                    z = false;
                                    break;
                            }
                        } else {
                            z = false;
                        }
                        this.C = z;
                        this.D = false;
                        z2 = true;
                    }
                    this.B = vz2Var2;
                    str = vz2Var2.m;
                    str2 = vz2Var2.j;
                    ArrayList arrayList2 = z84.a;
                    if (str == null) {
                        c = '\n';
                        switch (str) {
                            case -2123537834:
                                if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                                }
                                break;
                            case -432837260:
                                if (str.equals(MimeTypes.AUDIO_MPEG_L1)) {
                                }
                                break;
                            case -432837259:
                                if (str.equals(MimeTypes.AUDIO_MPEG_L2)) {
                                }
                                break;
                            case -53558318:
                                if (str.equals("audio/mp4a-latm")) {
                                }
                                break;
                            case 187078296:
                                if (str.equals(MimeTypes.AUDIO_AC3)) {
                                }
                                break;
                            case 187094639:
                                if (str.equals(MimeTypes.AUDIO_RAW)) {
                                }
                                break;
                            case 1504578661:
                                if (str.equals(MimeTypes.AUDIO_E_AC3)) {
                                }
                                break;
                            case 1504619009:
                                if (str.equals(MimeTypes.AUDIO_FLAC)) {
                                }
                                break;
                            case 1504831518:
                                if (str.equals(MimeTypes.AUDIO_MPEG)) {
                                }
                                break;
                            case 1903231877:
                                if (str.equals(MimeTypes.AUDIO_ALAW)) {
                                }
                                break;
                            case 1903589369:
                                if (str.equals(MimeTypes.AUDIO_MLAW)) {
                                }
                                break;
                        }
                        /*  JADX ERROR: Method code generation error
                            java.lang.NullPointerException: Switch insn not found in header
                            	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                            	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeSynchronizedRegion(RegionGen.java:240)
                            	at jadx.core.dex.regions.SynchronizedRegion.generate(SynchronizedRegion.java:44)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                            */
                        /*
                            Method dump skipped, instruction units count: 424
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: yads.lc5.a(yads.vz2):void");
                    }

                    public final synchronized boolean a(boolean z) {
                        vz2 vz2Var;
                        int i = this.s;
                        boolean z2 = false;
                        if (i != this.p) {
                            if (((kc5) this.c.c(this.q + i)).a != this.g) {
                                return true;
                            }
                            int iD = d(this.s);
                            eo2 eo2Var = this.h;
                            if (eo2Var == null || eo2Var.c() == 4 || ((this.m[iD] & 1073741824) == 0 && this.h.d())) {
                                z2 = true;
                            }
                            return z2;
                        }
                        if (z || this.w || ((vz2Var = this.B) != null && vz2Var != this.g)) {
                            z2 = true;
                        }
                        return z2;
                    }

                    public final void a(vz2 vz2Var, a03 a03Var) {
                        vz2 vz2Var2;
                        vz2 vz2Var3 = this.g;
                        boolean z = vz2Var3 == null;
                        ql2 ql2Var = z ? null : vz2Var3.p;
                        this.g = vz2Var;
                        ql2 ql2Var2 = vz2Var.p;
                        xl2 xl2Var = this.d;
                        if (xl2Var != null) {
                            int iA = xl2Var.a(vz2Var);
                            uz2 uz2Var = new uz2(vz2Var);
                            uz2Var.D = iA;
                            vz2Var2 = new vz2(uz2Var);
                        } else {
                            vz2Var2 = vz2Var;
                        }
                        a03Var.b = vz2Var2;
                        a03Var.a = this.h;
                        if (this.d == null) {
                            return;
                        }
                        if (z || !u56.a(ql2Var, ql2Var2)) {
                            eo2 eo2Var = this.h;
                            eo2 eo2VarA = this.d.a(this.e, vz2Var);
                            this.h = eo2VarA;
                            a03Var.a = eo2VarA;
                            if (eo2Var != null) {
                                eo2Var.b(this.e);
                            }
                        }
                    }

                    public final int a(int i, int i2, long j, boolean z) {
                        int i3 = -1;
                        for (int i4 = 0; i4 < i2; i4++) {
                            long j2 = this.n[i];
                            if (j2 > j) {
                                break;
                            }
                            if (!z || (this.m[i] & 1) != 0) {
                                if (j2 == j) {
                                    return i4;
                                }
                                i3 = i4;
                            }
                            i++;
                            if (i == this.i) {
                                i = 0;
                            }
                        }
                        return i3;
                    }

                    public final long a(int i) {
                        this.u = Math.max(this.u, c(i));
                        this.p -= i;
                        int i2 = this.q + i;
                        this.q = i2;
                        int i3 = this.r + i;
                        this.r = i3;
                        int i4 = this.i;
                        if (i3 >= i4) {
                            this.r = i3 - i4;
                        }
                        int i5 = this.s - i;
                        this.s = i5;
                        if (i5 < 0) {
                            this.s = 0;
                        }
                        this.c.b(i2);
                        if (this.p == 0) {
                            int i6 = this.r;
                            if (i6 == 0) {
                                i6 = this.i;
                            }
                            int i7 = i6 - 1;
                            return this.k[i7] + ((long) this.l[i7]);
                        }
                        return this.k[this.r];
                    }
                }
