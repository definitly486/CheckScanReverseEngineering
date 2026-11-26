package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import defpackage.f1;
import java.util.Map;
import java.util.Map.Entry;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractMapBuilderEntries<E extends Map.Entry<? extends K, ? extends V>, K, V> extends f1<E> {
    public static final int $stable = 8;

    public final boolean contains(E e) {
        if ((e != null ? e : null) == null) {
            return false;
        }
        return containsEntry(e);
    }

    public abstract boolean containsEntry(Map.Entry<? extends K, ? extends V> entry);

    public final boolean remove(E e) {
        if ((e != null ? e : null) == null) {
            return false;
        }
        return removeEntry(e);
    }

    public abstract boolean removeEntry(Map.Entry<? extends K, ? extends V> entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return contains((Map.Entry) obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return remove((Map.Entry) obj);
        }
        return false;
    }
}
