package com.warefly.checkscan.calendarspinner.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.warefly.checkscan.calendarspinner.DateTimePickerSpinner;
import defpackage.a4;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WheelHourPicker extends WheelPicker<String> {
    public final int q0;
    public a4 r0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelHourPicker(Context context) {
        super(context, null);
        context.getClass();
        this.q0 = 24;
    }

    public final int getCurrentHour() {
        WheelPicker.a<String> wheelAdapter = getWheelAdapter();
        wheelAdapter.getClass();
        return Integer.parseInt(String.valueOf(wheelAdapter.a(getCurrentItemPosition())));
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final List<String> h(boolean z) {
        int i = this.q0;
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(String.valueOf(i2));
        }
        return arrayList;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final String i(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(getDateHelper().b());
        calendar.setTime(date);
        return String.format(getCurrentLocale(), "%1$02d", Arrays.copyOf(new Object[]{Integer.valueOf(calendar.get(11))}, 1));
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final String k() {
        return String.valueOf(getDateHelper().a(getDateHelper().c()).get(10));
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final void n(Object obj) {
        String str = (String) obj;
        getListener();
        a4 a4Var = this.r0;
        if (a4Var != null) {
            Integer.parseInt(str);
            DateTimePickerSpinner dateTimePickerSpinner = (DateTimePickerSpinner) a4Var.b;
            int i = DateTimePickerSpinner.p;
            dateTimePickerSpinner.b();
            dateTimePickerSpinner.a(this);
        }
    }

    public final void setStepSizeHours(int i) {
        m();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelHourPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.q0 = 24;
    }
}
