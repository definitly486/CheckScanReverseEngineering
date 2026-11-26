package yads;

import defpackage.j59;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class au5 extends WeakHashMap {
    public final Object b = new Object();

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        synchronized (this.b) {
            super.clear();
            j59 j59Var = j59.a;
        }
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set setEntrySet;
        synchronized (this.b) {
            setEntrySet = super.entrySet();
        }
        return setEntrySet;
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        synchronized (this.b) {
            obj2 = super.get(obj);
        }
        return obj2;
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        Set setKeySet;
        synchronized (this.b) {
            setKeySet = super.keySet();
        }
        return setKeySet;
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        Object objPut;
        synchronized (this.b) {
            objPut = super.put(obj, obj2);
        }
        return objPut;
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        synchronized (this.b) {
            super.putAll(map);
            j59 j59Var = j59.a;
        }
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        boolean zRemove;
        if (obj == null || obj2 == null) {
            return false;
        }
        synchronized (this.b) {
            zRemove = super.remove(obj, obj2);
        }
        return zRemove;
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collectionValues;
        synchronized (this.b) {
            collectionValues = super.values();
        }
        return collectionValues;
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Object objRemove;
        synchronized (this.b) {
            objRemove = super.remove(obj);
        }
        return objRemove;
    }
}
