package io.appmetrica.analytics.coreutils.internal.collection;

import android.os.Bundle;
import defpackage.kn1;
import defpackage.m05;
import defpackage.n05;
import defpackage.qn1;
import defpackage.ra8;
import defpackage.yr;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes5.dex */
public final class CollectionUtils {
    public static final CollectionUtils INSTANCE = new CollectionUtils();

    private CollectionUtils() {
    }

    public static final boolean areCollectionsEqual(Collection<? extends Object> collection, Collection<? extends Object> collection2) {
        HashSet hashSet;
        if (collection == null && collection2 == null) {
            return true;
        }
        if (collection == null || collection2 == null || collection.size() != collection2.size()) {
            return false;
        }
        if (collection instanceof HashSet) {
            hashSet = (HashSet) collection;
            collection = collection2;
        } else if (collection2 instanceof HashSet) {
            hashSet = (HashSet) collection2;
        } else {
            HashSet hashSet2 = new HashSet(collection);
            collection = collection2;
            hashSet = hashSet2;
        }
        Iterator<? extends Object> it = collection.iterator();
        while (it.hasNext()) {
            if (!hashSet.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static final <T> List<T> arrayListCopyOfNullableCollection(Collection<? extends T> collection) {
        if (collection != null) {
            return qn1.t0(collection);
        }
        return null;
    }

    public static final Map<String, byte[]> bundleToMap(Bundle bundle) {
        HashMap map = new HashMap();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                byte[] byteArray = bundle.getByteArray(str);
                if (byteArray != null) {
                    map.put(str, byteArray);
                }
            }
        }
        return map;
    }

    public static final <T> Map<String, T> convertMapKeysToLowerCase(Map<String, ? extends T> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(((String) entry.getKey()).toLowerCase(Locale.getDefault()), entry.getValue());
        }
        return linkedHashMap;
    }

    public static final <K, V> Map<K, V> copyOf(Map<K, V> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        return new HashMap(map);
    }

    public static final List<String> createSortedListWithoutRepetitions(String... strArr) {
        String[] strArr2 = strArr;
        strArr2.getClass();
        TreeSet treeSet = new TreeSet();
        yr.c0(strArr2, treeSet);
        return unmodifiableListCopy(treeSet);
    }

    public static final <T> T getFirstOrNull(List<? extends T> list) {
        if (list != null) {
            return (T) qn1.V(list);
        }
        return null;
    }

    public static final <T> T getFromMapIgnoreCase(Map<String, ? extends T> map, String str) {
        T next;
        Iterator<T> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            Map.Entry entry = (Map.Entry) next;
            CharSequence charSequence = (CharSequence) entry.getKey();
            if (charSequence != null && charSequence.length() != 0 && ra8.v((String) entry.getKey(), str, true)) {
                break;
            }
        }
        Map.Entry entry2 = (Map.Entry) next;
        if (entry2 != null) {
            return (T) entry2.getValue();
        }
        return null;
    }

    public static final <K, V> List<Map.Entry<K, V>> getListFromMap(Map<K, ? extends V> map) {
        if (map == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(map.size());
        Iterator<Map.Entry<K, ? extends V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(new AbstractMap.SimpleEntry(it.next()));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> getMapFromList(List<? extends Map.Entry<? extends K, ? extends V>> list) {
        if (list == null) {
            return new LinkedHashMap();
        }
        int iB = m05.b(kn1.q(list, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), entry.getValue());
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> getMapFromListOrNull(List<? extends Map.Entry<? extends K, ? extends V>> list) {
        if (list == null) {
            return null;
        }
        int iB = m05.b(kn1.q(list, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), entry.getValue());
        }
        return linkedHashMap;
    }

    public static final <K, V> V getOrDefault(Map<K, ? extends V> map, K k, V v) {
        V v2 = map.get(k);
        return v2 == null ? v : v2;
    }

    public static final Set<Integer> hashSetFromIntArray(int[] iArr) {
        iArr.getClass();
        HashSet hashSet = new HashSet(m05.b(iArr.length));
        yr.b0(iArr, hashSet);
        return hashSet;
    }

    public static final boolean isNullOrEmpty(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static final <K, V> Map<K, V> mapCopyOfNullableMap(Map<K, ? extends V> map) {
        if (map != null) {
            return n05.l(map);
        }
        return null;
    }

    public static final Bundle mapToBundle(Map<String, byte[]> map) {
        Bundle bundle = new Bundle(map.size());
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            bundle.putByteArray(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    public static final <T> Set<T> merge(Set<T> set, Set<? extends T> set2) {
        set.addAll(set2);
        return set;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> nullIfEmptyList(List<? extends T> list) {
        if (list == 0 || list.isEmpty()) {
            return null;
        }
        return list;
    }

    public static final <K, V> void putOpt(Map<K, V> map, K k, V v) {
        if (k == null || v == null) {
            return;
        }
        map.put(k, v);
    }

    public static final List<Integer> toIntList(int[] iArr) {
        return yr.f0(iArr);
    }

    public static final <T> List<T> unmodifiableListCopy(Collection<? extends T> collection) {
        return Collections.unmodifiableList(new ArrayList(collection));
    }

    public static final <K, V> Map<K, V> unmodifiableMapCopy(Map<K, ? extends V> map) {
        return Collections.unmodifiableMap(new HashMap(map));
    }

    public static final <K, V> Map<K, V> unmodifiableSameOrderMapCopy(Map<K, ? extends V> map) {
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static final <T> Set<T> unmodifiableSetOf(T... tArr) {
        tArr.getClass();
        HashSet hashSet = new HashSet(m05.b(tArr.length));
        yr.c0(tArr, hashSet);
        return Collections.unmodifiableSet(hashSet);
    }
}
