package androidx.navigation;

import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.og;

/* JADX INFO: loaded from: classes3.dex */
public final class StringNavType extends NavType<String> {
    public StringNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public String get(Bundle bundle, String str) {
        Bundle bundleD = og.d(bundle, str, bundle);
        if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
            return null;
        }
        return SavedStateReader.m9441getStringimpl(bundleD, str);
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return TypedValues.Custom.S_STRING;
    }

    @Override // androidx.navigation.NavType
    public String parseValue(String str) {
        str.getClass();
        if (str.equals("null")) {
            return null;
        }
        return str;
    }

    @Override // androidx.navigation.NavType
    public void put(Bundle bundle, String str, String str2) {
        bundle.getClass();
        str.getClass();
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
        if (str2 != null) {
            SavedStateWriter.m9489putStringimpl(bundleM9456constructorimpl, str, str2);
        } else {
            SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
        }
    }

    @Override // androidx.navigation.NavType
    public String serializeAsValue(String str) {
        String strEncode$default;
        return (str == null || (strEncode$default = NavUriUtils.encode$default(NavUriUtils.INSTANCE, str, null, 2, null)) == null) ? "null" : strEncode$default;
    }
}
