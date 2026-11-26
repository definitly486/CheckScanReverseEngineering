package com.wdullaer.materialdatetimepicker.date;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.wdullaer.materialdatetimepicker.GravitySnapHelper;
import com.wdullaer.materialdatetimepicker.Utils;
import defpackage.g21;
import defpackage.vh;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public abstract class DayPickerView extends RecyclerView implements DatePickerDialog.OnDateChangedListener {
    private static final String TAG = "MonthFragment";
    protected MonthAdapter mAdapter;
    protected Context mContext;
    private DatePickerController mController;
    protected int mCurrentMonthDisplayed;
    protected int mPreviousScrollState;
    protected MonthAdapter.CalendarDay mSelectedDay;
    protected MonthAdapter.CalendarDay mTempDay;
    private OnPageListener pageListener;

    public interface OnPageListener {
        void onPageChanged(int i);
    }

    public DayPickerView(Context context, DatePickerController datePickerController) {
        super(context);
        this.mPreviousScrollState = 0;
        init(context, datePickerController.getScrollOrientation());
        setController(datePickerController);
    }

    private MonthAdapter.CalendarDay findAccessibilityFocus() {
        MonthAdapter.CalendarDay accessibilityFocus;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof MonthView) && (accessibilityFocus = ((MonthView) childAt).getAccessibilityFocus()) != null) {
                return accessibilityFocus;
            }
        }
        return null;
    }

    private static String getMonthAndYearString(int i, int i2, Locale locale) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(2, i);
        calendar.set(1, i2);
        return new SimpleDateFormat("MMMM yyyy", locale).format(calendar.getTime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postSetSelection$1(int i) {
        ((LinearLayoutManager) getLayoutManager()).scrollToPositionWithOffset(i, 0);
        restoreAccessibilityFocus(this.mSelectedDay);
        OnPageListener onPageListener = this.pageListener;
        if (onPageListener != null) {
            onPageListener.onPageChanged(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setUpRecyclerView$0(int i) {
        OnPageListener onPageListener = this.pageListener;
        if (onPageListener != null) {
            onPageListener.onPageChanged(i);
        }
    }

    private boolean restoreAccessibilityFocus(MonthAdapter.CalendarDay calendarDay) {
        if (calendarDay == null) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof MonthView) && ((MonthView) childAt).restoreAccessibilityFocus(calendarDay)) {
                return true;
            }
        }
        return false;
    }

    public void accessibilityAnnouncePageChanged() {
        MonthView mostVisibleMonth = getMostVisibleMonth();
        if (mostVisibleMonth != null) {
            Utils.tryAccessibilityAnnounce(this, getMonthAndYearString(mostVisibleMonth.mMonth, mostVisibleMonth.mYear, this.mController.getLocale()));
        } else {
            Log.w("DayPickerView", "Tried to announce before layout was initialized");
        }
    }

    public abstract MonthAdapter createMonthAdapter(DatePickerController datePickerController);

    public int getCount() {
        return this.mAdapter.getItemCount();
    }

    public MonthView getMostVisibleMonth() {
        boolean z = this.mController.getScrollOrientation() == DatePickerDialog.ScrollOrientation.VERTICAL;
        int height = z ? getHeight() : getWidth();
        MonthView monthView = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < height) {
            View childAt = getChildAt(i2);
            if (childAt == null) {
                break;
            }
            int bottom = z ? childAt.getBottom() : childAt.getRight();
            int iMin = Math.min(bottom, height) - Math.max(0, z ? childAt.getTop() : childAt.getLeft());
            if (iMin > i3) {
                monthView = (MonthView) childAt;
                i3 = iMin;
            }
            i2++;
            i = bottom;
        }
        return monthView;
    }

    public int getMostVisiblePosition() {
        return getChildAdapterPosition(getMostVisibleMonth());
    }

    public OnPageListener getOnPageListener() {
        return this.pageListener;
    }

    public boolean goTo(MonthAdapter.CalendarDay calendarDay, boolean z, boolean z2, boolean z3) {
        View childAt;
        if (z2) {
            this.mSelectedDay.set(calendarDay);
        }
        this.mTempDay.set(calendarDay);
        int minYear = (((calendarDay.year - this.mController.getMinYear()) * 12) + calendarDay.month) - this.mController.getStartDate().get(2);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            childAt = getChildAt(i);
            if (childAt == null) {
                break;
            }
            int top = childAt.getTop();
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "child at " + i + " has top " + top);
            }
            if (top >= 0) {
                break;
            }
            i = i2;
        }
        int childAdapterPosition = childAt != null ? getChildAdapterPosition(childAt) : 0;
        if (z2) {
            this.mAdapter.setSelectedDay(this.mSelectedDay);
        }
        if (Log.isLoggable(TAG, 3)) {
            vh.d(minYear, "GoTo position ", TAG);
        }
        if (minYear != childAdapterPosition || z3) {
            setMonthDisplayed(this.mTempDay);
            this.mPreviousScrollState = 1;
            if (z) {
                smoothScrollToPosition(minYear);
                OnPageListener onPageListener = this.pageListener;
                if (onPageListener != null) {
                    onPageListener.onPageChanged(minYear);
                }
                return true;
            }
            postSetSelection(minYear);
        } else if (z2) {
            setMonthDisplayed(this.mSelectedDay);
        }
        return false;
    }

    public void init(Context context, DatePickerDialog.ScrollOrientation scrollOrientation) {
        setLayoutManager(new LinearLayoutManager(context, scrollOrientation == DatePickerDialog.ScrollOrientation.VERTICAL ? 1 : 0, false));
        setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setClipChildren(false);
        this.mContext = context;
        setUpRecyclerView(scrollOrientation);
    }

    public void onChange() {
        refreshAdapter();
    }

    @Override // com.wdullaer.materialdatetimepicker.date.DatePickerDialog.OnDateChangedListener
    public void onDateChanged() {
        goTo(this.mController.getSelectedDay(), false, true, true);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setItemCount(-1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        restoreAccessibilityFocus(findAccessibilityFocus());
    }

    public void postSetSelection(final int i) {
        clearFocus();
        post(new Runnable() { // from class: wc2
            @Override // java.lang.Runnable
            public final void run() {
                this.b.lambda$postSetSelection$1(i);
            }
        });
    }

    public void refreshAdapter() {
        MonthAdapter monthAdapter = this.mAdapter;
        if (monthAdapter == null) {
            this.mAdapter = createMonthAdapter(this.mController);
        } else {
            monthAdapter.setSelectedDay(this.mSelectedDay);
            OnPageListener onPageListener = this.pageListener;
            if (onPageListener != null) {
                onPageListener.onPageChanged(getMostVisiblePosition());
            }
        }
        setAdapter(this.mAdapter);
    }

    public void setController(DatePickerController datePickerController) {
        this.mController = datePickerController;
        datePickerController.registerOnDateChangedListener(this);
        this.mSelectedDay = new MonthAdapter.CalendarDay(this.mController.getTimeZone());
        this.mTempDay = new MonthAdapter.CalendarDay(this.mController.getTimeZone());
        refreshAdapter();
    }

    public void setMonthDisplayed(MonthAdapter.CalendarDay calendarDay) {
        this.mCurrentMonthDisplayed = calendarDay.month;
    }

    public void setOnPageListener(OnPageListener onPageListener) {
        this.pageListener = onPageListener;
    }

    public void setUpRecyclerView(DatePickerDialog.ScrollOrientation scrollOrientation) {
        setVerticalScrollBarEnabled(false);
        setFadingEdgeLength(0);
        new GravitySnapHelper(scrollOrientation == DatePickerDialog.ScrollOrientation.VERTICAL ? 48 : GravityCompat.START, new g21(this)).attachToRecyclerView(this);
    }

    public DayPickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPreviousScrollState = 0;
        init(context, DatePickerDialog.ScrollOrientation.HORIZONTAL);
    }
}
