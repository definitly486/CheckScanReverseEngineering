package androidx.compose.runtime.snapshots;

import defpackage.j59;
import defpackage.ll3;
import defpackage.ln;
import defpackage.ud;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
abstract class StateMapMutableIterator<K, V> {
    private Map.Entry<? extends K, ? extends V> current;
    private final Iterator<Map.Entry<K, V>> iterator;
    private final SnapshotStateMap<K, V> map;
    private int modification;
    private Map.Entry<? extends K, ? extends V> next;

    /* JADX WARN: Multi-variable type inference failed */
    public StateMapMutableIterator(SnapshotStateMap<K, V> snapshotStateMap, Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
        this.map = snapshotStateMap;
        this.iterator = it;
        this.modification = snapshotStateMap.getModification$runtime();
        advance();
    }

    public final void advance() {
        this.current = this.next;
        this.next = this.iterator.hasNext() ? this.iterator.next() : null;
    }

    public final Map.Entry<K, V> getCurrent() {
        return this.current;
    }

    public final Iterator<Map.Entry<K, V>> getIterator() {
        return this.iterator;
    }

    public final SnapshotStateMap<K, V> getMap() {
        return this.map;
    }

    public final int getModification() {
        return this.modification;
    }

    public final Map.Entry<K, V> getNext() {
        return this.next;
    }

    public final boolean hasNext() {
        return this.next != null;
    }

    public final <T> T modify(ll3<? extends T> ll3Var) {
        if (getMap().getModification$runtime() != this.modification) {
            ln.e();
            return null;
        }
        T tInvoke = ll3Var.invoke();
        this.modification = getMap().getModification$runtime();
        return tInvoke;
    }

    public final void remove() {
        if (getMap().getModification$runtime() != this.modification) {
            ln.e();
            return;
        }
        Map.Entry<? extends K, ? extends V> entry = this.current;
        if (entry == null) {
            ud.g();
            return;
        }
        this.map.remove(entry.getKey());
        this.current = null;
        j59 j59Var = j59.a;
        this.modification = getMap().getModification$runtime();
    }

    public final void setCurrent(Map.Entry<? extends K, ? extends V> entry) {
        this.current = entry;
    }

    public final void setModification(int i) {
        this.modification = i;
    }

    public final void setNext(Map.Entry<? extends K, ? extends V> entry) {
        this.next = entry;
    }
}
