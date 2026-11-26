package defpackage;

import java.util.Iterator;
import org.jsoup.nodes.h;
import org.jsoup.nodes.n;

/* JADX INFO: loaded from: classes5.dex */
public final class dw2 extends do5<h> {
    @Override // defpackage.do5
    public final n b(int i) {
        return (h) super.b(i);
    }

    @Override // java.util.ArrayList
    public final Object clone() {
        dw2 dw2Var = new dw2(size());
        Iterator<T> it = iterator();
        while (it.hasNext()) {
            dw2Var.add(((h) it.next()).k());
        }
        return dw2Var;
    }

    @Override // defpackage.do5
    public final n d(int i, n nVar) {
        return (h) super.d(i, (h) nVar);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        return (h) super.b(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        return (h) super.d(i, (h) obj);
    }
}
