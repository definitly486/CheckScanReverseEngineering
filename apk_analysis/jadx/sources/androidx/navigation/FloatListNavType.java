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
public final class FloatListNavType extends CollectionNavType<List<? extends Float>> {
    public FloatListNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public List<Float> get(Bundle bundle, String str) {
        Bundle bundleD = og.d(bundle, str, bundle);
        if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
            return null;
        }
        return yr.e0(SavedStateReader.m9398getFloatArrayimpl(bundleD, str));
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return "List<Float>";
    }

    @Override // androidx.navigation.NavType
    public List<Float> parseValue(String str, List<Float> list) {
        str.getClass();
        if (list == null) {
            return parseValue(str);
        }
        return qn1.h0(parseValue(str), list);
    }

    @Override // androidx.navigation.NavType
    public void put(Bundle bundle, String str, List<Float> list) {
        bundle.getClass();
        str.getClass();
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
        if (list != null) {
            SavedStateWriter.m9472putFloatArrayimpl(bundleM9456constructorimpl, str, qn1.r0(list));
        } else {
            SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
        }
    }

    /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
    public List<String> serializeAsValues2(List<Float> list) {
        if (list == null) {
            return kx2.b;
        }
        List<Float> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).floatValue()));
        }
        return arrayList;
    }

    @Override // androidx.navigation.NavType
    public boolean valueEquals(List<Float> list, List<Float> list2) {
        return aq5.d(list != null ? (Float[]) list.toArray(new Float[0]) : null, list2 != null ? (Float[]) list2.toArray(new Float[0]) : null);
    }

    @Override // androidx.navigation.CollectionNavType
    public List<? extends Float> emptyCollection() {
        return kx2.b;
    }

    @Override // androidx.navigation.NavType
    public List<Float> parseValue(String str) {
        str.getClass();
        return u96.h(NavType.FloatType.parseValue(str));
    }

    @Override // androidx.navigation.CollectionNavType
    public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends Float> list) {
        return serializeAsValues2((List<Float>) list);
    }
}
