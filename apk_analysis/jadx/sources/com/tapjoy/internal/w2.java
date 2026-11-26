package com.tapjoy.internal;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class w2 extends AbstractMap {
    public final HashMap a = new HashMap();
    public final i0 b = new i0();

    public final void a() {
        while (true) {
            h0 h0VarA = this.b.a();
            if (h0VarA == null) {
                return;
            } else {
                this.a.remove(h0VarA.a);
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.a.clear();
        while (this.b.a() != null) {
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        a();
        return this.a.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        a();
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            if (obj.equals(((h0) it.next()).get())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        a();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        a();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        a();
        h0 h0Var = (h0) this.a.get(obj);
        if (h0Var != null) {
            return h0Var.get();
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        a();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        a();
        return this.a.keySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        a();
        HashMap map = this.a;
        i0 i0Var = this.b;
        i0Var.getClass();
        h0 h0Var = (h0) map.put(obj, new h0(obj, obj2, i0Var));
        if (h0Var != null) {
            return h0Var.get();
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        a();
        h0 h0Var = (h0) this.a.remove(obj);
        if (h0Var != null) {
            return h0Var.get();
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        a();
        return this.a.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        a();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        a();
        throw new UnsupportedOperationException();
    }
}
