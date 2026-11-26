package yads;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class qm0 extends sm0 implements Comparable {
    public final int f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final boolean n;

    public qm0(int i, f06 f06Var, int i2, mm0 mm0Var, int i3, String str) {
        int iA;
        super(i, f06Var, i2);
        int i4 = 0;
        this.g = um0.a(i3, false);
        int i5 = this.e.e & (~mm0Var.v);
        this.h = (i5 & 1) != 0;
        this.i = (i5 & 2) != 0;
        k55 k55VarA = mm0Var.t.isEmpty() ? oe3.a("") : mm0Var.t;
        int i6 = 0;
        while (true) {
            if (i6 >= k55VarA.size()) {
                i6 = Integer.MAX_VALUE;
                iA = 0;
                break;
            } else {
                iA = um0.a(this.e, (String) k55VarA.get(i6), mm0Var.w);
                if (iA > 0) {
                    break;
                } else {
                    i6++;
                }
            }
        }
        this.j = i6;
        this.k = iA;
        int iA2 = um0.a(this.e.f, mm0Var.u);
        this.l = iA2;
        this.n = (this.e.f & 1088) != 0;
        int iA3 = um0.a(this.e, str, um0.a(str) == null);
        this.m = iA3;
        boolean z = iA > 0 || (mm0Var.t.isEmpty() && iA2 > 0) || this.h || (this.i && iA3 > 0);
        if (um0.a(i3, mm0Var.M) && z) {
            i4 = 1;
        }
        this.f = i4;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(qm0 qm0Var) {
        s40 s40VarA = q40.a(xu.a(this.g, qm0Var.g));
        Integer numValueOf = Integer.valueOf(this.j);
        Integer numValueOf2 = Integer.valueOf(qm0Var.j);
        Comparator comparator = xm4.b;
        comparator.getClass();
        m95 m95Var = m95.b;
        s40 s40VarA2 = s40VarA.a(numValueOf, numValueOf2, m95Var).a(this.k, qm0Var.k).a(this.l, qm0Var.l).a(this.h, qm0Var.h);
        Boolean boolValueOf = Boolean.valueOf(this.i);
        Boolean boolValueOf2 = Boolean.valueOf(qm0Var.i);
        if (this.k != 0) {
            comparator = m95Var;
        }
        s40 s40VarA3 = s40VarA2.a(boolValueOf, boolValueOf2, comparator).a(this.m, qm0Var.m);
        if (this.l == 0) {
            s40VarA3 = s40VarA3.b(this.n, qm0Var.n);
        }
        return s40VarA3.a();
    }

    public static k55 a(mm0 mm0Var, String str, int i, f06 f06Var, int[] iArr) {
        le3 le3Var = oe3.c;
        h20.a(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i2 = 0;
        int i3 = 0;
        while (i2 < f06Var.b) {
            mm0 mm0Var2 = mm0Var;
            String str2 = str;
            int i4 = i;
            f06 f06Var2 = f06Var;
            qm0 qm0Var = new qm0(i4, f06Var2, i2, mm0Var2, iArr[i2], str2);
            int i5 = i3 + 1;
            if (objArrCopyOf.length < i5) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, he3.a(objArrCopyOf.length, i5));
            }
            objArrCopyOf[i3] = qm0Var;
            i2++;
            i3 = i5;
            i = i4;
            f06Var = f06Var2;
            mm0Var = mm0Var2;
            str = str2;
        }
        return oe3.b(i3, objArrCopyOf);
    }

    @Override // yads.sm0
    public final int a() {
        return this.f;
    }

    @Override // yads.sm0
    public final /* bridge */ /* synthetic */ boolean a(sm0 sm0Var) {
        return false;
    }

    public static int a(List list, List list2) {
        return ((qm0) list.get(0)).compareTo((qm0) list2.get(0));
    }
}
