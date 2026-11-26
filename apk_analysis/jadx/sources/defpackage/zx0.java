package defpackage;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;

/* JADX INFO: loaded from: classes3.dex */
public final class zx0<K, V> extends ArrayMap<K, V> {
    public int b;

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final void clear() {
        this.b = 0;
        super.clear();
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        int iHashCode = super.hashCode();
        this.b = iHashCode;
        return iHashCode;
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final V put(K k, V v) {
        this.b = 0;
        return (V) super.put(k, v);
    }

    @Override // androidx.collection.SimpleArrayMap
    public final void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this.b = 0;
        super.putAll(simpleArrayMap);
    }

    @Override // androidx.collection.SimpleArrayMap
    public final V removeAt(int i) {
        this.b = 0;
        return (V) super.removeAt(i);
    }

    @Override // androidx.collection.SimpleArrayMap
    public final V setValueAt(int i, V v) {
        this.b = 0;
        return (V) super.setValueAt(i, v);
    }
}
