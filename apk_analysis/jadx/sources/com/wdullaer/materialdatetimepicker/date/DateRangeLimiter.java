package com.wdullaer.materialdatetimepicker.date;

import android.os.Parcelable;
import java.util.Calendar;

/* JADX INFO: loaded from: classes5.dex */
public interface DateRangeLimiter extends Parcelable {
    Calendar getEndDate();

    default int getMaxYear() {
        return getEndDate().get(1);
    }

    default int getMinYear() {
        return getStartDate().get(1);
    }

    Calendar getStartDate();

    boolean isOutOfRange(int i, int i2, int i3);

    Calendar setToNearestDate(Calendar calendar);
}
