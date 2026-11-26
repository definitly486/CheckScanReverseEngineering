package yads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes6.dex */
public class y extends AbstractCollection implements List {
    public final Object b;
    public Collection c;
    public final y d;
    public final Collection e;
    public final /* synthetic */ z f;
    public final /* synthetic */ z g;

    public y(z zVar, Object obj, List list, y yVar) {
        this.g = zVar;
        this.f = zVar;
        this.b = obj;
        this.c = list;
        this.d = yVar;
        this.e = yVar == null ? null : yVar.c;
    }

    public final void a() {
        y yVar = this.d;
        if (yVar != null) {
            yVar.a();
        } else {
            this.f.e.put(this.b, this.c);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        b();
        boolean zIsEmpty = this.c.isEmpty();
        boolean zAdd = this.c.add(obj);
        if (zAdd) {
            this.f.f++;
            if (zIsEmpty) {
                a();
            }
        }
        return zAdd;
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        b();
        int size = this.c.size();
        boolean zAddAll = ((List) this.c).addAll(i, collection);
        if (zAddAll) {
            int size2 = this.c.size();
            z zVar = this.g;
            zVar.f = (size2 - size) + zVar.f;
            if (size == 0) {
                a();
            }
        }
        return zAddAll;
    }

    public final void b() {
        Collection collection;
        y yVar = this.d;
        if (yVar != null) {
            yVar.b();
            if (this.d.c == this.e) {
                return;
            }
            defpackage.ln.e();
            return;
        }
        if (!this.c.isEmpty() || (collection = (Collection) this.f.e.get(this.b)) == null) {
            return;
        }
        this.c = collection;
    }

    public final void c() {
        y yVar = this.d;
        if (yVar != null) {
            yVar.c();
        } else if (this.c.isEmpty()) {
            this.f.e.remove(this.b);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        b();
        int size = this.c.size();
        if (size == 0) {
            return;
        }
        this.c.clear();
        this.f.f -= size;
        c();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        b();
        return this.c.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean containsAll(Collection collection) {
        b();
        return this.c.containsAll(collection);
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        b();
        return this.c.equals(obj);
    }

    @Override // java.util.List
    public final Object get(int i) {
        b();
        return ((List) this.c).get(i);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        b();
        return this.c.hashCode();
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        b();
        return ((List) this.c).indexOf(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        b();
        return new w(this);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        b();
        return ((List) this.c).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        b();
        return new x(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        b();
        boolean zRemove = this.c.remove(obj);
        if (zRemove) {
            this.f.f--;
            c();
        }
        return zRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        b();
        int size = this.c.size();
        boolean zRemoveAll = this.c.removeAll(collection);
        if (zRemoveAll) {
            int size2 = this.c.size();
            z zVar = this.f;
            zVar.f = (size2 - size) + zVar.f;
            c();
        }
        return zRemoveAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        b();
        int size = this.c.size();
        boolean zRetainAll = this.c.retainAll(collection);
        if (zRetainAll) {
            int size2 = this.c.size();
            z zVar = this.f;
            zVar.f = (size2 - size) + zVar.f;
            c();
        }
        return zRetainAll;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        b();
        return ((List) this.c).set(i, obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        b();
        return this.c.size();
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        b();
        z zVar = this.g;
        Object obj = this.b;
        List listSubList = ((List) this.c).subList(i, i2);
        y yVar = this.d;
        if (yVar != null) {
            this = yVar;
        }
        zVar.getClass();
        return listSubList instanceof RandomAccess ? new t(zVar, obj, listSubList, this) : new y(zVar, obj, listSubList, this);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        b();
        return this.c.toString();
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        b();
        return new x(this, i);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        b();
        Object objRemove = ((List) this.c).remove(i);
        this.g.f--;
        c();
        return objRemove;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        b();
        boolean zIsEmpty = this.c.isEmpty();
        ((List) this.c).add(i, obj);
        this.g.f++;
        if (zIsEmpty) {
            a();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        b();
        int size = this.c.size();
        boolean zAddAll = this.c.addAll(collection);
        if (zAddAll) {
            int size2 = this.c.size();
            z zVar = this.f;
            zVar.f = (size2 - size) + zVar.f;
            if (size == 0) {
                a();
            }
        }
        return zAddAll;
    }
}
