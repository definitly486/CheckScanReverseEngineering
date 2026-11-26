package androidx.compose.material3;

import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.material3.internal.DateInputFormat;
import androidx.compose.material3.internal.Strings_androidKt;
import defpackage.y74;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class DateInputValidator {
    public static final int $stable = 0;
    private Long currentEndDateMillis;
    private Long currentStartDateMillis;
    private final DatePickerFormatter dateFormatter;
    private final DateInputFormat dateInputFormat;
    private final String errorDateOutOfYearRange;
    private final String errorDatePattern;
    private final String errorInvalidNotAllowed;
    private final String errorInvalidRangeInput;
    private final SelectableDates selectableDates;
    private final y74 yearRange;

    public DateInputValidator(y74 y74Var, SelectableDates selectableDates, DateInputFormat dateInputFormat, DatePickerFormatter datePickerFormatter, String str, String str2, String str3, String str4) {
        this.yearRange = y74Var;
        this.selectableDates = selectableDates;
        this.dateInputFormat = dateInputFormat;
        this.dateFormatter = datePickerFormatter;
        this.errorDatePattern = str;
        this.errorDateOutOfYearRange = str2;
        this.errorInvalidNotAllowed = str3;
        this.errorInvalidRangeInput = str4;
    }

    public final Long getCurrentEndDateMillis() {
        return this.currentEndDateMillis;
    }

    public final Long getCurrentStartDateMillis() {
        return this.currentStartDateMillis;
    }

    public final void setCurrentEndDateMillis(Long l) {
        this.currentEndDateMillis = l;
    }

    public final void setCurrentStartDateMillis(Long l) {
        this.currentStartDateMillis = l;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0083  */
    /* JADX WARN: Code duplicated, block: B:24:0x008d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0095  */
    /* JADX WARN: Code duplicated, block: B:27:0x009a  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a3 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: validate-XivgLIo, reason: not valid java name */
    public final String m3328validateXivgLIo(CalendarDate calendarDate, int i, Locale locale) {
        long utcTimeMillis;
        Long l;
        long jLongValue;
        if (calendarDate == null) {
            String str = this.errorDatePattern;
            String upperCase = this.dateInputFormat.getPatternWithDelimiters().toUpperCase(Locale.ROOT);
            upperCase.getClass();
            return Strings_androidKt.formatString(str, upperCase);
        }
        if (!this.yearRange.c(calendarDate.getYear())) {
            return Strings_androidKt.formatString(this.errorDateOutOfYearRange, CalendarLocale_jvmKt.toLocalString$default(this.yearRange.b, 0, 0, false, locale, 7, null), CalendarLocale_jvmKt.toLocalString$default(this.yearRange.c, 0, 0, false, locale, 7, null));
        }
        SelectableDates selectableDates = this.selectableDates;
        if (!selectableDates.isSelectableYear(calendarDate.getYear()) || !selectableDates.isSelectableDate(calendarDate.getUtcTimeMillis())) {
            return Strings_androidKt.formatString(this.errorInvalidNotAllowed, DatePickerFormatter.formatDate$default(this.dateFormatter, Long.valueOf(calendarDate.getUtcTimeMillis()), locale, false, 4, null));
        }
        InputIdentifier.Companion companion = InputIdentifier.Companion;
        if (InputIdentifier.m3559equalsimpl0(i, companion.m3565getStartDateInputJ2x2o4M())) {
            long utcTimeMillis2 = calendarDate.getUtcTimeMillis();
            Long l2 = this.currentEndDateMillis;
            if (utcTimeMillis2 <= (l2 != null ? l2.longValue() : Long.MAX_VALUE)) {
                if (InputIdentifier.m3559equalsimpl0(i, companion.m3563getEndDateInputJ2x2o4M())) {
                    return "";
                }
                utcTimeMillis = calendarDate.getUtcTimeMillis();
                l = this.currentStartDateMillis;
                if (l != null) {
                    jLongValue = l.longValue();
                } else {
                    jLongValue = Long.MIN_VALUE;
                }
                if (utcTimeMillis >= jLongValue) {
                    return "";
                }
            }
        } else {
            if (InputIdentifier.m3559equalsimpl0(i, companion.m3563getEndDateInputJ2x2o4M())) {
                return "";
            }
            utcTimeMillis = calendarDate.getUtcTimeMillis();
            l = this.currentStartDateMillis;
            if (l != null) {
                jLongValue = l.longValue();
            } else {
                jLongValue = Long.MIN_VALUE;
            }
            if (utcTimeMillis >= jLongValue) {
                return "";
            }
        }
        return this.errorInvalidRangeInput;
    }
}
