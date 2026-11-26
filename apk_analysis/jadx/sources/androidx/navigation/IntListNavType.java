package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.aq5;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.og;
import defpackage.qn1;
import defpackage.u96;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class IntListNavType extends CollectionNavType<List<? extends Integer>> {
    public IntListNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public List<Integer> get(Bundle bundle, String str) {
        Bundle bundleD = og.d(bundle, str, bundle);
        if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
            return null;
        }
        return yr.f0(SavedStateReader.m9402getIntArrayimpl(bundleD, str));
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return "List<Int>";
    }

    @Override // androidx.navigation.NavType
    public List<Integer> parseValue(String str, List<Integer> list) {
        str.getClass();
        if (list == null) {
            return parseValue(str);
        }
        return qn1.h0(parseValue(str), list);
    }

    @Override // androidx.navigation.NavType
    public void put(Bundle bundle, String str, List<Integer> list) {
        bundle.getClass();
        str.getClass();
        if (list != null) {
            SavedStateWriter.m9474putIntArrayimpl(SavedStateWriter.m9456constructorimpl(bundle), str, qn1.s0(list));
        }
    }

    /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
    public List<String> serializeAsValues2(List<Integer> list) {
        if (list == null) {
            return kx2.b;
        }
        List<Integer> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).intValue()));
        }
        return arrayList;
    }

    @Override // androidx.navigation.NavType
    public boolean valueEquals(List<Integer> list, List<Integer> list2) {
        return aq5.d(list != null ? (Integer[]) list.toArray(new Integer[0]) : null, list2 != null ? (Integer[]) list2.toArray(new Integer[0]) : null);
    }

    @Override // androidx.navigation.CollectionNavType
    public List<? extends Integer> emptyCollection() {
        return kx2.b;
    }

    @Override // androidx.navigation.NavType
    public List<Integer> parseValue(String str) {
        str.getClass();
        return u96.h(NavType.IntType.parseValue(str));
    }

    @Override // androidx.navigation.CollectionNavType
    public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends Integer> list) {
        return serializeAsValues2((List<Integer>) list);
    }
}
