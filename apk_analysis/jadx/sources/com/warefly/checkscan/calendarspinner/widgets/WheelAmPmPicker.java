package com.warefly.checkscan.calendarspinner.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.warefly.checkscan.R;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WheelAmPmPicker extends WheelPicker<String> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelAmPmPicker(Context context) {
        super(context, null);
        context.getClass();
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final int g(Date date) {
        date.getClass();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(getDateHelper().b());
        calendar.setTime(date);
        return calendar.get(11) >= 12 ? 1 : 0;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final List<String> h(boolean z) {
        return Arrays.asList(j(R.string.picker_am), j(R.string.picker_pm));
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final String i(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(getDateHelper().b());
        calendar.setTime(date);
        return j(calendar.get(9) == 1 ? R.string.picker_pm : R.string.picker_am);
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final String k() {
        return getDateHelper().a(getDateHelper().c()).get(10) >= 12 ? j(R.string.picker_pm) : j(R.string.picker_am);
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final void n(Object obj) {
        getListener();
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public void setCyclic(boolean z) {
        super.setCyclic(false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelAmPmPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }
}
