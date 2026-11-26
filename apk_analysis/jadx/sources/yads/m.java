package yads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class m implements Iterator {
    public final Iterator b;
    public Collection c;
    public final /* synthetic */ n d;

    public m(n nVar) {
        this.d = nVar;
        this.b = nVar.d.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.b.next();
        this.c = (Collection) entry.getValue();
        return this.d.a(entry);
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!(this.c != null)) {
            defpackage.ah.f("no calls to next() since the last call to remove()");
            return;
        }
        this.b.remove();
        this.d.e.f -= this.c.size();
        this.c.clear();
        this.c = null;
    }
}
