package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.PlatformStringDelegate;
import androidx.compose.ui.text.intl.Locale;
import defpackage.ga1;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidStringDelegate implements PlatformStringDelegate {
    public static final int $stable = 0;

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    public String capitalize(String str, Locale locale) {
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char cCharAt = str.charAt(0);
        sb.append((Object) (Character.isLowerCase(cCharAt) ? ga1.f(cCharAt, locale.getPlatformLocale()) : String.valueOf(cCharAt)));
        sb.append(str.substring(1));
        return sb.toString();
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    public String decapitalize(String str, Locale locale) {
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char cCharAt = str.charAt(0);
        java.util.Locale platformLocale = locale.getPlatformLocale();
        platformLocale.getClass();
        String strValueOf = String.valueOf(cCharAt);
        strValueOf.getClass();
        String lowerCase = strValueOf.toLowerCase(platformLocale);
        lowerCase.getClass();
        sb.append((Object) lowerCase);
        sb.append(str.substring(1));
        return sb.toString();
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    public String toLowerCase(String str, Locale locale) {
        String lowerCase = str.toLowerCase(locale.getPlatformLocale());
        lowerCase.getClass();
        return lowerCase;
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    public String toUpperCase(String str, Locale locale) {
        String upperCase = str.toUpperCase(locale.getPlatformLocale());
        upperCase.getClass();
        return upperCase;
    }
}
