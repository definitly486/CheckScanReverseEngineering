package androidx.compose.material3.internal;

import defpackage.b36;
import defpackage.fh;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import java.time.DayOfWeek;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.chrono.Chronology;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.format.DateTimeParseException;
import java.time.format.DecimalStyle;
import java.time.format.FormatStyle;
import java.time.format.TextStyle;
import java.time.temporal.WeekFields;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class CalendarModelImpl extends CalendarModel {
    private final int firstDayOfWeek;
    private final List<b36<String, String>> weekdayNames;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final ZoneId utcTimeZoneId = ZoneId.of("UTC");

    public /* synthetic */ class EntriesMappings {
        public static final /* synthetic */ g03<DayOfWeek> entries$0 = h03.a(DayOfWeek.values());
    }

    public CalendarModelImpl(Locale locale) {
        super(locale);
        this.firstDayOfWeek = WeekFields.of(locale).getFirstDayOfWeek().getValue();
        g03<DayOfWeek> g03Var = EntriesMappings.entries$0;
        ArrayList arrayList = new ArrayList(g03Var.size());
        int size = g03Var.size();
        for (int i = 0; i < size; i++) {
            DayOfWeek dayOfWeek = g03Var.get(i);
            arrayList.add(new b36(dayOfWeek.getDisplayName(TextStyle.FULL_STANDALONE, locale), dayOfWeek.getDisplayName(TextStyle.NARROW_STANDALONE, locale)));
        }
        this.weekdayNames = arrayList;
    }

    private final CalendarMonth getMonth(LocalDate localDate) {
        int value = localDate.getDayOfWeek().getValue() - getFirstDayOfWeek();
        if (value < 0) {
            value += 7;
        }
        return new CalendarMonth(localDate.getYear(), localDate.getMonthValue(), localDate.lengthOfMonth(), value, localDate.atTime(LocalTime.MIDNIGHT).atZone(utcTimeZoneId).toInstant().toEpochMilli());
    }

    private final LocalDate toLocalDate(CalendarMonth calendarMonth) {
        return Instant.ofEpochMilli(calendarMonth.getStartUtcTimeMillis()).atZone(utcTimeZoneId).toLocalDate();
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public String formatWithPattern(long j, String str, Locale locale) {
        return Companion.formatWithPattern(j, str, locale, getFormatterCache$material3());
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public CalendarDate getCanonicalDate(long j) {
        LocalDate localDate = Instant.ofEpochMilli(j).atZone(utcTimeZoneId).toLocalDate();
        return new CalendarDate(localDate.getYear(), localDate.getMonthValue(), localDate.getDayOfMonth(), 1000 * localDate.atStartOfDay().toEpochSecond(ZoneOffset.UTC));
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public DateInputFormat getDateInputFormat(Locale locale) {
        return CalendarModelKt.datePatternAsInputFormat(DateTimeFormatterBuilder.getLocalizedDateTimePattern(FormatStyle.SHORT, null, Chronology.ofLocale(locale), locale));
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public int getDayOfWeek(CalendarDate calendarDate) {
        return toLocalDate(calendarDate).getDayOfWeek().getValue();
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public int getFirstDayOfWeek() {
        return this.firstDayOfWeek;
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public CalendarDate getToday() {
        LocalDate localDateNow = LocalDate.now();
        return new CalendarDate(localDateNow.getYear(), localDateNow.getMonthValue(), localDateNow.getDayOfMonth(), localDateNow.atTime(LocalTime.MIDNIGHT).atZone(utcTimeZoneId).toInstant().toEpochMilli());
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public List<b36<String, String>> getWeekdayNames() {
        return this.weekdayNames;
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public CalendarMonth minusMonths(CalendarMonth calendarMonth, int i) {
        return i <= 0 ? calendarMonth : getMonth(toLocalDate(calendarMonth).minusMonths(i));
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public CalendarDate parse(String str, String str2, Locale locale) {
        try {
            LocalDate localDate = LocalDate.parse(str, Companion.getCachedDateTimeFormatter(str2, locale, getFormatterCache$material3()));
            return new CalendarDate(localDate.getYear(), localDate.getMonth().getValue(), localDate.getDayOfMonth(), localDate.atTime(LocalTime.MIDNIGHT).atZone(utcTimeZoneId).toInstant().toEpochMilli());
        } catch (DateTimeParseException unused) {
            return null;
        }
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public CalendarMonth plusMonths(CalendarMonth calendarMonth, int i) {
        return i <= 0 ? calendarMonth : getMonth(toLocalDate(calendarMonth).plusMonths(i));
    }

    public String toString() {
        return "CalendarModel";
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DateTimeFormatter getCachedDateTimeFormatter(String str, Locale locale, Map<String, Object> map) {
            StringBuilder sbD = fh.d("P:", str);
            sbD.append(locale.toLanguageTag());
            String string = sbD.toString();
            Object objWithDecimalStyle = map.get(string);
            if (objWithDecimalStyle == null) {
                objWithDecimalStyle = DateTimeFormatter.ofPattern(str, locale).withDecimalStyle(DecimalStyle.of(locale));
                map.put(string, objWithDecimalStyle);
            }
            objWithDecimalStyle.getClass();
            return (DateTimeFormatter) objWithDecimalStyle;
        }

        public final String formatWithPattern(long j, String str, Locale locale, Map<String, Object> map) {
            return Instant.ofEpochMilli(j).atZone(getUtcTimeZoneId$material3()).toLocalDate().format(getCachedDateTimeFormatter(str, locale, map));
        }

        public final ZoneId getUtcTimeZoneId$material3() {
            return CalendarModelImpl.utcTimeZoneId;
        }

        private Companion() {
        }
    }

    private final LocalDate toLocalDate(CalendarDate calendarDate) {
        return LocalDate.of(calendarDate.getYear(), calendarDate.getMonth(), calendarDate.getDayOfMonth());
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public CalendarMonth getMonth(CalendarDate calendarDate) {
        return getMonth(LocalDate.of(calendarDate.getYear(), calendarDate.getMonth(), 1));
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public CalendarMonth getMonth(int i, int i2) {
        return getMonth(LocalDate.of(i, i2, 1));
    }

    @Override // androidx.compose.material3.internal.CalendarModel
    public CalendarMonth getMonth(long j) {
        return getMonth(Instant.ofEpochMilli(j).atZone(utcTimeZoneId).withDayOfMonth(1).toLocalDate());
    }
}
