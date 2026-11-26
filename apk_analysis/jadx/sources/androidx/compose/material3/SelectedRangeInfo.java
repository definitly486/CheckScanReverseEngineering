package androidx.compose.material3;

import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.material3.internal.CalendarMonth;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class SelectedRangeInfo {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private final boolean firstIsSelectionStart;
    private final long gridEndCoordinates;
    private final long gridStartCoordinates;
    private final boolean lastIsSelectionEnd;

    private SelectedRangeInfo(long j, long j2, boolean z, boolean z2) {
        this.gridStartCoordinates = j;
        this.gridEndCoordinates = j2;
        this.firstIsSelectionStart = z;
        this.lastIsSelectionEnd = z2;
    }

    public final boolean getFirstIsSelectionStart() {
        return this.firstIsSelectionStart;
    }

    /* JADX INFO: renamed from: getGridEndCoordinates-nOcc-ac, reason: not valid java name */
    public final long m3849getGridEndCoordinatesnOccac() {
        return this.gridEndCoordinates;
    }

    /* JADX INFO: renamed from: getGridStartCoordinates-nOcc-ac, reason: not valid java name */
    public final long m3850getGridStartCoordinatesnOccac() {
        return this.gridStartCoordinates;
    }

    public final boolean getLastIsSelectionEnd() {
        return this.lastIsSelectionEnd;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final SelectedRangeInfo calculateRangeInfo(CalendarMonth calendarMonth, CalendarDate calendarDate, CalendarDate calendarDate2) {
            int daysFromStartOfWeekToFirstOfMonth;
            int daysFromStartOfWeekToFirstOfMonth2;
            int numberOfDays;
            if (calendarDate.getUtcTimeMillis() > calendarMonth.getEndUtcTimeMillis() || calendarDate2.getUtcTimeMillis() < calendarMonth.getStartUtcTimeMillis()) {
                return null;
            }
            boolean z = calendarDate.getUtcTimeMillis() >= calendarMonth.getStartUtcTimeMillis();
            boolean z2 = calendarDate2.getUtcTimeMillis() <= calendarMonth.getEndUtcTimeMillis();
            if (z) {
                daysFromStartOfWeekToFirstOfMonth = (calendarDate.getDayOfMonth() + calendarMonth.getDaysFromStartOfWeekToFirstOfMonth()) - 1;
            } else {
                daysFromStartOfWeekToFirstOfMonth = calendarMonth.getDaysFromStartOfWeekToFirstOfMonth();
            }
            if (z2) {
                daysFromStartOfWeekToFirstOfMonth2 = calendarMonth.getDaysFromStartOfWeekToFirstOfMonth();
                numberOfDays = calendarDate2.getDayOfMonth();
            } else {
                daysFromStartOfWeekToFirstOfMonth2 = calendarMonth.getDaysFromStartOfWeekToFirstOfMonth();
                numberOfDays = calendarMonth.getNumberOfDays();
            }
            int i = (numberOfDays + daysFromStartOfWeekToFirstOfMonth2) - 1;
            return new SelectedRangeInfo(IntOffset.m9164constructorimpl((((long) (daysFromStartOfWeekToFirstOfMonth / 7)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) (daysFromStartOfWeekToFirstOfMonth % 7)) << 32)), IntOffset.m9164constructorimpl((((long) (i / 7)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) (i % 7)) << 32)), z, z2, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ SelectedRangeInfo(long j, long j2, boolean z, boolean z2, jh2 jh2Var) {
        this(j, j2, z, z2);
    }
}
