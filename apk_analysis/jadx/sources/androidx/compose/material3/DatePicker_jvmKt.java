package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import defpackage.y74;
import java.time.Instant;
import java.time.LocalDate;
import java.time.YearMonth;
import java.time.ZoneOffset;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class DatePicker_jvmKt {
    /* JADX INFO: renamed from: DatePickerState-sHin3Bw, reason: not valid java name */
    public static final DatePickerState m3371DatePickerStatesHin3Bw(Locale locale, LocalDate localDate, YearMonth yearMonth, y74 y74Var, int i, SelectableDates selectableDates) {
        return DatePickerKt.m3362DatePickerStatesHin3Bw(locale, getLocalDateMillisUtc(localDate), yearMonth != null ? Long.valueOf(getYearMonthMillisUtc(yearMonth)) : null, y74Var, i, selectableDates);
    }

    /* JADX INFO: renamed from: DatePickerState-sHin3Bw$default, reason: not valid java name */
    public static /* synthetic */ DatePickerState m3372DatePickerStatesHin3Bw$default(Locale locale, LocalDate localDate, YearMonth yearMonth, y74 y74Var, int i, SelectableDates selectableDates, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            yearMonth = localDate != null ? YearMonth.from(localDate) : null;
        }
        YearMonth yearMonth2 = yearMonth;
        if ((i2 & 8) != 0) {
            y74Var = DatePickerDefaults.INSTANCE.getYearRange();
        }
        y74 y74Var2 = y74Var;
        if ((i2 & 16) != 0) {
            i = DisplayMode.Companion.m3409getPickerjFl4v0();
        }
        int i3 = i;
        if ((i2 & 32) != 0) {
            selectableDates = DatePickerDefaults.INSTANCE.getAllDates();
        }
        return m3371DatePickerStatesHin3Bw(locale, localDate, yearMonth2, y74Var2, i3, selectableDates);
    }

    /* JADX INFO: renamed from: DateRangePickerState-HVP43zI, reason: not valid java name */
    public static final DateRangePickerState m3373DateRangePickerStateHVP43zI(Locale locale, LocalDate localDate, LocalDate localDate2, YearMonth yearMonth, y74 y74Var, int i, SelectableDates selectableDates) {
        return DateRangePickerKt.m3380DateRangePickerStateHVP43zI(locale, getLocalDateMillisUtc(localDate), getLocalDateMillisUtc(localDate2), yearMonth != null ? Long.valueOf(getYearMonthMillisUtc(yearMonth)) : null, y74Var, i, selectableDates);
    }

    /* JADX INFO: renamed from: DateRangePickerState-HVP43zI$default, reason: not valid java name */
    public static /* synthetic */ DateRangePickerState m3374DateRangePickerStateHVP43zI$default(Locale locale, LocalDate localDate, LocalDate localDate2, YearMonth yearMonth, y74 y74Var, int i, SelectableDates selectableDates, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            yearMonth = localDate != null ? YearMonth.from(localDate) : null;
        }
        YearMonth yearMonth2 = yearMonth;
        if ((i2 & 16) != 0) {
            y74Var = DatePickerDefaults.INSTANCE.getYearRange();
        }
        y74 y74Var2 = y74Var;
        if ((i2 & 32) != 0) {
            i = DisplayMode.Companion.m3409getPickerjFl4v0();
        }
        int i3 = i;
        if ((i2 & 64) != 0) {
            selectableDates = DatePickerDefaults.INSTANCE.getAllDates();
        }
        return m3373DateRangePickerStateHVP43zI(locale, localDate, localDate2, yearMonth2, y74Var2, i3, selectableDates);
    }

    public static final String formatDatePickerNavigateToYearString(String str, String str2) {
        return String.format(str, Arrays.copyOf(new Object[]{str2}, 1));
    }

    public static final String formatHeadlineDescription(String str, String str2) {
        return String.format(str, Arrays.copyOf(new Object[]{str2}, 1));
    }

    public static final YearMonth getDisplayedMonth(DatePickerState datePickerState) {
        return getYearMonth(datePickerState.getDisplayedMonthMillis());
    }

    private static final LocalDate getLocalDate(Long l) {
        if (l == null) {
            return null;
        }
        return Instant.ofEpochMilli(l.longValue()).atZone(ZoneOffset.UTC).toLocalDate();
    }

    private static final Long getLocalDateMillisUtc(LocalDate localDate) {
        if (localDate == null) {
            return null;
        }
        return Long.valueOf(localDate.atStartOfDay().toInstant(ZoneOffset.UTC).toEpochMilli());
    }

    public static final LocalDate getSelectedDate(DatePickerState datePickerState) {
        return getLocalDate(datePickerState.getSelectedDateMillis());
    }

    public static final LocalDate getSelectedEndDate(DateRangePickerState dateRangePickerState) {
        return getLocalDate(dateRangePickerState.getSelectedEndDateMillis());
    }

    public static final LocalDate getSelectedStartDate(DateRangePickerState dateRangePickerState) {
        return getLocalDate(dateRangePickerState.getSelectedStartDateMillis());
    }

    private static final YearMonth getYearMonth(long j) {
        return YearMonth.from(Instant.ofEpochMilli(j).atZone(ZoneOffset.UTC));
    }

    private static final long getYearMonthMillisUtc(YearMonth yearMonth) {
        return yearMonth.atDay(1).atStartOfDay().toInstant(ZoneOffset.UTC).toEpochMilli();
    }

    /* JADX INFO: renamed from: rememberDatePickerState-EU0dCGE, reason: not valid java name */
    public static final DatePickerState m3375rememberDatePickerStateEU0dCGE(LocalDate localDate, YearMonth yearMonth, y74 y74Var, int i, SelectableDates selectableDates, Composer composer, int i2, int i3) {
        if ((i3 & 2) != 0) {
            yearMonth = localDate != null ? YearMonth.from(localDate) : null;
        }
        if ((i3 & 4) != 0) {
            y74Var = DatePickerDefaults.INSTANCE.getYearRange();
        }
        y74 y74Var2 = y74Var;
        if ((i3 & 8) != 0) {
            i = DisplayMode.Companion.m3409getPickerjFl4v0();
        }
        int i4 = i;
        SelectableDates allDates = (i3 & 16) != 0 ? DatePickerDefaults.INSTANCE.getAllDates() : selectableDates;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1802387829, i2, -1, "androidx.compose.material3.rememberDatePickerState (DatePicker.jvm.kt:70)");
        }
        DatePickerState datePickerStateM3367rememberDatePickerStateEU0dCGE = DatePickerKt.m3367rememberDatePickerStateEU0dCGE(localDate != null ? getLocalDateMillisUtc(localDate) : null, yearMonth != null ? Long.valueOf(getYearMonthMillisUtc(yearMonth)) : null, y74Var2, i4, allDates, composer, i2 & 65408, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return datePickerStateM3367rememberDatePickerStateEU0dCGE;
    }

    /* JADX INFO: renamed from: rememberDateRangePickerState-IlFM19s, reason: not valid java name */
    public static final DateRangePickerState m3376rememberDateRangePickerStateIlFM19s(LocalDate localDate, LocalDate localDate2, YearMonth yearMonth, y74 y74Var, int i, SelectableDates selectableDates, Composer composer, int i2, int i3) {
        if ((i3 & 4) != 0) {
            yearMonth = localDate != null ? YearMonth.from(localDate) : null;
        }
        y74 yearRange = (i3 & 8) != 0 ? DatePickerDefaults.INSTANCE.getYearRange() : y74Var;
        int iM3409getPickerjFl4v0 = (i3 & 16) != 0 ? DisplayMode.Companion.m3409getPickerjFl4v0() : i;
        SelectableDates allDates = (i3 & 32) != 0 ? DatePickerDefaults.INSTANCE.getAllDates() : selectableDates;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1580705706, i2, -1, "androidx.compose.material3.rememberDateRangePickerState (DatePicker.jvm.kt:175)");
        }
        DateRangePickerState dateRangePickerStateM3385rememberDateRangePickerStateIlFM19s = DateRangePickerKt.m3385rememberDateRangePickerStateIlFM19s(localDate != null ? getLocalDateMillisUtc(localDate) : null, localDate2 != null ? getLocalDateMillisUtc(localDate2) : null, yearMonth != null ? Long.valueOf(getYearMonthMillisUtc(yearMonth)) : null, yearRange, iM3409getPickerjFl4v0, allDates, composer, i2 & 523264, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return dateRangePickerStateM3385rememberDateRangePickerStateIlFM19s;
    }

    public static final void setDisplayedMonth(DatePickerState datePickerState, YearMonth yearMonth) {
        datePickerState.setDisplayedMonthMillis(getYearMonthMillisUtc(yearMonth));
    }

    public static final void setSelectedDate(DatePickerState datePickerState, LocalDate localDate) {
        datePickerState.setSelectedDateMillis(getLocalDateMillisUtc(localDate));
    }

    public static final void setSelection(DateRangePickerState dateRangePickerState, LocalDate localDate, LocalDate localDate2) {
        dateRangePickerState.setSelection(getLocalDateMillisUtc(localDate), getLocalDateMillisUtc(localDate2));
    }

    public static final void setDisplayedMonth(DateRangePickerState dateRangePickerState, YearMonth yearMonth) {
        dateRangePickerState.setDisplayedMonthMillis(getYearMonthMillisUtc(yearMonth));
    }

    public static final YearMonth getDisplayedMonth(DateRangePickerState dateRangePickerState) {
        return getYearMonth(dateRangePickerState.getDisplayedMonthMillis());
    }
}
