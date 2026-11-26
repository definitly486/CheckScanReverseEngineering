package com.warefly.checkscan.calendarspinner;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.calendarspinner.widgets.WheelDayPicker;
import com.warefly.checkscan.calendarspinner.widgets.WheelHourPicker;
import com.warefly.checkscan.calendarspinner.widgets.WheelMinutePicker;
import com.warefly.checkscan.calendarspinner.widgets.WheelPicker;
import defpackage.a4;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.gp;
import defpackage.kc2;
import defpackage.ll3;
import defpackage.m92;
import defpackage.nm4;
import defpackage.oc2;
import defpackage.u96;
import defpackage.y3;
import defpackage.zw6;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DateTimePickerSpinner extends LinearLayout {
    public static final /* synthetic */ int p = 0;
    public final m92 b;
    public final WheelDayPicker c;
    public final WheelMinutePicker d;
    public final WheelHourPicker e;
    public final ArrayList f;
    public final ArrayList g;
    public final View h;
    public Date i;
    public Date j;
    public Date k;
    public boolean l;
    public boolean m;
    public boolean n;
    public final fh8 o;

    public interface a {
        void onDateChanged(String str, Date date);
    }

    public static final class b extends gh4 implements ll3<Calendar> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final Calendar invoke() {
            return Calendar.getInstance();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DateTimePickerSpinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        this.b = new m92();
        ArrayList arrayList = new ArrayList();
        this.f = arrayList;
        this.g = new ArrayList();
        this.l = true;
        this.m = true;
        this.n = true;
        this.o = nm4.b(b.f);
        View.inflate(context, R.layout.single_day_and_time_picker, this);
        View viewFindViewById = findViewById(R.id.daysPicker);
        viewFindViewById.getClass();
        WheelDayPicker wheelDayPicker = (WheelDayPicker) viewFindViewById;
        this.c = wheelDayPicker;
        View viewFindViewById2 = findViewById(R.id.minutesPicker);
        viewFindViewById2.getClass();
        WheelMinutePicker wheelMinutePicker = (WheelMinutePicker) viewFindViewById2;
        this.d = wheelMinutePicker;
        View viewFindViewById3 = findViewById(R.id.hoursPicker);
        viewFindViewById3.getClass();
        WheelHourPicker wheelHourPicker = (WheelHourPicker) viewFindViewById3;
        this.e = wheelHourPicker;
        View viewFindViewById4 = findViewById(R.id.dtSelector);
        viewFindViewById4.getClass();
        this.h = viewFindViewById4;
        arrayList.addAll(u96.i(wheelDayPicker, wheelHourPicker, wheelMinutePicker));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((WheelPicker) it.next()).setDateHelper(this.b);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, zw6.a);
        typedArrayObtainStyledAttributes.getClass();
        Resources resources = getResources();
        setTextColor(typedArrayObtainStyledAttributes.getColor(22, ContextCompat.getColor(context, R.color.picker_default_text_color)));
        setSelectedTextColor(typedArrayObtainStyledAttributes.getColor(16, ContextCompat.getColor(context, R.color.picker_default_selected_text_color)));
        setItemSpacing(typedArrayObtainStyledAttributes.getDimensionPixelSize(13, resources.getDimensionPixelSize(R.dimen.WheelMargins)));
        setCurvedMaxAngle(typedArrayObtainStyledAttributes.getInteger(3, 90));
        setSelectorHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(18, resources.getDimensionPixelSize(R.dimen.wheelSelectorHeight)));
        setTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(23, resources.getDimensionPixelSize(R.dimen.WheelItemTextSize)));
        setCurved(typedArrayObtainStyledAttributes.getBoolean(2, false));
        setCyclic(typedArrayObtainStyledAttributes.getBoolean(4, true));
        setMustBeOnFuture(typedArrayObtainStyledAttributes.getBoolean(15, false));
        setVisibleItemCount(typedArrayObtainStyledAttributes.getInt(25, 7));
        setStepSizeMinutes(typedArrayObtainStyledAttributes.getInt(20, 0));
        setStepSizeHours(typedArrayObtainStyledAttributes.getInt(19, 0));
        WheelDayPicker wheelDayPicker2 = this.c;
        wheelDayPicker2.setDayCount(typedArrayObtainStyledAttributes.getInt(5, 364));
        setDisplayDays(typedArrayObtainStyledAttributes.getBoolean(6, this.l));
        setDisplayMinutes(typedArrayObtainStyledAttributes.getBoolean(9, this.m));
        setDisplayHours(typedArrayObtainStyledAttributes.getBoolean(8, this.n));
        setFontToAllPickers(typedArrayObtainStyledAttributes.getResourceId(1, 0));
        setFontToAllPickers(typedArrayObtainStyledAttributes.getResourceId(0, 0));
        setTextAlign(typedArrayObtainStyledAttributes.getInt(21, 0));
        typedArrayObtainStyledAttributes.recycle();
        WheelPicker.a<V> aVar = wheelDayPicker2.g;
        if (aVar != 0) {
            List<oc2> listH = wheelDayPicker2.h(wheelDayPicker2.h0);
            ArrayList arrayList2 = aVar.a;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
            if (arrayList2 != null) {
                arrayList2.addAll(listH);
            }
        }
        wheelDayPicker2.m();
    }

    private final Calendar getReUsedCalendar() {
        return (Calendar) this.o.getValue();
    }

    private final void setCurved(boolean z) {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((WheelPicker) it.next()).setCurved(z);
        }
    }

    private final void setCurvedMaxAngle(int i) {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((WheelPicker) it.next()).setCurvedMaxAngle(i);
        }
    }

    private final void setCyclic(boolean z) {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((WheelPicker) it.next()).setCyclic(z);
        }
    }

    private final void setDisplayDays(boolean z) {
        this.l = z;
        this.c.setVisibility(z ? 0 : 8);
    }

    private final void setDisplayHours(boolean z) {
        this.n = z;
        int i = z ? 0 : 8;
        WheelHourPicker wheelHourPicker = this.e;
        wheelHourPicker.setVisibility(i);
        WheelPicker.a<V> aVar = wheelHourPicker.g;
        if (aVar != 0) {
            List<String> listH = wheelHourPicker.h(wheelHourPicker.h0);
            ArrayList arrayList = aVar.a;
            if (arrayList != null) {
                arrayList.clear();
            }
            if (arrayList != null) {
                arrayList.addAll(listH);
            }
        }
        wheelHourPicker.m();
    }

    private final void setDisplayMinutes(boolean z) {
        this.m = z;
        this.d.setVisibility(z ? 0 : 8);
    }

    private final void setFontToAllPickers(int i) {
        if (i > 0) {
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                ((WheelPicker) it.next()).setTypeface(ResourcesCompat.getFont(getContext(), i));
            }
        }
    }

    private final void setItemSpacing(int i) {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((WheelPicker) it.next()).setItemSpace(i);
        }
    }

    private final void setSelectedTextColor(int i) {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((WheelPicker) it.next()).setSelectedItemTextColor(i);
        }
    }

    private final void setSelectorHeight(int i) {
        View view = this.h;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    private final void setStepSizeHours(int i) {
        this.e.setStepSizeHours(i);
    }

    private final void setStepSizeMinutes(int i) {
        this.d.setStepSizeMinutes(i);
    }

    private final void setTextAlign(int i) {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((WheelPicker) it.next()).setItemAlign(i);
        }
    }

    private final void setTextSize(int i) {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((WheelPicker) it.next()).setItemTextSize(i);
        }
    }

    private final void setVisibleItemCount(int i) {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((WheelPicker) it.next()).setVisibleItemCount(i);
        }
    }

    public final <T extends WheelPicker<?>> void a(T t) {
        t.postDelayed(new kc2(this, 0), 1L);
        t.postDelayed(new gp(this, 1), 1L);
    }

    public final void b() {
        Date date = getDate();
        Date date2 = this.j;
        if (date2 != null) {
            WheelDayPicker wheelDayPicker = this.c;
            int iG = wheelDayPicker.g(date2);
            int iG2 = wheelDayPicker.g(date);
            getReUsedCalendar().setTime(date2);
            int i = getReUsedCalendar().get(11) - 1;
            WheelHourPicker wheelHourPicker = this.e;
            if (iG == iG2) {
                wheelHourPicker.setMaxAvailableItemPosition(i);
            } else {
                wheelHourPicker.setMaxAvailableItemPosition(Integer.MIN_VALUE);
            }
            int iG3 = wheelDayPicker.g(date2);
            int iG4 = wheelDayPicker.g(date);
            int iG5 = wheelHourPicker.g(date2);
            int iG6 = wheelHourPicker.g(date);
            getReUsedCalendar().setTime(date2);
            int i2 = getReUsedCalendar().get(12) - 1;
            WheelMinutePicker wheelMinutePicker = this.d;
            if (iG3 == iG4 && iG5 == iG6) {
                wheelMinutePicker.setMaxAvailableItemPosition(i2);
            } else {
                wheelMinutePicker.setMaxAvailableItemPosition(Integer.MIN_VALUE);
            }
        }
        String string = DateFormat.format("EEE d MMM H:mm", date).toString();
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onDateChanged(string, date);
        }
    }

    public final Date getDate() {
        int currentHour = this.e.getCurrentHour();
        int currentMinute = this.d.getCurrentMinute();
        Calendar calendar = Calendar.getInstance();
        calendar.getClass();
        calendar.setTimeZone(this.b.b());
        if (this.l) {
            calendar.setTime(this.c.getCurrentDate());
        }
        calendar.set(11, currentHour);
        calendar.set(12, currentMinute);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Date time = calendar.getTime();
        time.getClass();
        return time;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.c.setOnDaySelectedListener(new y3(this, 2));
        WheelMinutePicker wheelMinutePicker = this.d;
        wheelMinutePicker.getClass();
        wheelMinutePicker.q0 = new a4(this);
        WheelHourPicker wheelHourPicker = this.e;
        wheelHourPicker.getClass();
        wheelHourPicker.r0 = new a4(this);
        Date time = this.k;
        if (time == null) {
            Calendar calendar = Calendar.getInstance();
            calendar.getClass();
            calendar.setTimeZone(this.b.b());
            calendar.setTime(new Date());
            time = calendar.getTime();
            this.k = time;
        }
        if (time != null) {
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                ((WheelPicker) it.next()).setDefaultDate(time);
            }
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((WheelPicker) it.next()).setEnabled(z);
        }
    }

    public final void setMaxDate(Date date) {
        if (date == null) {
            return;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.getClass();
        calendar.setTimeZone(this.b.b());
        calendar.setTime(date);
        this.j = calendar.getTime();
        WheelDayPicker wheelDayPicker = this.c;
        wheelDayPicker.setMaxAvailableItemPosition(wheelDayPicker.g(date));
    }

    public final void setMinDate(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.getClass();
        calendar.setTimeZone(this.b.b());
        calendar.setTime(date);
        this.i = calendar.getTime();
    }

    public final void setMustBeOnFuture(boolean z) {
        this.c.setShowOnlyFutureDate(z);
        if (z) {
            Calendar calendar = Calendar.getInstance();
            calendar.getClass();
            calendar.setTimeZone(this.b.b());
            this.i = calendar.getTime();
        }
    }

    public final void setTextColor(int i) {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((WheelPicker) it.next()).setItemTextColor(i);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DateTimePickerSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
        context.getClass();
    }

    public /* synthetic */ DateTimePickerSpinner(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DateTimePickerSpinner(Context context) {
        this(context, null, 6, 0);
        context.getClass();
    }
}
