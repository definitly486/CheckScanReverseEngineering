package yads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes6.dex */
public class w implements Iterator {
    public final Iterator b;
    public final Collection c;
    public final /* synthetic */ y d;

    public w(y yVar) {
        this.d = yVar;
        Collection collection = yVar.c;
        this.c = collection;
        this.b = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        this.d.b();
        if (this.d.c == this.c) {
            return this.b.hasNext();
        }
        defpackage.ln.e();
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        this.d.b();
        if (this.d.c == this.c) {
            return this.b.next();
        }
        defpackage.ln.e();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.b.remove();
        y yVar = this.d;
        yVar.f.f--;
        yVar.c();
    }

    public w(y yVar, ListIterator listIterator) {
        this.d = yVar;
        this.c = yVar.c;
        this.b = listIterator;
    }
}
