package androidx.navigation;

import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.ga1;
import defpackage.ra8;

/* JADX INFO: loaded from: classes3.dex */
public final class IntNavType extends NavType<Integer> {
    public IntNavType() {
        super(false);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.navigation.NavType
    public Integer get(Bundle bundle, String str) {
        bundle.getClass();
        str.getClass();
        return Integer.valueOf(SavedStateReader.m9401getIntimpl(SavedStateReader.m9370constructorimpl(bundle), str));
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return TypedValues.Custom.S_INT;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.navigation.NavType
    public Integer parseValue(String str) {
        int i;
        str.getClass();
        if (ra8.C(str, "0x", false)) {
            String strSubstring = str.substring(2);
            ga1.b(16);
            i = Integer.parseInt(strSubstring, 16);
        } else {
            i = Integer.parseInt(str);
        }
        return Integer.valueOf(i);
    }

    public void put(Bundle bundle, String str, int i) {
        bundle.getClass();
        str.getClass();
        SavedStateWriter.m9473putIntimpl(SavedStateWriter.m9456constructorimpl(bundle), str, i);
    }

    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Integer num) {
        put(bundle, str, num.intValue());
    }
}
