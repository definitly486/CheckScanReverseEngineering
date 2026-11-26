package yads;

import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes6.dex */
public final class rj5 extends qj5 implements SortedSet {
    public rj5(SortedSet sortedSet, xx4 xx4Var) {
        super(sortedSet, xx4Var);
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return ((SortedSet) this.b).comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        Iterator it = this.b.iterator();
        xx4 xx4Var = this.c;
        it.getClass();
        xx4Var.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (xx4Var.apply(next)) {
                return next;
            }
        }
        defpackage.qz0.e();
        return null;
    }

    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return new rj5(((SortedSet) this.b).headSet(obj), this.c);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        SortedSet sortedSetHeadSet = (SortedSet) this.b;
        while (true) {
            Object objLast = sortedSetHeadSet.last();
            if (this.c.apply(objLast)) {
                return objLast;
            }
            sortedSetHeadSet = sortedSetHeadSet.headSet(objLast);
        }
    }

    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return new rj5(((SortedSet) this.b).subSet(obj, obj2), this.c);
    }

    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return new rj5(((SortedSet) this.b).tailSet(obj), this.c);
    }
}
