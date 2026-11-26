package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class wu1<T> implements ti3<T> {
    public final ArrayList a;

    public wu1(ArrayList arrayList) {
        this.a = arrayList;
    }

    @Override // defpackage.ti3
    public vi3<T> a() {
        ArrayList arrayList = this.a;
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator<T> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((fo5) it.next()).a());
        }
        return arrayList2.size() == 1 ? (vi3) qn1.k0(arrayList2) : new xu1();
    }

    @Override // defpackage.ti3
    public a46<T> b() {
        ArrayList arrayList = this.a;
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator<T> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((fo5) it.next()).b());
        }
        return xs7.a(arrayList2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof wu1) {
            return this.a.equals(((wu1) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return xp.e(new StringBuilder("ConcatenatedFormatStructure("), qn1.a0(this.a, ", ", null, null, 0, null, 62), ')');
    }
}
