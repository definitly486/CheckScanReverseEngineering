package androidx.compose.material3;

import java.text.NumberFormat;
import java.util.Locale;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class CalendarLocale_jvmKt {
    private static final WeakHashMap<String, NumberFormat> cachedFormatters = new WeakHashMap<>();

    private static final NumberFormat getCachedDateTimeFormatter(int i, int i2, boolean z, Locale locale) {
        String str = i + '.' + i2 + '.' + z + '.' + locale.toLanguageTag();
        WeakHashMap<String, NumberFormat> weakHashMap = cachedFormatters;
        NumberFormat integerInstance = weakHashMap.get(str);
        if (integerInstance == null) {
            integerInstance = NumberFormat.getIntegerInstance(locale);
            integerInstance.setGroupingUsed(z);
            integerInstance.setMinimumIntegerDigits(i);
            integerInstance.setMaximumIntegerDigits(i2);
            weakHashMap.put(str, integerInstance);
        }
        return integerInstance;
    }

    public static final String toLocalString(int i, int i2, int i3, boolean z, Locale locale) {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        return getCachedDateTimeFormatter(i2, i3, z, locale).format(Integer.valueOf(i));
    }

    public static /* synthetic */ String toLocalString$default(int i, int i2, int i3, boolean z, Locale locale, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 1;
        }
        if ((i4 & 2) != 0) {
            i3 = 40;
        }
        if ((i4 & 4) != 0) {
            z = false;
        }
        if ((i4 & 8) != 0) {
            locale = null;
        }
        return toLocalString(i, i2, i3, z, locale);
    }
}
