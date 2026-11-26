package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes4.dex */
public class pxa implements Iterator {
    public final Iterator b;
    public final Collection c;
    public final /* synthetic */ wxa d;

    public pxa(wxa wxaVar) {
        this.d = wxaVar;
        Collection collection = wxaVar.c;
        this.c = collection;
        this.b = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public final void a() {
        wxa wxaVar = this.d;
        wxaVar.zzb();
        if (wxaVar.c == this.c) {
            return;
        }
        ln.e();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        a();
        return this.b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        a();
        return this.b.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.b.remove();
        wxa wxaVar = this.d;
        wxaVar.f.f--;
        wxaVar.b();
    }

    public pxa(wxa wxaVar, ListIterator listIterator) {
        this.d = wxaVar;
        this.c = wxaVar.c;
        this.b = listIterator;
    }
}
