package androidx.compose.foundation.text.input.internal;

import android.icu.text.DecimalFormatSymbols;
import androidx.compose.ui.text.intl.Locale;

/* JADX INFO: loaded from: classes.dex */
final class DigitDirectionalityApi24 {
    public static final DigitDirectionalityApi24 INSTANCE = new DigitDirectionalityApi24();

    private DigitDirectionalityApi24() {
    }

    public final byte resolve(Locale locale) {
        return Character.getDirectionality(DecimalFormatSymbols.getInstance(locale.getPlatformLocale()).getZeroDigit());
    }
}
