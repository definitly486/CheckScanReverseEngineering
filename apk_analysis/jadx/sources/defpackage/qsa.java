package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class qsa implements Iterator {
    public int b = -1;
    public boolean c;
    public Iterator d;
    public final /* synthetic */ ssa e;

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
        ssa ssaVar = this.e;
        return i < ssaVar.c || (!ssaVar.d.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.c = true;
        int i = this.b + 1;
        this.b = i;
        ssa ssaVar = this.e;
        return i < ssaVar.c ? (psa) ssaVar.b[i] : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.c) {
            ah.f("remove() was called before next()");
            return;
        }
        this.c = false;
        ssa ssaVar = this.e;
        ssaVar.h();
        int i = this.b;
        if (i >= ssaVar.c) {
            a().remove();
        } else {
            this.b = i - 1;
            ssaVar.e(i);
        }
    }
}
