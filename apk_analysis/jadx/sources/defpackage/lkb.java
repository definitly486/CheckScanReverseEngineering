package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class lkb implements Iterator {
    public int b = -1;
    public boolean c;
    public Iterator d;
    public final /* synthetic */ xkb e;

    public final Iterator a() {
        Iterator it = this.d;
        if (it != null) {
            return it;
        }
        Iterator it2 = this.e.d.entrySet().iterator();
        this.d = it2;
        return it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.b + 1;
        xkb xkbVar = this.e;
        return i < xkbVar.c.size() || (!xkbVar.d.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.c = true;
        int i = this.b + 1;
        this.b = i;
        xkb xkbVar = this.e;
        return i < xkbVar.c.size() ? (Map.Entry) xkbVar.c.get(this.b) : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.c) {
            ah.f("remove() was called before next()");
            return;
        }
        this.c = false;
        int i = xkb.h;
        xkb xkbVar = this.e;
        xkbVar.g();
        if (this.b >= xkbVar.c.size()) {
            a().remove();
            return;
        }
        int i2 = this.b;
        this.b = i2 - 1;
        xkbVar.d(i2);
    }
}
