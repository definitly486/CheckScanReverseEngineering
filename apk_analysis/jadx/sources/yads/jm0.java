package yads;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class jm0 extends sm0 implements Comparable {
    public final int f;
    public final boolean g;
    public final String h;
    public final mm0 i;
    public final boolean j;
    public final int k;
    public final int l;
    public final int m;
    public final boolean n;
    public final int o;
    public final int p;
    public final boolean q;
    public final int r;
    public final int s;
    public final int t;
    public final int u;
    public final boolean v;
    public final boolean w;

    /* JADX WARN: Code duplicated, block: B:79:0x0116  */
    public jm0(int i, f06 f06Var, int i2, mm0 mm0Var, int i3, boolean z, xx4 xx4Var) {
        int i4;
        int iA;
        int iA2;
        super(i, f06Var, i2);
        this.i = mm0Var;
        this.h = um0.a(this.e.d);
        int i5 = 0;
        this.j = um0.a(i3, false);
        int i6 = 0;
        while (true) {
            i4 = Integer.MAX_VALUE;
            if (i6 >= mm0Var.o.size()) {
                iA = 0;
                i6 = Integer.MAX_VALUE;
                break;
            } else {
                iA = um0.a(this.e, (String) mm0Var.o.get(i6), false);
                if (iA > 0) {
                    break;
                } else {
                    i6++;
                }
            }
        }
        this.l = i6;
        this.k = iA;
        this.m = um0.a(this.e.f, mm0Var.p);
        vz2 vz2Var = this.e;
        int i7 = vz2Var.f;
        this.n = i7 == 0 || (i7 & 1) != 0;
        this.q = (vz2Var.e & 1) != 0;
        int i8 = vz2Var.z;
        this.r = i8;
        this.s = vz2Var.A;
        int i9 = vz2Var.i;
        this.t = i9;
        this.g = (i9 == -1 || i9 <= mm0Var.r) && (i8 == -1 || i8 <= mm0Var.q) && xx4Var.apply(vz2Var);
        String[] strArrA = u56.a();
        int i10 = 0;
        while (true) {
            if (i10 >= strArrA.length) {
                iA2 = 0;
                i10 = Integer.MAX_VALUE;
                break;
            } else {
                iA2 = um0.a(this.e, strArrA[i10], false);
                if (iA2 > 0) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        this.o = i10;
        this.p = iA2;
        for (int i11 = 0; i11 < mm0Var.s.size(); i11++) {
            String str = this.e.m;
            if (str != null && str.equals(mm0Var.s.get(i11))) {
                i4 = i11;
                break;
            }
        }
        this.u = i4;
        this.v = gs.a(i3) == 128;
        this.w = gs.b(i3) == 64;
        if (um0.a(i3, this.i.M) && (this.g || this.i.G)) {
            if (um0.a(i3, false) && this.g && this.e.i != -1) {
                mm0 mm0Var2 = this.i;
                if (mm0Var2.y || mm0Var2.x || (!mm0Var2.O && z)) {
                    i5 = 1;
                } else {
                    i5 = 2;
                }
            } else {
                i5 = 1;
            }
        }
        this.f = i5;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(jm0 jm0Var) {
        xq4 xq4Var;
        xq4 xq4VarA;
        if (this.g && this.j) {
            xq4VarA = um0.i;
            xq4Var = xq4VarA;
        } else {
            xq4 xq4Var2 = um0.i;
            xq4Var = xq4Var2;
            xq4VarA = xq4Var2.a();
        }
        s40 s40VarA = q40.a(xu.a(this.j, jm0Var.j));
        Integer numValueOf = Integer.valueOf(this.l);
        Integer numValueOf2 = Integer.valueOf(jm0Var.l);
        xm4.b.getClass();
        m95 m95Var = m95.b;
        s40 s40VarA2 = s40VarA.a(numValueOf, numValueOf2, m95Var).a(this.k, jm0Var.k).a(this.m, jm0Var.m).a(this.q, jm0Var.q).a(this.n, jm0Var.n).a(Integer.valueOf(this.o), Integer.valueOf(jm0Var.o), m95Var).a(this.p, jm0Var.p).a(this.g, jm0Var.g).a(Integer.valueOf(this.u), Integer.valueOf(jm0Var.u), m95Var).a(Integer.valueOf(this.t), Integer.valueOf(jm0Var.t), this.i.x ? xq4Var.a() : um0.j).a(this.v, jm0Var.v).a(this.w, jm0Var.w).a(Integer.valueOf(this.r), Integer.valueOf(jm0Var.r), xq4VarA).a(Integer.valueOf(this.s), Integer.valueOf(jm0Var.s), xq4VarA);
        Integer numValueOf3 = Integer.valueOf(this.t);
        Integer numValueOf4 = Integer.valueOf(jm0Var.t);
        if (!u56.a(this.h, jm0Var.h)) {
            xq4VarA = um0.j;
        }
        return s40VarA2.a(numValueOf3, numValueOf4, xq4VarA).a();
    }

    public static k55 a(int i, f06 f06Var, mm0 mm0Var, int[] iArr, boolean z, xx4 xx4Var) {
        le3 le3Var = oe3.c;
        h20.a(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i2 = 0;
        int i3 = 0;
        while (i2 < f06Var.b) {
            int i4 = i;
            f06 f06Var2 = f06Var;
            mm0 mm0Var2 = mm0Var;
            boolean z2 = z;
            xx4 xx4Var2 = xx4Var;
            jm0 jm0Var = new jm0(i4, f06Var2, i2, mm0Var2, iArr[i2], z2, xx4Var2);
            int i5 = i3 + 1;
            if (objArrCopyOf.length < i5) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, he3.a(objArrCopyOf.length, i5));
            }
            objArrCopyOf[i3] = jm0Var;
            i2++;
            i3 = i5;
            i = i4;
            f06Var = f06Var2;
            mm0Var = mm0Var2;
            z = z2;
            xx4Var = xx4Var2;
        }
        return oe3.b(i3, objArrCopyOf);
    }

    @Override // yads.sm0
    public final int a() {
        return this.f;
    }

    @Override // yads.sm0
    public final boolean a(sm0 sm0Var) {
        int i;
        String str;
        int i2;
        jm0 jm0Var = (jm0) sm0Var;
        mm0 mm0Var = this.i;
        if (!mm0Var.J && ((i2 = this.e.z) == -1 || i2 != jm0Var.e.z)) {
            return false;
        }
        if (!mm0Var.H && ((str = this.e.m) == null || !TextUtils.equals(str, jm0Var.e.m))) {
            return false;
        }
        mm0 mm0Var2 = this.i;
        if (!mm0Var2.I && ((i = this.e.A) == -1 || i != jm0Var.e.A)) {
            return false;
        }
        if (mm0Var2.K) {
            return true;
        }
        return this.v == jm0Var.v && this.w == jm0Var.w;
    }

    public static int a(List list, List list2) {
        return ((jm0) Collections.max(list)).compareTo((jm0) Collections.max(list2));
    }
}
