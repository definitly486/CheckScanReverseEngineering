package yads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class n extends yw3 {
    public final transient Map d;
    public final /* synthetic */ z e;

    public n(z zVar, Map map) {
        this.e = zVar;
        this.d = map;
    }

    public final je3 a(Map.Entry entry) {
        Object key = entry.getKey();
        z zVar = this.e;
        Collection collection = (Collection) entry.getValue();
        j jVar = (j) zVar;
        jVar.getClass();
        List list = (List) collection;
        return new je3(key, list instanceof RandomAccess ? new t(jVar, key, list, null) : new y(jVar, key, list, null));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Map map = this.d;
        z zVar = this.e;
        Map map2 = zVar.e;
        if (map != map2) {
            m mVar = new m(this);
            while (mVar.hasNext()) {
                mVar.next();
                mVar.remove();
            }
            return;
        }
        Iterator it = map2.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        zVar.e.clear();
        zVar.f = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map map = this.d;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        return this == obj || this.d.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        Map map = this.d;
        map.getClass();
        try {
            obj2 = map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return null;
        }
        j jVar = (j) this.e;
        jVar.getClass();
        List list = (List) collection;
        return list instanceof RandomAccess ? new t(jVar, obj, list, null) : new y(jVar, obj, list, null);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.d.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        z zVar = this.e;
        q qVar = zVar.b;
        if (qVar != null) {
            return qVar;
        }
        q qVarC = ((gd4) zVar).c();
        zVar.b = qVarC;
        return qVarC;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Collection collection = (Collection) this.d.remove(obj);
        if (collection == null) {
            return null;
        }
        List list = (List) ((gd4) this.e).g.get();
        list.addAll(collection);
        this.e.f -= collection.size();
        collection.clear();
        return list;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.d.toString();
    }
}
