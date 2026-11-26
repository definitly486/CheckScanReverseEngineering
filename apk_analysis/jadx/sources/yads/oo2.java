package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class oo2 extends uo2 {
    public final ArrayList e;
    public final String f;
    public final List g;
    public final List h;

    public oo2(String str, ArrayList arrayList) {
        super(str);
        this.e = arrayList;
        this.f = str;
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((uo2) it.next()).d());
        }
        Iterator it2 = arrayList2.iterator();
        if (!it2.hasNext()) {
            defpackage.n1.e("Empty collection can't be reduced.");
            throw null;
        }
        Object next = it2.next();
        while (it2.hasNext()) {
            next = defpackage.qn1.h0((List) it2.next(), (List) next);
        }
        this.g = (List) next;
        ArrayList arrayList3 = this.e;
        ArrayList arrayList4 = new ArrayList(defpackage.kn1.q(arrayList3, 10));
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            arrayList4.add(((uo2) it3.next()).b());
        }
        Iterator it4 = arrayList4.iterator();
        if (!it4.hasNext()) {
            defpackage.n1.e("Empty collection can't be reduced.");
            throw null;
        }
        Object next2 = it4.next();
        while (it4.hasNext()) {
            next2 = defpackage.qn1.h0((List) it4.next(), (List) next2);
        }
        this.h = (List) next2;
    }

    @Override // yads.uo2
    public final Object a(bp2 bp2Var) {
        bp2Var.getClass();
        ArrayList arrayList = new ArrayList();
        for (uo2 uo2Var : this.e) {
            arrayList.add(bp2Var.a(uo2Var).toString());
            a(uo2Var.a());
        }
        return defpackage.qn1.a0(arrayList, "", null, null, 0, null, 62);
    }

    @Override // yads.uo2
    public final List b() {
        return this.h;
    }

    @Override // yads.uo2
    public final List d() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oo2)) {
            return false;
        }
        oo2 oo2Var = (oo2) obj;
        return defpackage.aa4.e(this.e, oo2Var.e) && defpackage.aa4.e(this.f, oo2Var.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + (this.e.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.qn1.a0(this.e, "", null, null, 0, null, 62);
    }
}
