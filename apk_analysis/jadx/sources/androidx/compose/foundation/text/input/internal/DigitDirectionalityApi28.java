package androidx.compose.foundation.text.input.internal;

import android.icu.text.DecimalFormatSymbols;
import androidx.compose.ui.text.intl.Locale;

/* JADX INFO: loaded from: classes.dex */
final class DigitDirectionalityApi28 {
    public static final DigitDirectionalityApi28 INSTANCE = new DigitDirectionalityApi28();

    private DigitDirectionalityApi28() {
    }

    public final byte resolve(Locale locale) {
        return Character.getDirectionality(CodepointHelpers_jvmAndAndroidKt.codePointAt(DecimalFormatSymbols.getInstance(locale.getPlatformLocale()).getDigitStrings()[0], 0));
    }
}
