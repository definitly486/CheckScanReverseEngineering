package defpackage;

import com.google.common.collect.g;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class hg5<K, V> extends AbstractCollection<Map.Entry<K, V>> {
    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        g.this.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            Collection<V> collection = g.this.b().get(key);
            if (collection != null && collection.contains(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return g.this.remove(entry.getKey(), entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return g.this.size();
    }
}
