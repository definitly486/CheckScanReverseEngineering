package com.warefly.checkscan.calendarspinner.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.warefly.checkscan.calendarspinner.DateTimePickerSpinner;
import defpackage.kx2;
import defpackage.oc2;
import defpackage.qn1;
import defpackage.y3;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class WheelDayPicker extends WheelPicker<oc2> {
    public int q0;
    public a r0;
    public final SimpleDateFormat s0;

    public interface a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelDayPicker(Context context) {
        super(context, null);
        context.getClass();
        this.q0 = 364;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE d MMM", getCurrentLocale());
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        this.s0 = simpleDateFormat;
    }

    public final Date getCurrentDate() {
        int currentItemPosition = getCurrentItemPosition();
        WheelPicker.a<oc2> wheelAdapter = getWheelAdapter();
        wheelAdapter.getClass();
        String strC = wheelAdapter.c(currentItemPosition);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(getDateHelper().b());
        WheelPicker.a<oc2> wheelAdapter2 = getWheelAdapter();
        Iterable iterable = wheelAdapter2 != null ? wheelAdapter2.a : null;
        if (iterable == null) {
            iterable = kx2.b;
        }
        ArrayList arrayListR = qn1.R(iterable);
        int size = arrayListR.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            if (((oc2) arrayListR.get(i)).a.equals("Сегодня")) {
                break;
            }
            i++;
        }
        if ("Сегодня".equals(strC)) {
            Date time = calendar.getTime();
            time.getClass();
            return time;
        }
        calendar.add(6, currentItemPosition - i);
        Date time2 = calendar.getTime();
        time2.getClass();
        return time2;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final List<oc2> h(boolean z) {
        ArrayList arrayList = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(getDateHelper().b());
        int i = z ? 0 : this.q0 * (-1);
        calendar.add(5, i - 1);
        while (i < 0) {
            calendar.add(5, 1);
            Date time = calendar.getTime();
            time.getClass();
            arrayList.add(new oc2(i(time), time));
            i++;
        }
        arrayList.add(new oc2("Сегодня", new Date()));
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeZone(getDateHelper().b());
        int i2 = this.q0;
        for (int i3 = 0; i3 < i2; i3++) {
            calendar2.add(5, 1);
            Date time2 = calendar2.getTime();
            time2.getClass();
            arrayList.add(new oc2(i(time2), time2));
        }
        return arrayList;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final String i(Date date) {
        String str = this.s0.format((Object) date);
        str.getClass();
        return str;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final oc2 k() {
        return new oc2("Сегодня", new Date());
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final void n(Object obj) {
        a aVar = this.r0;
        if (aVar != null) {
            DateTimePickerSpinner dateTimePickerSpinner = (DateTimePickerSpinner) ((y3) aVar).c;
            int i = DateTimePickerSpinner.p;
            dateTimePickerSpinner.b();
            dateTimePickerSpinner.a(this);
        }
    }

    public final void setDayCount(int i) {
        this.q0 = i;
    }

    public final void setOnDaySelectedListener(a aVar) {
        this.r0 = aVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelDayPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.q0 = 364;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE d MMM", getCurrentLocale());
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        this.s0 = simpleDateFormat;
    }
}
