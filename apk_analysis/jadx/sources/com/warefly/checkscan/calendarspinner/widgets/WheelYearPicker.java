package com.warefly.checkscan.calendarspinner.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.warefly.checkscan.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WheelYearPicker extends WheelPicker<String> {
    public int q0;
    public int r0;
    public final String s0;

    public interface a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelYearPicker(Context context) {
        super(context, null);
        context.getClass();
        new SimpleDateFormat("yyyy", getCurrentLocale());
        int i = Calendar.getInstance().get(1);
        this.q0 = i - 150;
        this.r0 = i + 100;
        this.s0 = j(R.string.picker_today);
    }

    public final int getCurrentYear() {
        return this.q0 + getCurrentItemPosition();
    }

    public final int getMaximumYear() {
        return this.r0;
    }

    public final int getMinimumYear() {
        return this.q0;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final List<String> h(boolean z) {
        ArrayList arrayList = new ArrayList();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(getDateHelper().b());
        calendar.set(1, this.q0 - 1);
        int i = this.q0;
        int i2 = this.r0;
        if (i <= i2) {
            while (true) {
                calendar.add(1, 1);
                Date time = calendar.getTime();
                time.getClass();
                arrayList.add(time.toString());
                if (i == i2) {
                    break;
                }
                i++;
            }
        }
        return arrayList;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final String k() {
        return this.s0;
    }

    @Override // com.warefly.checkscan.calendarspinner.widgets.WheelPicker
    public final void n(Object obj) {
    }

    public final void setMaxYear(int i) {
        this.r0 = i;
        m();
    }

    public final void setMaximumYear(int i) {
        this.r0 = i;
    }

    public final void setMinYear(int i) {
        this.q0 = i;
        m();
    }

    public final void setMinimumYear(int i) {
        this.q0 = i;
    }

    public final void setOnYearSelectedListener(a aVar) {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelYearPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        new SimpleDateFormat("yyyy", getCurrentLocale());
        int i = Calendar.getInstance().get(1);
        this.q0 = i - 150;
        this.r0 = i + 100;
        this.s0 = j(R.string.picker_today);
    }
}
