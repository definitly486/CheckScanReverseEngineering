package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class arb implements Iterator {
    public int b = -1;
    public boolean c;
    public Iterator d;
    public final /* synthetic */ nrb e;

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
        nrb nrbVar = this.e;
        return i < nrbVar.c || (!nrbVar.d.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.c = true;
        int i = this.b + 1;
        this.b = i;
        nrb nrbVar = this.e;
        return i < nrbVar.c ? (uqb) nrbVar.b[i] : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.c) {
            ah.f("remove() was called before next()");
            return;
        }
        this.c = false;
        int i = nrb.h;
        nrb nrbVar = this.e;
        nrbVar.j();
        int i2 = this.b;
        if (i2 >= nrbVar.c) {
            a().remove();
        } else {
            this.b = i2 - 1;
            nrbVar.g(i2);
        }
    }
}
