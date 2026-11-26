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
public final class BoolListNavType extends CollectionNavType<List<? extends Boolean>> {
    public BoolListNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public List<Boolean> get(Bundle bundle, String str) {
        Bundle bundleD = og.d(bundle, str, bundle);
        if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
            return null;
        }
        return yr.i0(SavedStateReader.m9380getBooleanArrayimpl(bundleD, str));
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return "List<Boolean>";
    }

    @Override // androidx.navigation.NavType
    public List<Boolean> parseValue(String str, List<Boolean> list) {
        str.getClass();
        if (list == null) {
            return parseValue(str);
        }
        return qn1.h0(parseValue(str), list);
    }

    @Override // androidx.navigation.NavType
    public void put(Bundle bundle, String str, List<Boolean> list) {
        bundle.getClass();
        str.getClass();
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
        if (list != null) {
            SavedStateWriter.m9463putBooleanArrayimpl(bundleM9456constructorimpl, str, qn1.p0(list));
        } else {
            SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
        }
    }

    /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
    public List<String> serializeAsValues2(List<Boolean> list) {
        if (list == null) {
            return kx2.b;
        }
        List<Boolean> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Boolean) it.next()).booleanValue()));
        }
        return arrayList;
    }

    @Override // androidx.navigation.NavType
    public boolean valueEquals(List<Boolean> list, List<Boolean> list2) {
        return aq5.d(list != null ? (Boolean[]) list.toArray(new Boolean[0]) : null, list2 != null ? (Boolean[]) list2.toArray(new Boolean[0]) : null);
    }

    @Override // androidx.navigation.CollectionNavType
    public List<? extends Boolean> emptyCollection() {
        return kx2.b;
    }

    @Override // androidx.navigation.NavType
    public List<Boolean> parseValue(String str) {
        str.getClass();
        return u96.h(NavType.BoolType.parseValue(str));
    }

    @Override // androidx.navigation.CollectionNavType
    public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends Boolean> list) {
        return serializeAsValues2((List<Boolean>) list);
    }
}
