package com.warefly.checkscan.calendarspinner.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WheelDayOfMonthPicker extends WheelPicker<String> {
    public int q0;

    public interface a {
    }

    public interface b {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelDayOfMonthPicker(Context context) {
        super(context, null);
        context.getClass();
    }

    public final int getCurrentDay() {
        return getCurrentItemPosition();
    }

    public final a getDayOfMonthListener() {
        return null;
    }

    public final int getDaysInMonth() {
        return this.q0;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final List<String> h(boolean z) {
        ArrayList arrayList = new ArrayList();
        int i = this.q0;
        if (1 <= i) {
            int i2 = 1;
            while (true) {
                arrayList.add(String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(i2)}, 1)));
                if (i2 == i) {
                    break;
                }
                i2++;
            }
        }
        return arrayList;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final String k() {
        return String.valueOf(getDateHelper().a(getDateHelper().c()).get(5));
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final void n(Object obj) {
        getListener();
    }

    public final void setDayOfMonthListener(a aVar) {
    }

    public final void setDayOfMonthSelectedListener(a aVar) {
    }

    public final void setDaysInMonth(int i) {
        this.q0 = i;
    }

    public final void setOnFinishedLoopListener(b bVar) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelDayOfMonthPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }
}
