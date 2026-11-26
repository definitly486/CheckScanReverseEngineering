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
public final class StringListNavType extends CollectionNavType<List<? extends String>> {
    public StringListNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public List<String> get(Bundle bundle, String str) {
        Bundle bundleD = og.d(bundle, str, bundle);
        if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
            return null;
        }
        return yr.h0(SavedStateReader.m9442getStringArrayimpl(bundleD, str));
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return "List<String>";
    }

    @Override // androidx.navigation.NavType
    public List<String> parseValue(String str, List<String> list) {
        str.getClass();
        if (list == null) {
            return parseValue(str);
        }
        return qn1.h0(parseValue(str), list);
    }

    @Override // androidx.navigation.NavType
    public void put(Bundle bundle, String str, List<String> list) {
        bundle.getClass();
        str.getClass();
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
        if (list != null) {
            SavedStateWriter.m9490putStringArrayimpl(bundleM9456constructorimpl, str, (String[]) list.toArray(new String[0]));
        } else {
            SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
        }
    }

    /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
    public List<String> serializeAsValues2(List<String> list) {
        if (list == null) {
            return kx2.b;
        }
        List<String> list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(NavUriUtils.encode$default(NavUriUtils.INSTANCE, (String) it.next(), null, 2, null));
        }
        return arrayList;
    }

    @Override // androidx.navigation.NavType
    public boolean valueEquals(List<String> list, List<String> list2) {
        return aq5.d(list != null ? (String[]) list.toArray(new String[0]) : null, list2 != null ? (String[]) list2.toArray(new String[0]) : null);
    }

    @Override // androidx.navigation.CollectionNavType
    public List<? extends String> emptyCollection() {
        return kx2.b;
    }

    @Override // androidx.navigation.NavType
    public List<String> parseValue(String str) {
        str.getClass();
        return u96.h(str);
    }

    @Override // androidx.navigation.CollectionNavType
    public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends String> list) {
        return serializeAsValues2((List<String>) list);
    }
}
