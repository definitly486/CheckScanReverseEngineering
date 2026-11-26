package yads;

import android.graphics.Point;
import defpackage.h9a;
import defpackage.i9a;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class tm0 extends sm0 {
    public final boolean f;
    public final mm0 g;
    public final boolean h;
    public final boolean i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final boolean n;
    public final boolean o;
    public final int p;
    public final boolean q;
    public final boolean r;
    public final int s;

    /* JADX WARN: Code duplicated, block: B:100:0x0127  */
    /* JADX WARN: Code duplicated, block: B:31:0x004b  */
    /* JADX WARN: Code duplicated, block: B:51:0x0079  */
    public tm0(int i, f06 f06Var, int i2, mm0 mm0Var, int i3, int i4, boolean z) {
        boolean z2;
        boolean z3;
        int i5;
        vz2 vz2Var;
        int i6;
        int i7;
        int i8;
        vz2 vz2Var2;
        int i9;
        int i10;
        int i11;
        super(i, f06Var, i2);
        this.g = mm0Var;
        int i12 = mm0Var.E ? 24 : 16;
        int i13 = 1;
        this.o = mm0Var.D && (i4 & i12) != 0;
        if (!z || (((i9 = (vz2Var2 = this.e).r) != -1 && i9 > mm0Var.b) || ((i10 = vz2Var2.s) != -1 && i10 > mm0Var.c))) {
            z2 = false;
        } else {
            float f = vz2Var2.t;
            if ((f == -1.0f || f <= mm0Var.d) && ((i11 = vz2Var2.i) == -1 || i11 <= mm0Var.e)) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        this.f = z2;
        if (!z || (((i6 = (vz2Var = this.e).r) != -1 && i6 < mm0Var.f) || ((i7 = vz2Var.s) != -1 && i7 < mm0Var.g))) {
            z3 = false;
        } else {
            float f2 = vz2Var.t;
            if ((f2 == -1.0f || f2 >= mm0Var.h) && ((i8 = vz2Var.i) == -1 || i8 >= mm0Var.i)) {
                z3 = true;
            } else {
                z3 = false;
            }
        }
        this.h = z3;
        this.i = um0.a(i3, false);
        vz2 vz2Var3 = this.e;
        this.j = vz2Var3.i;
        this.k = vz2Var3.a();
        this.m = um0.a(this.e.f, mm0Var.n);
        int i14 = this.e.f;
        this.n = i14 == 0 || (i14 & 1) != 0;
        int i15 = 0;
        while (true) {
            if (i15 >= mm0Var.m.size()) {
                i15 = Integer.MAX_VALUE;
                break;
            }
            String str = this.e.m;
            if (str != null && str.equals(mm0Var.m.get(i15))) {
                break;
            } else {
                i15++;
            }
        }
        this.l = i15;
        this.q = gs.a(i3) == 128;
        this.r = gs.b(i3) == 64;
        vz2 vz2Var4 = this.e;
        String str2 = vz2Var4.m;
        if (str2 != null) {
            i5 = 3;
            switch (str2) {
                case "video/av01":
                    i5 = 4;
                    break;
                case "video/hevc":
                    break;
                case "video/avc":
                    i5 = 1;
                    break;
                case "video/x-vnd.on2.vp9":
                    i5 = 2;
                    break;
                default:
                    i5 = 0;
                    break;
            }
        } else {
            i5 = 0;
        }
        this.s = i5;
        if ((vz2Var4.f & 16384) != 0 || !um0.a(i3, this.g.M) || (!this.f && !this.g.C)) {
            i13 = 0;
        } else if (um0.a(i3, false) && this.h && this.f && this.e.i != -1) {
            mm0 mm0Var2 = this.g;
            if (!mm0Var2.y && !mm0Var2.x && (i12 & i3) != 0) {
                i13 = 2;
            }
        }
        this.p = i13;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0039  */
    public static k55 a(int i, f06 f06Var, mm0 mm0Var, int[] iArr, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        Point point;
        f06 f06Var2 = f06Var;
        mm0 mm0Var2 = mm0Var;
        int i7 = mm0Var2.j;
        int i8 = mm0Var2.k;
        boolean z = mm0Var2.l;
        xq4 xq4Var = um0.i;
        if (i7 == Integer.MAX_VALUE || i8 == Integer.MAX_VALUE) {
            i3 = Integer.MAX_VALUE;
        } else {
            int i9 = Integer.MAX_VALUE;
            for (int i10 = 0; i10 < f06Var2.b; i10++) {
                vz2 vz2Var = f06Var2.e[i10];
                int i11 = vz2Var.r;
                if (i11 > 0 && (i4 = vz2Var.s) > 0) {
                    if (!z) {
                        i5 = i7;
                        i6 = i8;
                    } else if ((i11 > i4) != (i7 > i8)) {
                        i6 = i7;
                        i5 = i8;
                    } else {
                        i5 = i7;
                        i6 = i8;
                    }
                    int i12 = i11 * i6;
                    int i13 = i4 * i5;
                    if (i12 >= i13) {
                        int i14 = u56.a;
                        point = new Point(i5, ((i13 + i11) - 1) / i11);
                    } else {
                        int i15 = u56.a;
                        point = new Point(((i12 + i4) - 1) / i4, i6);
                    }
                    int i16 = vz2Var.r;
                    int i17 = vz2Var.s;
                    int i18 = i16 * i17;
                    if (i16 >= ((int) (point.x * 0.98f)) && i17 >= ((int) (point.y * 0.98f)) && i18 < i9) {
                        i9 = i18;
                    }
                }
            }
            i3 = i9;
        }
        le3 le3Var = oe3.c;
        h20.a(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i19 = 0;
        int i20 = 0;
        while (i19 < f06Var2.b) {
            int iA = f06Var2.e[i19].a();
            tm0 tm0Var = new tm0(i, f06Var2, i19, mm0Var2, iArr[i19], i2, i3 == Integer.MAX_VALUE || (iA != -1 && iA <= i3));
            int i21 = i20 + 1;
            if (objArrCopyOf.length < i21) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, he3.a(objArrCopyOf.length, i21));
            }
            objArrCopyOf[i20] = tm0Var;
            i19++;
            f06Var2 = f06Var;
            mm0Var2 = mm0Var;
            i20 = i21;
        }
        return oe3.b(i20, objArrCopyOf);
    }

    public static int b(tm0 tm0Var, tm0 tm0Var2) {
        xq4 xq4Var;
        xq4 xq4VarA;
        if (tm0Var.f && tm0Var.i) {
            xq4VarA = um0.i;
            xq4Var = xq4VarA;
        } else {
            xq4 xq4Var2 = um0.i;
            xq4Var = xq4Var2;
            xq4VarA = xq4Var2.a();
        }
        return q40.a((tm0Var.g.x ? xq4Var.a() : um0.j).compare(Integer.valueOf(tm0Var.j), Integer.valueOf(tm0Var2.j))).a(Integer.valueOf(tm0Var.k), Integer.valueOf(tm0Var2.k), xq4VarA).a(Integer.valueOf(tm0Var.j), Integer.valueOf(tm0Var2.j), xq4VarA).a();
    }

    @Override // yads.sm0
    public final boolean a(sm0 sm0Var) {
        tm0 tm0Var = (tm0) sm0Var;
        if (!this.o && !u56.a(this.e.m, tm0Var.e.m)) {
            return false;
        }
        if (this.g.F) {
            return true;
        }
        return this.q == tm0Var.q && this.r == tm0Var.r;
    }

    @Override // yads.sm0
    public final int a() {
        return this.p;
    }

    public static int a(tm0 tm0Var, tm0 tm0Var2) {
        s40 s40VarA = q40.a(xu.a(tm0Var.i, tm0Var2.i)).a(tm0Var.m, tm0Var2.m).a(tm0Var.n, tm0Var2.n).a(tm0Var.f, tm0Var2.f).a(tm0Var.h, tm0Var2.h);
        Integer numValueOf = Integer.valueOf(tm0Var.l);
        Integer numValueOf2 = Integer.valueOf(tm0Var2.l);
        xm4.b.getClass();
        s40 s40VarA2 = s40VarA.a(numValueOf, numValueOf2, m95.b).a(tm0Var.q, tm0Var2.q).a(tm0Var.r, tm0Var2.r);
        if (tm0Var.q && tm0Var.r) {
            s40VarA2 = s40VarA2.a(tm0Var.s, tm0Var2.s);
        }
        return s40VarA2.a();
    }

    public static int a(List list, List list2) {
        return q40.a(new h9a().compare((tm0) Collections.max(list, new h9a()), (tm0) Collections.max(list2, new h9a()))).a(list.size(), list2.size()).a((tm0) Collections.max(list, new i9a()), (tm0) Collections.max(list2, new i9a()), new i9a()).a();
    }
}
