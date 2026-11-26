package androidx.compose.material3.internal;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import defpackage.fh;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CalendarModel_androidKt {
    public static final CalendarModel createCalendarModel(Locale locale) {
        return new CalendarModelImpl(locale);
    }

    public static final String formatWithSkeleton(long j, String str, Locale locale, Map<String, Object> map) {
        StringBuilder sbD = fh.d("S:", str);
        sbD.append(locale.toLanguageTag());
        String string = sbD.toString();
        Object obj = map.get(string);
        Object obj2 = obj;
        if (obj == null) {
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
            instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
            instanceForSkeleton.setTimeZone(TimeZone.GMT_ZONE);
            map.put(string, instanceForSkeleton);
            obj2 = instanceForSkeleton;
        }
        return ((DateFormat) obj2).format(new Date(j));
    }
}
