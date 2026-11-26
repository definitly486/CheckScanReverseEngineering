package com.warefly.checkscan.calendarspinner.widgets;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.material.timepicker.TimeModel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WheelMonthPicker extends WheelPicker<String> {
    public int q0;
    public boolean r0;
    public String s0;

    public interface a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelMonthPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    public final int getCurrentMonth() {
        return getCurrentItemPosition();
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public int getLastScrollPosition() {
        return this.q0;
    }

    public final String getMonthFormat() {
        return TextUtils.isEmpty(this.s0) ? "MMMM" : this.s0;
    }

    public final a getMonthListener() {
        return null;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final List<String> h(boolean z) {
        ArrayList arrayList = new ArrayList();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(getMonthFormat(), getCurrentLocale());
        Calendar calendar = Calendar.getInstance(getCurrentLocale());
        calendar.setTimeZone(getDateHelper().b());
        calendar.set(5, 1);
        for (int i = 0; i < 12; i++) {
            calendar.set(2, i);
            if (this.r0) {
                arrayList.add(String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(i + 1)}, 1)));
            } else {
                String str = simpleDateFormat.format(calendar.getTime());
                str.getClass();
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final String k() {
        return String.valueOf(getDateHelper().a(getDateHelper().c()).get(2));
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final void n(Object obj) {
    }

    public final void setDisplayMonthNumbers(boolean z) {
        this.r0 = z;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public void setLastScrollPosition(int i) {
        this.q0 = i;
    }

    public final void setMonthFormat(String str) {
        this.s0 = str;
    }

    public final void setMonthListener(a aVar) {
    }

    public final void setOnMonthSelectedListener(a aVar) {
    }

    public WheelMonthPicker(Context context) {
        this(context, null);
    }
}
