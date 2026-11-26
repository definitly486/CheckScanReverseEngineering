package androidx.compose.material3;

import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.jh2;
import defpackage.l22;
import defpackage.u96;
import defpackage.y74;
import java.util.List;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class DateRangePickerStateImpl extends BaseDatePickerStateImpl implements DateRangePickerState {
    public static final Companion Companion = new Companion(null);
    private MutableState<DisplayMode> _displayMode;
    private MutableState<CalendarDate> _selectedEndDate;
    private MutableState<CalendarDate> _selectedStartDate;

    private DateRangePickerStateImpl(Long l, Long l2, Long l3, y74 y74Var, int i, SelectableDates selectableDates, Locale locale) {
        super(l3, y74Var, selectableDates, locale);
        this._selectedStartDate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this._selectedEndDate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        setSelection(l, l2);
        this._displayMode = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(DisplayMode.m3401boximpl(i), null, 2, null);
    }

    private final CalendarDate getDate(Long l) {
        if (l != null) {
            CalendarDate canonicalDate = getCalendarModel().getCanonicalDate(l.longValue());
            if (getYearRange().c(canonicalDate.getYear())) {
                return canonicalDate;
            }
        }
        return null;
    }

    @Override // androidx.compose.material3.DateRangePickerState
    /* JADX INFO: renamed from: getDisplayMode-jFl-4v0 */
    public int mo3387getDisplayModejFl4v0() {
        return this._displayMode.getValue().m3407unboximpl();
    }

    @Override // androidx.compose.material3.DateRangePickerState
    public Long getSelectedEndDateMillis() {
        CalendarDate value = this._selectedEndDate.getValue();
        if (value != null) {
            return Long.valueOf(value.getUtcTimeMillis());
        }
        return null;
    }

    @Override // androidx.compose.material3.DateRangePickerState
    public Long getSelectedStartDateMillis() {
        CalendarDate value = this._selectedStartDate.getValue();
        if (value != null) {
            return Long.valueOf(value.getUtcTimeMillis());
        }
        return null;
    }

    @Override // androidx.compose.material3.DateRangePickerState
    /* JADX INFO: renamed from: setDisplayMode-vCnGnXg */
    public void mo3388setDisplayModevCnGnXg(int i) {
        Long selectedStartDateMillis = getSelectedStartDateMillis();
        if (selectedStartDateMillis != null) {
            setDisplayedMonthMillis(getCalendarModel().getMonth(selectedStartDateMillis.longValue()).getStartUtcTimeMillis());
        }
        this._displayMode.setValue(DisplayMode.m3401boximpl(i));
    }

    @Override // androidx.compose.material3.DateRangePickerState
    public void setSelection(Long l, Long l2) {
        CalendarDate date = getDate(l);
        CalendarDate date2 = getDate(l2);
        if (date == null || (date2 != null && date.getUtcTimeMillis() > date2.getUtcTimeMillis())) {
            this._selectedStartDate.setValue(null);
            this._selectedEndDate.setValue(null);
        } else {
            this._selectedStartDate.setValue(date);
            this._selectedEndDate.setValue(date2);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List Saver$lambda$0(SaverScope saverScope, DateRangePickerStateImpl dateRangePickerStateImpl) {
            return u96.i(dateRangePickerStateImpl.getSelectedStartDateMillis(), dateRangePickerStateImpl.getSelectedEndDateMillis(), Long.valueOf(dateRangePickerStateImpl.getDisplayedMonthMillis()), Integer.valueOf(dateRangePickerStateImpl.getYearRange().b), Integer.valueOf(dateRangePickerStateImpl.getYearRange().c), Integer.valueOf(dateRangePickerStateImpl.mo3387getDisplayModejFl4v0()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final DateRangePickerStateImpl Saver$lambda$1(SelectableDates selectableDates, Locale locale, List list) {
            Long l = (Long) list.get(0);
            Long l2 = (Long) list.get(1);
            Long l3 = (Long) list.get(2);
            Object obj = list.get(3);
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            Object obj2 = list.get(4);
            obj2.getClass();
            y74 y74Var = new y74(iIntValue, ((Integer) obj2).intValue(), 1);
            Object obj3 = list.get(5);
            obj3.getClass();
            return new DateRangePickerStateImpl(l, l2, l3, y74Var, DisplayMode.m3402constructorimpl(((Integer) obj3).intValue()), selectableDates, locale, null);
        }

        public final Saver<DateRangePickerStateImpl, Object> Saver(SelectableDates selectableDates, Locale locale) {
            return ListSaverKt.listSaver(new c1(), new l22(1, selectableDates, locale));
        }

        private Companion() {
        }
    }

    public /* synthetic */ DateRangePickerStateImpl(Long l, Long l2, Long l3, y74 y74Var, int i, SelectableDates selectableDates, Locale locale, jh2 jh2Var) {
        this(l, l2, l3, y74Var, i, selectableDates, locale);
    }
}
