package androidx.compose.foundation.text.modifiers;

import defpackage.ra8;

/* JADX INFO: loaded from: classes.dex */
public final class MinLinesConstrainerKt {
    private static final int DefaultWidthCharCount = 10;
    private static final String EmptyTextReplacement;
    private static final String TwoLineTextReplacement;

    static {
        String strX = ra8.x(10, "H");
        EmptyTextReplacement = strX;
        TwoLineTextReplacement = strX + '\n' + strX;
    }
}
