package yads;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class no2 extends uo2 {
    public final cy5 e;
    public final ArrayList f;
    public final String g;
    public final List h;
    public final List i;

    public no2(cy5 cy5Var, ArrayList arrayList, String str) {
        Object next;
        super(str);
        this.e = cy5Var;
        this.f = arrayList;
        this.g = str;
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((uo2) it.next()).d());
        }
        Iterator it2 = arrayList2.iterator();
        Object next2 = null;
        if (it2.hasNext()) {
            next = it2.next();
            while (it2.hasNext()) {
                next = defpackage.qn1.h0((List) it2.next(), (List) next);
            }
        } else {
            next = null;
        }
        List list = (List) next;
        List list2 = defpackage.kx2.b;
        this.h = list == null ? list2 : list;
        ArrayList arrayList3 = this.f;
        ArrayList arrayList4 = new ArrayList(defpackage.kn1.q(arrayList3, 10));
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            arrayList4.add(((uo2) it3.next()).b());
        }
        Iterator it4 = arrayList4.iterator();
        if (it4.hasNext()) {
            next2 = it4.next();
            while (it4.hasNext()) {
                next2 = defpackage.qn1.h0((List) it4.next(), (List) next2);
            }
        }
        List list3 = (List) next2;
        this.i = list3 != null ? list3 : list2;
    }

    @Override // yads.uo2
    public final Object a(bp2 bp2Var) {
        return bp2Var.a(this);
    }

    @Override // yads.uo2
    public final List b() {
        return this.i;
    }

    @Override // yads.uo2
    public final List d() {
        return this.h;
    }

    public final List e() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof no2)) {
            return false;
        }
        no2 no2Var = (no2) obj;
        return defpackage.aa4.e(this.e, no2Var.e) && defpackage.aa4.e(this.f, no2Var.f) && defpackage.aa4.e(this.g, no2Var.g);
    }

    public final cy5 f() {
        return this.e;
    }

    public final int hashCode() {
        return this.g.hashCode() + defpackage.tg.d(this.f, this.e.a.hashCode() * 31, 31);
    }

    public final String toString() {
        String strA0;
        if (this.f.size() > 1) {
            ArrayList arrayList = this.f;
            strA0 = defpackage.qn1.a0(arrayList.subList(1, arrayList.size()), StringUtils.COMMA, null, null, 0, null, 62);
        } else {
            strA0 = "";
        }
        return defpackage.qn1.T(this.f) + "." + this.e.a() + "(" + strA0 + ")";
    }
}
