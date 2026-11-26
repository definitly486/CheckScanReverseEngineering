package yads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class k40 extends AbstractSet {
    public final /* synthetic */ n40 b;

    public k40(n40 n40Var) {
        this.b = n40Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.b.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        n40 n40Var = this.b;
        Map mapA = n40Var.a();
        return mapA != null ? mapA.keySet().iterator() : new f40(n40Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map mapA = this.b.a();
        if (mapA != null) {
            return mapA.keySet().remove(obj);
        }
        return this.b.b(obj) != n40.k;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.b.size();
    }
}
