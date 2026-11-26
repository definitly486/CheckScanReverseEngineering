package androidx.compose.material3;

import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.CalendarModel_androidKt;
import androidx.compose.material3.internal.CalendarMonth;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import defpackage.y74;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseDatePickerStateImpl {
    public static final int $stable = 0;
    private final MutableState<CalendarMonth> _displayedMonth;
    private final CalendarModel calendarModel;
    private final Locale locale;
    private final MutableState selectableDates$delegate;
    private final y74 yearRange;

    public BaseDatePickerStateImpl(Long l, y74 y74Var, SelectableDates selectableDates, Locale locale) {
        CalendarMonth month;
        this.yearRange = y74Var;
        this.locale = locale;
        CalendarModel calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(locale);
        this.calendarModel = calendarModelCreateCalendarModel;
        this.selectableDates$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(selectableDates, null, 2, null);
        if (l != null) {
            month = calendarModelCreateCalendarModel.getMonth(l.longValue());
            if (!y74Var.c(month.getYear())) {
                month = calendarModelCreateCalendarModel.getMonth(calendarModelCreateCalendarModel.getToday());
            }
        } else {
            month = calendarModelCreateCalendarModel.getMonth(calendarModelCreateCalendarModel.getToday());
        }
        this._displayedMonth = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(month, null, 2, null);
    }

    public final CalendarModel getCalendarModel() {
        return this.calendarModel;
    }

    public final long getDisplayedMonthMillis() {
        return this._displayedMonth.getValue().getStartUtcTimeMillis();
    }

    public final Locale getLocale() {
        return this.locale;
    }

    public final SelectableDates getSelectableDates() {
        return (SelectableDates) this.selectableDates$delegate.getValue();
    }

    public final y74 getYearRange() {
        return this.yearRange;
    }

    public final void setDisplayedMonthMillis(long j) {
        CalendarMonth month = this.calendarModel.getMonth(j);
        if (this.yearRange.c(month.getYear())) {
            this._displayedMonth.setValue(month);
        }
    }

    public final void setSelectableDates(SelectableDates selectableDates) {
        this.selectableDates$delegate.setValue(selectableDates);
    }
}
