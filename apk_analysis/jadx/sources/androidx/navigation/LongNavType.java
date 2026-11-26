package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.ga1;
import defpackage.ra8;
import defpackage.rg;

/* JADX INFO: loaded from: classes3.dex */
public final class LongNavType extends NavType<Long> {
    public LongNavType() {
        super(false);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.navigation.NavType
    public Long get(Bundle bundle, String str) {
        bundle.getClass();
        str.getClass();
        return Long.valueOf(SavedStateReader.m9411getLongimpl(SavedStateReader.m9370constructorimpl(bundle), str));
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return "long";
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.navigation.NavType
    public Long parseValue(String str) {
        long j;
        str.getClass();
        String strF = ra8.u(str, "L", false) ? rg.f(1, 0, str) : str;
        if (ra8.C(str, "0x", false)) {
            String strSubstring = strF.substring(2);
            ga1.b(16);
            j = Long.parseLong(strSubstring, 16);
        } else {
            j = Long.parseLong(strF);
        }
        return Long.valueOf(j);
    }

    public void put(Bundle bundle, String str, long j) {
        bundle.getClass();
        str.getClass();
        SavedStateWriter.m9477putLongimpl(SavedStateWriter.m9456constructorimpl(bundle), str, j);
    }

    @Override // androidx.navigation.NavType
    public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Long l) {
        put(bundle, str, l.longValue());
    }
}
