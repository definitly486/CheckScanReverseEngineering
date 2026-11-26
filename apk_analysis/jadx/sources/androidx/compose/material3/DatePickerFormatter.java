package androidx.compose.material3;

import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public interface DatePickerFormatter {
    static /* synthetic */ String formatDate$default(DatePickerFormatter datePickerFormatter, Long l, Locale locale, boolean z, int i, Object obj) {
        if (obj != null) {
            defpackage.n1.e("Super calls with default arguments not supported in this target, function: formatDate");
            return null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return datePickerFormatter.formatDate(l, locale, z);
    }

    String formatDate(Long l, Locale locale, boolean z);

    String formatMonthYear(Long l, Locale locale);
}
