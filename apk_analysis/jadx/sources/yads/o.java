package yads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public abstract class o implements Iterator {
    public final Iterator b;
    public Object c = null;
    public Collection d = null;
    public Iterator e = gq3.INSTANCE;
    public final /* synthetic */ gd4 f;

    public o(gd4 gd4Var) {
        this.f = gd4Var;
        this.b = gd4Var.e.entrySet().iterator();
    }

    public abstract Object a(Object obj, Object obj2);

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
        return a(this.c, this.e.next());
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
