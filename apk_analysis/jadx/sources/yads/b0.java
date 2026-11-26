package yads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class b0 extends AbstractCollection {
    public final /* synthetic */ gd4 b;

    public b0(gd4 gd4Var) {
        this.b = gd4Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        gd4 gd4Var = this.b;
        Iterator it = gd4Var.e.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        gd4Var.e.clear();
        gd4Var.f = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        Iterator it = ((xw3) this.b.a().values()).iterator();
        while (it.hasNext()) {
            if (((Collection) it.next()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new k(this.b);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.b.f;
    }
}
