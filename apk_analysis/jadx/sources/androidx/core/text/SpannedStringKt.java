package androidx.core.text;

import android.text.Spanned;
import android.text.SpannedString;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class SpannedStringKt {
    public static final <T> T[] getSpans(Spanned spanned, int i, int i2) {
        aa4.i();
        throw null;
    }

    public static Object[] getSpans$default(Spanned spanned, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            spanned.length();
        }
        aa4.i();
        throw null;
    }

    public static final Spanned toSpanned(CharSequence charSequence) {
        return SpannedString.valueOf(charSequence);
    }
}
