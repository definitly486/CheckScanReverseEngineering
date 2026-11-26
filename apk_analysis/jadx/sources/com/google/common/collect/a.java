package com.google.common.collect;

import defpackage.lr4;
import defpackage.xg;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a<K, V> extends c<K, V> implements lr4<K, V> {
    @Override // defpackage.eg5
    public final List<V> get(K k) {
        Collection<V> collectionM = this.f.get(k);
        if (collectionM == null) {
            collectionM = m();
        }
        List list = (List) collectionM;
        return list instanceof RandomAccess ? new c.g(k, list, null) : new c.k(k, list, null);
    }

    @Override // defpackage.eg5
    public final boolean put(K k, V v) {
        Collection<V> collection = this.f.get(k);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.g++;
            return true;
        }
        Collection<V> collectionM = m();
        if (!collectionM.add(v)) {
            xg.d("New Collection violated the Collection spec");
            return false;
        }
        this.g++;
        this.f.put(k, collectionM);
        return true;
    }
}
