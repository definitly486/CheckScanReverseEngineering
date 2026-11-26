package com.warefly.checkscan.calendarspinner.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.warefly.checkscan.calendarspinner.DateTimePickerSpinner;
import defpackage.a4;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WheelMinutePicker extends WheelPicker<String> {
    public a4 q0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelMinutePicker(Context context) {
        super(context, null);
        context.getClass();
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final int g(Date date) {
        date.getClass();
        int i = getDateHelper().a(date).get(12);
        WheelPicker.a<String> wheelAdapter = getWheelAdapter();
        wheelAdapter.getClass();
        int iB = wheelAdapter.b();
        for (int i2 = 0; i2 < iB; i2++) {
            WheelPicker.a<String> wheelAdapter2 = getWheelAdapter();
            wheelAdapter2.getClass();
            int i3 = Integer.parseInt(wheelAdapter2.c(i2));
            if (i == i3) {
                return i2;
            }
            if (i < i3) {
                return i2 - 1;
            }
        }
        return iB - 1;
    }

    public final int getCurrentMinute() {
        WheelPicker.a<String> wheelAdapter = getWheelAdapter();
        wheelAdapter.getClass();
        return Integer.parseInt(String.valueOf(wheelAdapter.a(getCurrentItemPosition())));
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final List<String> h(boolean z) {
        ArrayList arrayList = new ArrayList(60);
        for (int i = 0; i < 60; i++) {
            arrayList.add(String.valueOf(i));
        }
        return arrayList;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final String k() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(getDateHelper().b());
        return Integer.valueOf(calendar.get(12)).toString();
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final void n(Object obj) {
        String str = (String) obj;
        getListener();
        a4 a4Var = this.q0;
        if (a4Var != null) {
            Integer.parseInt(str);
            DateTimePickerSpinner dateTimePickerSpinner = (DateTimePickerSpinner) a4Var.b;
            int i = DateTimePickerSpinner.p;
            dateTimePickerSpinner.b();
            dateTimePickerSpinner.a(this);
        }
    }

    public final void setStepSizeMinutes(int i) {
        if (1 > i || i >= 60) {
            return;
        }
        WheelPicker.a<V> aVar = this.g;
        if (aVar != 0) {
            List<String> listH = h(this.h0);
            ArrayList arrayList = aVar.a;
            if (arrayList != null) {
                arrayList.clear();
            }
            if (arrayList != null) {
                arrayList.addAll(listH);
            }
        }
        m();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelMinutePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }
}
