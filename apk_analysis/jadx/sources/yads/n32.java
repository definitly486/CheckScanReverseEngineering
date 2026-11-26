package yads;

import defpackage.b80;
import defpackage.fh8;
import defpackage.ta8;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes6.dex */
public final class n32 {
    public final long a;
    public final List b;
    public final List c;
    public final boolean d;
    public final defpackage.cl4 e;
    public final defpackage.cl4 f;

    public n32(long j, List list, List list2, boolean z) {
        this.a = j;
        this.b = list;
        this.c = list2;
        this.d = z;
        this.e = new fh8(new b80(this, 7));
        this.f = new fh8(new defpackage.jf(this, 6));
    }

    public static final String b(n32 n32Var) {
        boolean zIsEmpty = n32Var.b.isEmpty();
        long j = n32Var.a;
        if (zIsEmpty) {
            return String.valueOf(j);
        }
        List<defpackage.b36> list = n32Var.b;
        ArrayList arrayList = new ArrayList();
        for (defpackage.b36 b36Var : list) {
            defpackage.nn1.s(u96.i(o32.a(b36Var), o32.b(b36Var)), arrayList);
        }
        return j + "/" + defpackage.qn1.a0(arrayList, "/", null, null, 0, null, 62);
    }

    public final n32 a(String str, y22 y22Var, String str2) {
        String str3;
        br0 br0Var;
        p41 p41VarA;
        String strA;
        ArrayList arrayList = new ArrayList(this.b.size() + 1);
        arrayList.addAll(this.b);
        if (y22Var == null || (str3 = y22Var.d) == null) {
            str3 = str2;
        }
        arrayList.add(new defpackage.b36(str, str3));
        if (y22Var != null && (br0Var = y22Var.c) != null && (p41VarA = br0Var.a()) != null && (strA = p41VarA.a()) != null) {
            str2 = strA;
        } else if (y22Var != null) {
            str2 = y22Var.d;
        }
        long j = this.a;
        ArrayList arrayList2 = new ArrayList(this.c.size() + 1);
        arrayList2.addAll(this.c);
        arrayList2.add(str2);
        return new n32(j, arrayList, arrayList2, 8);
    }

    public final String c() {
        return (String) this.f.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final n32 d() {
        int iNextIndex;
        int iNextIndex2;
        if (this.b.isEmpty()) {
            return this;
        }
        ArrayList arrayListV0 = defpackage.qn1.v0(this.b);
        defpackage.b36 b36Var = (defpackage.b36) arrayListV0.remove(arrayListV0.size() - 1);
        List list = this.c;
        ListIterator listIterator = list.listIterator(list.size());
        while (true) {
            iNextIndex = -1;
            if (!listIterator.hasPrevious()) {
                iNextIndex2 = -1;
                break;
            }
            if (defpackage.aa4.e((String) listIterator.previous(), (String) b36Var.b)) {
                iNextIndex2 = listIterator.nextIndex();
                break;
            }
        }
        Integer numValueOf = Integer.valueOf(iNextIndex2);
        if (iNextIndex2 == -1) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            iNextIndex = numValueOf.intValue();
        } else {
            List list2 = this.c;
            ListIterator listIterator2 = list2.listIterator(list2.size());
            while (listIterator2.hasPrevious()) {
                if (ta8.d0((String) listIterator2.previous(), '#').equals((String) b36Var.b)) {
                    iNextIndex = listIterator2.nextIndex();
                    break;
                }
            }
        }
        return new n32(this.a, arrayListV0, this.c.subList(0, iNextIndex + 1), 8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n32)) {
            return false;
        }
        n32 n32Var = (n32) obj;
        return this.a == n32Var.a && defpackage.aa4.e(this.b, n32Var.b) && defpackage.aa4.e(this.c, n32Var.c) && this.d == n32Var.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + defpackage.e2.b(this.c, defpackage.e2.b(this.b, Long.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        return (String) this.e.getValue();
    }

    public /* synthetic */ n32(long j, List list, List list2, int i) {
        this(j, list, (i & 4) != 0 ? u96.h(String.valueOf(j)) : list2, false);
    }

    public static final String a(n32 n32Var) {
        return defpackage.qn1.a0(n32Var.c, "/", null, null, 0, null, 62);
    }

    public final String a() {
        return (String) defpackage.qn1.b0(this.c);
    }

    public final n32 a(String str) {
        long j = this.a;
        List list = this.b;
        ArrayList arrayList = new ArrayList(this.c.size() + 1);
        arrayList.addAll(this.c);
        arrayList.add(str);
        return new n32(j, list, arrayList, 8);
    }

    public final String b() {
        if (this.b.isEmpty()) {
            return null;
        }
        long j = this.a;
        List list = this.b;
        return defpackage.cg.d((String) new n32(j, list.subList(0, list.size() - 1), this.c, 8).f.getValue(), "/", o32.a((defpackage.b36) defpackage.qn1.b0(this.b)));
    }
}
