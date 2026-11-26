package defpackage;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class l0b extends AbstractCollection {
    public final /* synthetic */ p0b b;

    public l0b(p0b p0bVar) {
        this.b = p0bVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        p0b p0bVar = this.b;
        Map mapE = p0bVar.e();
        return mapE != null ? mapE.values().iterator() : new pza(p0bVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.b.size();
    }
}
