package androidx.compose.ui.autofill;

import defpackage.ua8;

/* JADX INFO: loaded from: classes2.dex */
public final class AutofillUtils_androidKt {
    public static final int MAX_AUTOFILL_TEXT_LENGTH = 5000;

    /* JADX INFO: Access modifiers changed from: private */
    public static final String trimToSafeLength(String str) {
        if (str.length() < 5000) {
            return str;
        }
        return (Character.isHighSurrogate(str.charAt(4999)) && Character.isLowSurrogate(str.charAt(MAX_AUTOFILL_TEXT_LENGTH))) ? ua8.l0(4999, str) : ua8.l0(MAX_AUTOFILL_TEXT_LENGTH, str);
    }
}
