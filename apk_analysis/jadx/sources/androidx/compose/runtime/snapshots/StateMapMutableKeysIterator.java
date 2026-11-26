package androidx.compose.runtime.snapshots;

import defpackage.re4;
import defpackage.ud;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class StateMapMutableKeysIterator<K, V> extends StateMapMutableIterator<K, V> implements Iterator<K>, re4 {
    public StateMapMutableKeysIterator(SnapshotStateMap<K, V> snapshotStateMap, Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
        super(snapshotStateMap, it);
    }

    @Override // java.util.Iterator
    public K next() {
        Map.Entry<K, V> next = getNext();
        if (next != null) {
            advance();
            return next.getKey();
        }
        ud.g();
        return null;
    }
}
