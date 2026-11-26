package yads;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class m40 extends AbstractCollection {
    public final /* synthetic */ n40 b;

    public m40(n40 n40Var) {
        this.b = n40Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        n40 n40Var = this.b;
        Map mapA = n40Var.a();
        return mapA != null ? mapA.values().iterator() : new h40(n40Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.b.size();
    }
}
