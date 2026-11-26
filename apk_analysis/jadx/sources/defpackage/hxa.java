package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class hxa implements Iterator {
    public final Iterator b;
    public Object c = null;
    public Collection d = null;
    public Iterator e = g2b.zza;
    public final /* synthetic */ yxa f;

    public hxa(yxa yxaVar) {
        this.f = yxaVar;
        this.b = yxaVar.e.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b.hasNext() || this.e.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.e.hasNext()) {
            Map.Entry entry = (Map.Entry) this.b.next();
            this.c = entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.d = collection;
            this.e = collection.iterator();
        }
        return new k1b(this.c, this.e.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.e.remove();
        Collection collection = this.d;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.b.remove();
        }
        this.f.f--;
    }
}
