package androidx.core.text;

import android.text.Spannable;
import android.text.SpannableString;
import defpackage.y74;

/* JADX INFO: loaded from: classes2.dex */
public final class SpannableStringKt {
    public static final void clearSpans(Spannable spannable) {
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            spannable.removeSpan(obj);
        }
    }

    public static final void set(Spannable spannable, y74 y74Var, Object obj) {
        spannable.setSpan(obj, y74Var.b, y74Var.c, 17);
    }

    public static final Spannable toSpannable(CharSequence charSequence) {
        return SpannableString.valueOf(charSequence);
    }

    public static final void set(Spannable spannable, int i, int i2, Object obj) {
        spannable.setSpan(obj, i, i2, 17);
    }
}
