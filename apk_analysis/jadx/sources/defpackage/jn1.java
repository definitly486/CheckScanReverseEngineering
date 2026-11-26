package defpackage;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class jn1<F, T> extends AbstractCollection<T> {
    public final Collection<F> b;
    public final jg5 c;

    public jn1(Collection collection, jg5 jg5Var) {
        collection.getClass();
        this.b = collection;
        this.c = jg5Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<T> iterator() {
        return new wa4(this.b.iterator(), this.c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.b.size();
    }
}
