package androidx.media3.common.util;

import android.os.Bundle;
import android.util.SparseArray;
import com.google.common.collect.j;
import com.google.common.collect.l;
import com.google.common.collect.x;
import defpackage.lm3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class BundleCollectionUtil {
    private BundleCollectionUtil() {
    }

    public static HashMap<String, String> bundleToStringHashMap(Bundle bundle) {
        HashMap<String, String> map = new HashMap<>();
        if (bundle != Bundle.EMPTY) {
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (string != null) {
                    map.put(str, string);
                }
            }
        }
        return map;
    }

    public static l<String, String> bundleToStringImmutableMap(Bundle bundle) {
        return bundle == Bundle.EMPTY ? x.h : l.b(bundleToStringHashMap(bundle));
    }

    public static void ensureClassLoader(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) Util.castNonNull(BundleCollectionUtil.class.getClassLoader()));
        }
    }

    public static <T> j<T> fromBundleList(lm3<Bundle, T> lm3Var, List<Bundle> list) {
        j.b bVar = j.c;
        j.a aVar = new j.a();
        for (int i = 0; i < list.size(); i++) {
            Bundle bundle = list.get(i);
            bundle.getClass();
            aVar.c(lm3Var.apply(bundle));
        }
        return aVar.g();
    }

    public static <T> SparseArray<T> fromBundleSparseArray(lm3<Bundle, T> lm3Var, SparseArray<Bundle> sparseArray) {
        SparseArray<T> sparseArray2 = new SparseArray<>(sparseArray.size());
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), lm3Var.apply(sparseArray.valueAt(i)));
        }
        return sparseArray2;
    }

    public static Bundle getBundleWithDefault(Bundle bundle, String str, Bundle bundle2) {
        Bundle bundle3 = bundle.getBundle(str);
        return bundle3 != null ? bundle3 : bundle2;
    }

    public static ArrayList<Integer> getIntegerArrayListWithDefault(Bundle bundle, String str, ArrayList<Integer> arrayList) {
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(str);
        return integerArrayList != null ? integerArrayList : arrayList;
    }

    public static Bundle stringMapToBundle(Map<String, String> map) {
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    public static <T> ArrayList<Bundle> toBundleArrayList(Collection<T> collection, lm3<T, Bundle> lm3Var) {
        ArrayList<Bundle> arrayList = new ArrayList<>(collection.size());
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(lm3Var.apply(it.next()));
        }
        return arrayList;
    }

    public static <T> j<Bundle> toBundleList(List<T> list, lm3<T, Bundle> lm3Var) {
        j.b bVar = j.c;
        j.a aVar = new j.a();
        for (int i = 0; i < list.size(); i++) {
            aVar.c(lm3Var.apply(list.get(i)));
        }
        return aVar.g();
    }

    public static <T> SparseArray<Bundle> toBundleSparseArray(SparseArray<T> sparseArray, lm3<T, Bundle> lm3Var) {
        SparseArray<Bundle> sparseArray2 = new SparseArray<>(sparseArray.size());
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), lm3Var.apply(sparseArray.valueAt(i)));
        }
        return sparseArray2;
    }
}
