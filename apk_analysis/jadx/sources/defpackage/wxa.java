package defpackage;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public class wxa extends AbstractCollection implements List {
    public final Object b;
    public Collection c;
    public final wxa d;
    public final Collection e;
    public final /* synthetic */ yxa f;
    public final /* synthetic */ yxa g;

    public wxa(yxa yxaVar, Object obj, List list, wxa wxaVar) {
        this.g = yxaVar;
        this.f = yxaVar;
        this.b = obj;
        this.c = list;
        this.d = wxaVar;
        this.e = wxaVar == null ? null : wxaVar.c;
    }

    public final void a() {
        wxa wxaVar = this.d;
        if (wxaVar != null) {
            wxaVar.a();
            return;
        }
        this.f.e.put(this.b, this.c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zzb();
        boolean zIsEmpty = this.c.isEmpty();
        boolean zAdd = this.c.add(obj);
        if (zAdd) {
            this.f.f++;
            if (zIsEmpty) {
                a();
                return true;
            }
        }
        return zAdd;
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = ((List) this.c).addAll(i, collection);
        if (zAddAll) {
            this.g.f += this.c.size() - size;
            if (size == 0) {
                a();
                return true;
            }
        }
        return zAddAll;
    }

    public final void b() {
        wxa wxaVar = this.d;
        if (wxaVar != null) {
            wxaVar.b();
        } else if (this.c.isEmpty()) {
            this.f.e.remove(this.b);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.c.clear();
        this.f.f -= size;
        b();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        zzb();
        return this.c.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean containsAll(Collection collection) {
        zzb();
        return this.c.containsAll(collection);
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        zzb();
        return this.c.equals(obj);
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzb();
        return ((List) this.c).get(i);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        zzb();
        return this.c.hashCode();
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        zzb();
        return ((List) this.c).indexOf(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        zzb();
        return new pxa(this);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        zzb();
        return ((List) this.c).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        zzb();
        return new sxa(this);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        zzb();
        Object objRemove = ((List) this.c).remove(i);
        this.g.f--;
        b();
        return objRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zRemoveAll = this.c.removeAll(collection);
        if (zRemoveAll) {
            this.f.f += this.c.size() - size;
            b();
        }
        return zRemoveAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        int size = size();
        boolean zRetainAll = this.c.retainAll(collection);
        if (zRetainAll) {
            this.f.f += this.c.size() - size;
            b();
        }
        return zRetainAll;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        zzb();
        return ((List) this.c).set(i, obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        zzb();
        return this.c.size();
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        zzb();
        List listSubList = ((List) this.c).subList(i, i2);
        wxa wxaVar = this.d;
        if (wxaVar == null) {
            wxaVar = this;
        }
        boolean z = listSubList instanceof RandomAccess;
        Object obj = this.b;
        yxa yxaVar = this.g;
        return z ? new mxa(yxaVar, obj, listSubList, wxaVar) : new wxa(yxaVar, obj, listSubList, wxaVar);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        zzb();
        return this.c.toString();
    }

    public final void zzb() {
        wxa wxaVar = this.d;
        if (wxaVar != null) {
            wxaVar.zzb();
            if (wxaVar.c == this.e) {
                return;
            }
            ln.e();
            return;
        }
        if (this.c.isEmpty()) {
            Collection collection = (Collection) this.f.e.get(this.b);
            if (collection != null) {
                this.c = collection;
            }
        }
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        zzb();
        return new sxa(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzb();
        boolean zRemove = this.c.remove(obj);
        if (zRemove) {
            this.f.f--;
            b();
        }
        return zRemove;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        zzb();
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
        int size = size();
        boolean zAddAll = this.c.addAll(collection);
        if (zAddAll) {
            this.f.f += this.c.size() - size;
            if (size == 0) {
                a();
                return true;
            }
        }
        return zAddAll;
    }
}
