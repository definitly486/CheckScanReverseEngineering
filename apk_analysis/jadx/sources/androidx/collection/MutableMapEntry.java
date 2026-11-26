package androidx.collection;

import defpackage.ue4;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class MutableMapEntry<K, V> implements Map.Entry<K, V>, ue4.a {
    private final int index;
    private final Object[] keys;
    private final Object[] values;

    public MutableMapEntry(Object[] objArr, Object[] objArr2, int i) {
        objArr.getClass();
        objArr2.getClass();
        this.keys = objArr;
        this.values = objArr2;
        this.index = i;
    }

    public static /* synthetic */ void getKey$annotations() {
    }

    public static /* synthetic */ void getValue$annotations() {
    }

    public final int getIndex() {
        return this.index;
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return (K) this.keys[this.index];
    }

    public final Object[] getKeys() {
        return this.keys;
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return (V) this.values[this.index];
    }

    public final Object[] getValues() {
        return this.values;
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        Object[] objArr = this.values;
        int i = this.index;
        V v2 = (V) objArr[i];
        objArr[i] = v;
        return v2;
    }
}
