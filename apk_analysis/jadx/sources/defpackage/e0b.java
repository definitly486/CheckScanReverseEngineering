package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class e0b extends AbstractSet {
    public final /* synthetic */ p0b b;

    public e0b(p0b p0bVar) {
        this.b = p0bVar;
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
        p0b p0bVar = this.b;
        Map mapE = p0bVar.e();
        return mapE != null ? mapE.keySet().iterator() : new rya(p0bVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        p0b p0bVar = this.b;
        Map mapE = p0bVar.e();
        if (mapE != null) {
            return mapE.keySet().remove(obj);
        }
        return p0bVar.o(obj) != p0b.k;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.b.size();
    }
}
