package yads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class p implements Iterator {
    public Map.Entry b;
    public final /* synthetic */ Iterator c;
    public final /* synthetic */ q d;

    public p(q qVar, Iterator it) {
        this.d = qVar;
        this.c = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.c.next();
        this.b = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        Map.Entry entry = this.b;
        if (!(entry != null)) {
            defpackage.ah.f("no calls to next() since the last call to remove()");
            return;
        }
        Collection collection = (Collection) entry.getValue();
        this.c.remove();
        this.d.c.f -= collection.size();
        collection.clear();
        this.b = null;
    }
}
