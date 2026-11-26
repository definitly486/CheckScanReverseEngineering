package androidx.compose.material3;

import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.fg0;
import defpackage.jh2;
import defpackage.u96;
import defpackage.y74;
import java.util.List;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class DatePickerStateImpl extends BaseDatePickerStateImpl implements DatePickerState {
    public static final Companion Companion = new Companion(null);
    private MutableState<DisplayMode> _displayMode;
    private MutableState<CalendarDate> _selectedDate;

    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    private DatePickerStateImpl(Long l, Long l2, y74 y74Var, int i, SelectableDates selectableDates, Locale locale) {
        CalendarDate canonicalDate;
        super(l2, y74Var, selectableDates, locale);
        if (l != null) {
            canonicalDate = getCalendarModel().getCanonicalDate(l.longValue());
            canonicalDate = y74Var.c(canonicalDate.getYear()) ? canonicalDate : null;
        }
        this._selectedDate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(canonicalDate, null, 2, null);
        this._displayMode = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(DisplayMode.m3401boximpl(i), null, 2, null);
    }

    @Override // androidx.compose.material3.DatePickerState
    /* JADX INFO: renamed from: getDisplayMode-jFl-4v0 */
    public int mo3369getDisplayModejFl4v0() {
        return this._displayMode.getValue().m3407unboximpl();
    }

    @Override // androidx.compose.material3.DatePickerState
    public Long getSelectedDateMillis() {
        CalendarDate value = this._selectedDate.getValue();
        if (value != null) {
            return Long.valueOf(value.getUtcTimeMillis());
        }
        return null;
    }

    @Override // androidx.compose.material3.DatePickerState
    /* JADX INFO: renamed from: setDisplayMode-vCnGnXg */
    public void mo3370setDisplayModevCnGnXg(int i) {
        Long selectedDateMillis = getSelectedDateMillis();
        if (selectedDateMillis != null) {
            setDisplayedMonthMillis(getCalendarModel().getMonth(selectedDateMillis.longValue()).getStartUtcTimeMillis());
        }
        this._displayMode.setValue(DisplayMode.m3401boximpl(i));
    }

    @Override // androidx.compose.material3.DatePickerState
    public void setSelectedDateMillis(Long l) {
        if (l == null) {
            this._selectedDate.setValue(null);
        } else {
            CalendarDate canonicalDate = getCalendarModel().getCanonicalDate(l.longValue());
            this._selectedDate.setValue(getYearRange().c(canonicalDate.getYear()) ? canonicalDate : null);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List Saver$lambda$0(SaverScope saverScope, DatePickerStateImpl datePickerStateImpl) {
            return u96.i(datePickerStateImpl.getSelectedDateMillis(), Long.valueOf(datePickerStateImpl.getDisplayedMonthMillis()), Integer.valueOf(datePickerStateImpl.getYearRange().b), Integer.valueOf(datePickerStateImpl.getYearRange().c), Integer.valueOf(datePickerStateImpl.mo3369getDisplayModejFl4v0()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final DatePickerStateImpl Saver$lambda$1(SelectableDates selectableDates, Locale locale, List list) {
            Long l = (Long) list.get(0);
            Long l2 = (Long) list.get(1);
            Object obj = list.get(2);
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            Object obj2 = list.get(3);
            obj2.getClass();
            y74 y74Var = new y74(iIntValue, ((Integer) obj2).intValue(), 1);
            Object obj3 = list.get(4);
            obj3.getClass();
            return new DatePickerStateImpl(l, l2, y74Var, DisplayMode.m3402constructorimpl(((Integer) obj3).intValue()), selectableDates, locale, null);
        }

        public final Saver<DatePickerStateImpl, Object> Saver(SelectableDates selectableDates, Locale locale) {
            return ListSaverKt.listSaver(new o0(), new fg0(1, selectableDates, locale));
        }

        private Companion() {
        }
    }

    public /* synthetic */ DatePickerStateImpl(Long l, Long l2, y74 y74Var, int i, SelectableDates selectableDates, Locale locale, jh2 jh2Var) {
        this(l, l2, y74Var, i, selectableDates, locale);
    }
}
