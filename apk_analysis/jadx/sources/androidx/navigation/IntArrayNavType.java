package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.aq5;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.og;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class IntArrayNavType extends CollectionNavType<int[]> {
    public IntArrayNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public int[] get(Bundle bundle, String str) {
        Bundle bundleD = og.d(bundle, str, bundle);
        if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
            return null;
        }
        return SavedStateReader.m9402getIntArrayimpl(bundleD, str);
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return "integer[]";
    }

    @Override // androidx.navigation.NavType
    public int[] parseValue(String str) {
        str.getClass();
        return new int[]{NavType.IntType.parseValue(str).intValue()};
    }

    @Override // androidx.navigation.NavType
    public void put(Bundle bundle, String str, int[] iArr) {
        bundle.getClass();
        str.getClass();
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
        if (iArr != null) {
            SavedStateWriter.m9474putIntArrayimpl(bundleM9456constructorimpl, str, iArr);
        } else {
            SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
        }
    }

    @Override // androidx.navigation.CollectionNavType
    public List<String> serializeAsValues(int[] iArr) {
        if (iArr == null) {
            return kx2.b;
        }
        List<Integer> listF0 = yr.f0(iArr);
        ArrayList arrayList = new ArrayList(kn1.q(listF0, 10));
        Iterator<T> it = listF0.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).intValue()));
        }
        return arrayList;
    }

    @Override // androidx.navigation.NavType
    public boolean valueEquals(int[] iArr, int[] iArr2) {
        return aq5.d(iArr != null ? aq5.B(iArr) : null, iArr2 != null ? aq5.B(iArr2) : null);
    }

    @Override // androidx.navigation.CollectionNavType
    public int[] emptyCollection() {
        return new int[0];
    }

    @Override // androidx.navigation.NavType
    public int[] parseValue(String str, int[] iArr) {
        str.getClass();
        int[] value = parseValue(str);
        return iArr != null ? aq5.y(iArr, value) : value;
    }
}
