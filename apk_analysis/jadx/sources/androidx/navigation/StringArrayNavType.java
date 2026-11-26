package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.aq5;
import defpackage.kx2;
import defpackage.og;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class StringArrayNavType extends CollectionNavType<String[]> {
    public StringArrayNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public String[] get(Bundle bundle, String str) {
        Bundle bundleD = og.d(bundle, str, bundle);
        if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
            return null;
        }
        return SavedStateReader.m9442getStringArrayimpl(bundleD, str);
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return "string[]";
    }

    @Override // androidx.navigation.NavType
    public String[] parseValue(String str, String[] strArr) {
        str.getClass();
        String[] value = parseValue(str);
        return strArr != null ? (String[]) aq5.A(strArr, value) : value;
    }

    @Override // androidx.navigation.NavType
    public void put(Bundle bundle, String str, String[] strArr) {
        bundle.getClass();
        str.getClass();
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
        if (strArr != null) {
            SavedStateWriter.m9490putStringArrayimpl(bundleM9456constructorimpl, str, strArr);
        } else {
            SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
        }
    }

    @Override // androidx.navigation.CollectionNavType
    public List<String> serializeAsValues(String[] strArr) {
        if (strArr == null) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(NavUriUtils.encode$default(NavUriUtils.INSTANCE, str, null, 2, null));
        }
        return arrayList;
    }

    @Override // androidx.navigation.CollectionNavType
    public String[] emptyCollection() {
        return new String[0];
    }

    @Override // androidx.navigation.NavType
    public boolean valueEquals(String[] strArr, String[] strArr2) {
        return aq5.d(strArr, strArr2);
    }

    @Override // androidx.navigation.NavType
    public String[] parseValue(String str) {
        str.getClass();
        return new String[]{str};
    }
}
