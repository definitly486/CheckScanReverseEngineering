package androidx.compose.foundation.text.input.internal;

import android.os.Build;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.style.TextDirection;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldLayoutStateCache_androidKt {
    public static final int resolveTextDirectionForKeyboardTypePhone(Locale locale) {
        byte bResolve = Build.VERSION.SDK_INT >= 28 ? DigitDirectionalityApi28.INSTANCE.resolve(locale) : DigitDirectionalityApi24.INSTANCE.resolve(locale);
        return (bResolve == 1 || bResolve == 2) ? TextDirection.Companion.m8941getRtls_7Xco() : TextDirection.Companion.m8940getLtrs_7Xco();
    }
}
