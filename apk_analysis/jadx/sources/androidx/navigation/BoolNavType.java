package androidx.navigation;

import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import com.tapjoy.TJAdUnitConstants;
import defpackage.fg;
import defpackage.og;

/* JADX INFO: loaded from: classes3.dex */
public final class BoolNavType extends NavType<Boolean> {
    public BoolNavType() {
        super(false);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.navigation.NavType
    public Boolean get(Bundle bundle, String str) {
        Bundle bundleD = og.d(bundle, str, bundle);
        if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
            return null;
        }
        return Boolean.valueOf(SavedStateReader.m9379getBooleanimpl(bundleD, str));
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return TypedValues.Custom.S_BOOLEAN;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.navigation.NavType
    public Boolean parseValue(String str) {
        boolean z;
        str.getClass();
        if (str.equals(TJAdUnitConstants.String.TRUE)) {
            z = true;
        } else {
            if (!str.equals(TJAdUnitConstants.String.FALSE)) {
                fg.c("A boolean NavType only accepts \"true\" or \"false\" values.");
                return null;
            }
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public void put(Bundle bundle, String str, boolean z) {
        bundle.getClass();
        str.getClass();
        SavedStateWriter.m9462putBooleanimpl(SavedStateWriter.m9456constructorimpl(bundle), str, z);
    }

    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Boolean bool) {
        put(bundle, str, bool.booleanValue());
    }
}
