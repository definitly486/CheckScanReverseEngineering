package androidx.compose.material3;

import defpackage.y74;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public interface DateRangePickerState {
    /* JADX INFO: renamed from: getDisplayMode-jFl-4v0, reason: not valid java name */
    int mo3387getDisplayModejFl4v0();

    long getDisplayedMonthMillis();

    Locale getLocale();

    SelectableDates getSelectableDates();

    Long getSelectedEndDateMillis();

    Long getSelectedStartDateMillis();

    y74 getYearRange();

    /* JADX INFO: renamed from: setDisplayMode-vCnGnXg, reason: not valid java name */
    void mo3388setDisplayModevCnGnXg(int i);

    void setDisplayedMonthMillis(long j);

    void setSelection(Long l, Long l2);
}
