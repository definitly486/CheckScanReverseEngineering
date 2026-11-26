package yads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class q extends ww3 {
    public final /* synthetic */ z c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(z zVar, Map map) {
        super(map);
        this.c = zVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        Iterator it = iterator();
        while (true) {
            p pVar = (p) it;
            if (!pVar.hasNext()) {
                return;
            }
            pVar.next();
            pVar.remove();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.b.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return this == obj || this.b.keySet().equals(obj);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.b.keySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new p(this, this.b.entrySet().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int size;
        Collection collection = (Collection) this.b.remove(obj);
        if (collection != null) {
            size = collection.size();
            collection.clear();
            this.c.f -= size;
        } else {
            size = 0;
        }
        return size > 0;
    }
}
