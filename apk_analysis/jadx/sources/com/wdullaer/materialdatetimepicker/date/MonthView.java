package com.wdullaer.materialdatetimepicker.date;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.wdullaer.materialdatetimepicker.R;
import java.security.InvalidParameterException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MonthView extends View {
    protected static int DAY_HIGHLIGHT_CIRCLE_MARGIN = 0;
    protected static int DAY_HIGHLIGHT_CIRCLE_SIZE = 0;
    protected static int DAY_SELECTED_CIRCLE_SIZE = 0;
    protected static int DAY_SEPARATOR_WIDTH = 1;
    protected static int DEFAULT_HEIGHT = 32;
    protected static final int DEFAULT_NUM_DAYS = 7;
    protected static final int DEFAULT_NUM_ROWS = 6;
    protected static final int DEFAULT_SELECTED_DAY = -1;
    protected static final int DEFAULT_WEEK_START = 1;
    protected static final int MAX_NUM_ROWS = 6;
    protected static int MINI_DAY_NUMBER_TEXT_SIZE = 0;
    protected static int MONTH_DAY_LABEL_TEXT_SIZE = 0;
    protected static int MONTH_HEADER_SIZE = 0;
    protected static int MONTH_HEADER_SIZE_V2 = 0;
    protected static int MONTH_LABEL_TEXT_SIZE = 0;
    private static final int SELECTED_CIRCLE_ALPHA = 255;
    private final Calendar mCalendar;
    protected DatePickerController mController;
    protected final Calendar mDayLabelCalendar;
    private int mDayOfWeekStart;
    private String mDayOfWeekTypeface;
    protected int mDayTextColor;
    protected int mDisabledDayTextColor;
    protected int mEdgePadding;
    protected boolean mHasToday;
    protected int mHighlightedDayTextColor;
    private boolean mLockAccessibilityDelegate;
    protected int mMonth;
    protected Paint mMonthDayLabelPaint;
    protected int mMonthDayTextColor;
    protected Paint mMonthNumPaint;
    protected int mMonthTitleColor;
    protected Paint mMonthTitlePaint;
    private String mMonthTitleTypeface;
    protected int mNumCells;
    protected int mNumDays;
    protected int mNumRows;
    protected OnDayClickListener mOnDayClickListener;
    protected int mRowHeight;
    protected Paint mSelectedCirclePaint;
    protected int mSelectedDay;
    protected int mSelectedDayTextColor;
    private final StringBuilder mStringBuilder;
    protected int mToday;
    protected int mTodayNumberColor;
    private final MonthViewTouchHelper mTouchHelper;
    protected int mWeekStart;
    protected int mWidth;
    protected int mYear;
    private SimpleDateFormat weekDayLabelFormatter;

    public class MonthViewTouchHelper extends ExploreByTouchHelper {
        private static final String DATE_FORMAT = "dd MMMM yyyy";
        private final Calendar mTempCalendar;
        private final Rect mTempRect;

        public MonthViewTouchHelper(View view) {
            super(view);
            this.mTempRect = new Rect();
            this.mTempCalendar = Calendar.getInstance(MonthView.this.mController.getTimeZone());
        }

        public void clearFocusedVirtualView() {
            int accessibilityFocusedVirtualViewId = getAccessibilityFocusedVirtualViewId();
            if (accessibilityFocusedVirtualViewId != Integer.MIN_VALUE) {
                getAccessibilityNodeProvider(MonthView.this).performAction(accessibilityFocusedVirtualViewId, 128, null);
            }
        }

        public void getItemBounds(int i, Rect rect) {
            MonthView monthView = MonthView.this;
            int i2 = monthView.mEdgePadding;
            int monthHeaderSize = monthView.getMonthHeaderSize();
            MonthView monthView2 = MonthView.this;
            int i3 = monthView2.mRowHeight;
            int i4 = (monthView2.mWidth - (monthView2.mEdgePadding * 2)) / monthView2.mNumDays;
            int iFindDayOffset = monthView2.findDayOffset() + (i - 1);
            int i5 = MonthView.this.mNumDays;
            int i6 = iFindDayOffset / i5;
            int i7 = ((iFindDayOffset % i5) * i4) + i2;
            int i8 = (i6 * i3) + monthHeaderSize;
            rect.set(i7, i8, i4 + i7, i3 + i8);
        }

        public CharSequence getItemDescription(int i) {
            Calendar calendar = this.mTempCalendar;
            MonthView monthView = MonthView.this;
            calendar.set(monthView.mYear, monthView.mMonth, i);
            return DateFormat.format(DATE_FORMAT, this.mTempCalendar.getTimeInMillis());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f, float f2) {
            int dayFromLocation = MonthView.this.getDayFromLocation(f, f2);
            if (dayFromLocation >= 0) {
                return dayFromLocation;
            }
            return Integer.MIN_VALUE;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(List<Integer> list) {
            for (int i = 1; i <= MonthView.this.mNumCells; i++) {
                list.add(Integer.valueOf(i));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 != 16) {
                return false;
            }
            MonthView.this.onDayClick(i);
            return true;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setContentDescription(getItemDescription(i));
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            getItemBounds(i, this.mTempRect);
            accessibilityNodeInfoCompat.setContentDescription(getItemDescription(i));
            accessibilityNodeInfoCompat.setBoundsInParent(this.mTempRect);
            accessibilityNodeInfoCompat.addAction(16);
            MonthView monthView = MonthView.this;
            accessibilityNodeInfoCompat.setEnabled(!monthView.mController.isOutOfRange(monthView.mYear, monthView.mMonth, i));
            if (i == MonthView.this.mSelectedDay) {
                accessibilityNodeInfoCompat.setSelected(true);
            }
        }

        public void setFocusedVirtualView(int i) {
            getAccessibilityNodeProvider(MonthView.this).performAction(i, 64, null);
        }
    }

    public interface OnDayClickListener {
        void onDayClick(MonthView monthView, MonthAdapter.CalendarDay calendarDay);
    }

    public MonthView(Context context, AttributeSet attributeSet, DatePickerController datePickerController) {
        super(context, attributeSet);
        this.mEdgePadding = 0;
        this.mRowHeight = DEFAULT_HEIGHT;
        this.mHasToday = false;
        this.mSelectedDay = -1;
        this.mToday = -1;
        this.mWeekStart = 1;
        this.mNumDays = 7;
        this.mNumCells = 7;
        this.mNumRows = 6;
        this.mDayOfWeekStart = 0;
        this.mController = datePickerController;
        Resources resources = context.getResources();
        this.mDayLabelCalendar = Calendar.getInstance(this.mController.getTimeZone(), this.mController.getLocale());
        this.mCalendar = Calendar.getInstance(this.mController.getTimeZone(), this.mController.getLocale());
        this.mDayOfWeekTypeface = resources.getString(R.string.mdtp_day_of_week_label_typeface);
        this.mMonthTitleTypeface = resources.getString(R.string.mdtp_sans_serif);
        DatePickerController datePickerController2 = this.mController;
        if (datePickerController2 == null || !datePickerController2.isThemeDark()) {
            this.mDayTextColor = ContextCompat.getColor(context, R.color.mdtp_date_picker_text_normal);
            this.mMonthDayTextColor = ContextCompat.getColor(context, R.color.mdtp_date_picker_month_day);
            this.mDisabledDayTextColor = ContextCompat.getColor(context, R.color.mdtp_date_picker_text_disabled);
            this.mHighlightedDayTextColor = ContextCompat.getColor(context, R.color.mdtp_date_picker_text_highlighted);
        } else {
            this.mDayTextColor = ContextCompat.getColor(context, R.color.mdtp_date_picker_text_normal_dark_theme);
            this.mMonthDayTextColor = ContextCompat.getColor(context, R.color.mdtp_date_picker_month_day_dark_theme);
            this.mDisabledDayTextColor = ContextCompat.getColor(context, R.color.mdtp_date_picker_text_disabled_dark_theme);
            this.mHighlightedDayTextColor = ContextCompat.getColor(context, R.color.mdtp_date_picker_text_highlighted_dark_theme);
        }
        this.mSelectedDayTextColor = ContextCompat.getColor(context, R.color.mdtp_white);
        this.mTodayNumberColor = this.mController.getAccentColor();
        this.mMonthTitleColor = ContextCompat.getColor(context, R.color.mdtp_white);
        this.mStringBuilder = new StringBuilder(50);
        MINI_DAY_NUMBER_TEXT_SIZE = resources.getDimensionPixelSize(R.dimen.mdtp_day_number_size);
        MONTH_LABEL_TEXT_SIZE = resources.getDimensionPixelSize(R.dimen.mdtp_month_label_size);
        MONTH_DAY_LABEL_TEXT_SIZE = resources.getDimensionPixelSize(R.dimen.mdtp_month_day_label_text_size);
        MONTH_HEADER_SIZE = resources.getDimensionPixelOffset(R.dimen.mdtp_month_list_item_header_height);
        MONTH_HEADER_SIZE_V2 = resources.getDimensionPixelOffset(R.dimen.mdtp_month_list_item_header_height_v2);
        DatePickerDialog.Version version = this.mController.getVersion();
        DatePickerDialog.Version version2 = DatePickerDialog.Version.VERSION_1;
        DAY_SELECTED_CIRCLE_SIZE = version == version2 ? resources.getDimensionPixelSize(R.dimen.mdtp_day_number_select_circle_radius) : resources.getDimensionPixelSize(R.dimen.mdtp_day_number_select_circle_radius_v2);
        DAY_HIGHLIGHT_CIRCLE_SIZE = resources.getDimensionPixelSize(R.dimen.mdtp_day_highlight_circle_radius);
        DAY_HIGHLIGHT_CIRCLE_MARGIN = resources.getDimensionPixelSize(R.dimen.mdtp_day_highlight_circle_margin);
        if (this.mController.getVersion() == version2) {
            this.mRowHeight = (resources.getDimensionPixelOffset(R.dimen.mdtp_date_picker_view_animator_height) - getMonthHeaderSize()) / 6;
        } else {
            this.mRowHeight = ((resources.getDimensionPixelOffset(R.dimen.mdtp_date_picker_view_animator_height_v2) - getMonthHeaderSize()) - (MONTH_DAY_LABEL_TEXT_SIZE * 2)) / 6;
        }
        this.mEdgePadding = this.mController.getVersion() != version2 ? context.getResources().getDimensionPixelSize(R.dimen.mdtp_date_picker_view_animator_padding_v2) : 0;
        MonthViewTouchHelper monthViewTouchHelper = getMonthViewTouchHelper();
        this.mTouchHelper = monthViewTouchHelper;
        ViewCompat.setAccessibilityDelegate(this, monthViewTouchHelper);
        ViewCompat.setImportantForAccessibility(this, 1);
        this.mLockAccessibilityDelegate = true;
        initView();
    }

    private int calculateNumRows() {
        int iFindDayOffset = findDayOffset();
        int i = this.mNumCells;
        int i2 = this.mNumDays;
        return ((iFindDayOffset + i) / i2) + ((iFindDayOffset + i) % i2 > 0 ? 1 : 0);
    }

    private String getMonthAndYearString() {
        Locale locale = this.mController.getLocale();
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(locale, "MMMM yyyy");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(bestDateTimePattern, locale);
        simpleDateFormat.setTimeZone(this.mController.getTimeZone());
        simpleDateFormat.applyLocalizedPattern(bestDateTimePattern);
        this.mStringBuilder.setLength(0);
        return simpleDateFormat.format(this.mCalendar.getTime());
    }

    private String getWeekDayLabel(Calendar calendar) {
        Locale locale = this.mController.getLocale();
        SimpleDateFormat simpleDateFormat = this.weekDayLabelFormatter;
        if (simpleDateFormat == null) {
            simpleDateFormat = new SimpleDateFormat("EEEEE", locale);
            this.weekDayLabelFormatter = simpleDateFormat;
        }
        return simpleDateFormat.format(calendar.getTime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDayClick(int i) {
        if (this.mController.isOutOfRange(this.mYear, this.mMonth, i)) {
            return;
        }
        OnDayClickListener onDayClickListener = this.mOnDayClickListener;
        if (onDayClickListener != null) {
            onDayClickListener.onDayClick(this, new MonthAdapter.CalendarDay(this.mYear, this.mMonth, i, this.mController.getTimeZone()));
        }
        this.mTouchHelper.sendEventForVirtualView(i, 1);
    }

    private boolean sameDay(int i, Calendar calendar) {
        return this.mYear == calendar.get(1) && this.mMonth == calendar.get(2) && i == calendar.get(5);
    }

    public void clearAccessibilityFocus() {
        this.mTouchHelper.clearFocusedVirtualView();
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.mTouchHelper.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    public abstract void drawMonthDay(Canvas canvas, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    public void drawMonthDayLabels(Canvas canvas) {
        int monthHeaderSize = getMonthHeaderSize() - (MONTH_DAY_LABEL_TEXT_SIZE / 2);
        int i = (this.mWidth - (this.mEdgePadding * 2)) / (this.mNumDays * 2);
        int i2 = 0;
        while (true) {
            int i3 = this.mNumDays;
            if (i2 >= i3) {
                return;
            }
            int i4 = (((i2 * 2) + 1) * i) + this.mEdgePadding;
            this.mDayLabelCalendar.set(7, (this.mWeekStart + i2) % i3);
            canvas.drawText(getWeekDayLabel(this.mDayLabelCalendar), i4, monthHeaderSize, this.mMonthDayLabelPaint);
            i2++;
        }
    }

    public void drawMonthNums(Canvas canvas) {
        int monthHeaderSize = getMonthHeaderSize() + (((this.mRowHeight + MINI_DAY_NUMBER_TEXT_SIZE) / 2) - DAY_SEPARATOR_WIDTH);
        int i = (this.mWidth - (this.mEdgePadding * 2)) / (this.mNumDays * 2);
        int iFindDayOffset = findDayOffset();
        int i2 = monthHeaderSize;
        for (int i3 = 1; i3 <= this.mNumCells; i3++) {
            int i4 = (((iFindDayOffset * 2) + 1) * i) + this.mEdgePadding;
            int i5 = this.mRowHeight;
            int i6 = i2 - (((MINI_DAY_NUMBER_TEXT_SIZE + i5) / 2) - DAY_SEPARATOR_WIDTH);
            drawMonthDay(canvas, this.mYear, this.mMonth, i3, i4, i2, i4 - i, i4 + i, i6, i6 + i5);
            iFindDayOffset++;
            if (iFindDayOffset == this.mNumDays) {
                i2 += this.mRowHeight;
                iFindDayOffset = 0;
            }
        }
    }

    public void drawMonthTitle(Canvas canvas) {
        canvas.drawText(getMonthAndYearString(), this.mWidth / 2, this.mController.getVersion() == DatePickerDialog.Version.VERSION_1 ? (getMonthHeaderSize() - MONTH_DAY_LABEL_TEXT_SIZE) / 2 : (getMonthHeaderSize() / 2) - MONTH_DAY_LABEL_TEXT_SIZE, this.mMonthTitlePaint);
    }

    public int findDayOffset() {
        int i = this.mDayOfWeekStart;
        int i2 = this.mWeekStart;
        if (i < i2) {
            i += this.mNumDays;
        }
        return i - i2;
    }

    public MonthAdapter.CalendarDay getAccessibilityFocus() {
        int accessibilityFocusedVirtualViewId = this.mTouchHelper.getAccessibilityFocusedVirtualViewId();
        if (accessibilityFocusedVirtualViewId >= 0) {
            return new MonthAdapter.CalendarDay(this.mYear, this.mMonth, accessibilityFocusedVirtualViewId, this.mController.getTimeZone());
        }
        return null;
    }

    public int getCellWidth() {
        return (this.mWidth - (this.mEdgePadding * 2)) / this.mNumDays;
    }

    public int getDayFromLocation(float f, float f2) {
        int internalDayFromLocation = getInternalDayFromLocation(f, f2);
        if (internalDayFromLocation < 1 || internalDayFromLocation > this.mNumCells) {
            return -1;
        }
        return internalDayFromLocation;
    }

    public int getEdgePadding() {
        return this.mEdgePadding;
    }

    public int getInternalDayFromLocation(float f, float f2) {
        int i = this.mEdgePadding;
        float f3 = i;
        if (f < f3 || f > this.mWidth - i) {
            return -1;
        }
        return ((((int) (f2 - getMonthHeaderSize())) / this.mRowHeight) * this.mNumDays) + (((int) (((f - f3) * this.mNumDays) / ((this.mWidth - i) - this.mEdgePadding))) - findDayOffset()) + 1;
    }

    public int getMonth() {
        return this.mMonth;
    }

    public int getMonthHeaderSize() {
        return this.mController.getVersion() == DatePickerDialog.Version.VERSION_1 ? MONTH_HEADER_SIZE : MONTH_HEADER_SIZE_V2;
    }

    public int getMonthHeight() {
        return getMonthHeaderSize() - (MONTH_DAY_LABEL_TEXT_SIZE * (this.mController.getVersion() == DatePickerDialog.Version.VERSION_1 ? 2 : 3));
    }

    public MonthViewTouchHelper getMonthViewTouchHelper() {
        return new MonthViewTouchHelper(this);
    }

    public int getYear() {
        return this.mYear;
    }

    public void initView() {
        this.mMonthTitlePaint = new Paint();
        if (this.mController.getVersion() == DatePickerDialog.Version.VERSION_1) {
            this.mMonthTitlePaint.setFakeBoldText(true);
        }
        this.mMonthTitlePaint.setAntiAlias(true);
        this.mMonthTitlePaint.setTextSize(MONTH_LABEL_TEXT_SIZE);
        this.mMonthTitlePaint.setTypeface(Typeface.create(this.mMonthTitleTypeface, 1));
        this.mMonthTitlePaint.setColor(this.mDayTextColor);
        Paint paint = this.mMonthTitlePaint;
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        Paint paint2 = this.mMonthTitlePaint;
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        Paint paint3 = new Paint();
        this.mSelectedCirclePaint = paint3;
        paint3.setFakeBoldText(true);
        this.mSelectedCirclePaint.setAntiAlias(true);
        this.mSelectedCirclePaint.setColor(this.mTodayNumberColor);
        this.mSelectedCirclePaint.setTextAlign(align);
        this.mSelectedCirclePaint.setStyle(style);
        this.mSelectedCirclePaint.setAlpha(255);
        Paint paint4 = new Paint();
        this.mMonthDayLabelPaint = paint4;
        paint4.setAntiAlias(true);
        this.mMonthDayLabelPaint.setTextSize(MONTH_DAY_LABEL_TEXT_SIZE);
        this.mMonthDayLabelPaint.setColor(this.mMonthDayTextColor);
        this.mMonthTitlePaint.setTypeface(Typeface.create(this.mDayOfWeekTypeface, 1));
        this.mMonthDayLabelPaint.setStyle(style);
        this.mMonthDayLabelPaint.setTextAlign(align);
        this.mMonthDayLabelPaint.setFakeBoldText(true);
        Paint paint5 = new Paint();
        this.mMonthNumPaint = paint5;
        paint5.setAntiAlias(true);
        this.mMonthNumPaint.setTextSize(MINI_DAY_NUMBER_TEXT_SIZE);
        this.mMonthNumPaint.setStyle(style);
        this.mMonthNumPaint.setTextAlign(align);
        this.mMonthNumPaint.setFakeBoldText(false);
    }

    public boolean isHighlighted(int i, int i2, int i3) {
        return this.mController.isHighlighted(i, i2, i3);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        drawMonthTitle(canvas);
        drawMonthDayLabels(canvas);
        drawMonthNums(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), getMonthHeaderSize() + (this.mRowHeight * this.mNumRows));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.mWidth = i;
        this.mTouchHelper.invalidateRoot();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int dayFromLocation;
        if (motionEvent.getAction() == 1 && (dayFromLocation = getDayFromLocation(motionEvent.getX(), motionEvent.getY())) >= 0) {
            onDayClick(dayFromLocation);
        }
        return true;
    }

    public boolean restoreAccessibilityFocus(MonthAdapter.CalendarDay calendarDay) {
        int i;
        if (calendarDay.year != this.mYear || calendarDay.month != this.mMonth || (i = calendarDay.day) > this.mNumCells) {
            return false;
        }
        this.mTouchHelper.setFocusedVirtualView(i);
        return true;
    }

    @Override // android.view.View
    public void setAccessibilityDelegate(View.AccessibilityDelegate accessibilityDelegate) {
        if (this.mLockAccessibilityDelegate) {
            return;
        }
        super.setAccessibilityDelegate(accessibilityDelegate);
    }

    public void setMonthParams(int i, int i2, int i3, int i4) {
        if (i3 == -1 && i2 == -1) {
            throw new InvalidParameterException("You must specify month and year for this view");
        }
        this.mSelectedDay = i;
        this.mMonth = i3;
        this.mYear = i2;
        Calendar calendar = Calendar.getInstance(this.mController.getTimeZone(), this.mController.getLocale());
        int i5 = 0;
        this.mHasToday = false;
        this.mToday = -1;
        this.mCalendar.set(2, this.mMonth);
        this.mCalendar.set(1, this.mYear);
        this.mCalendar.set(5, 1);
        this.mDayOfWeekStart = this.mCalendar.get(7);
        if (i4 != -1) {
            this.mWeekStart = i4;
        } else {
            this.mWeekStart = this.mCalendar.getFirstDayOfWeek();
        }
        this.mNumCells = this.mCalendar.getActualMaximum(5);
        while (i5 < this.mNumCells) {
            i5++;
            if (sameDay(i5, calendar)) {
                this.mHasToday = true;
                this.mToday = i5;
            }
        }
        this.mNumRows = calculateNumRows();
        this.mTouchHelper.invalidateRoot();
    }

    public void setOnDayClickListener(OnDayClickListener onDayClickListener) {
        this.mOnDayClickListener = onDayClickListener;
    }

    public void setSelectedDay(int i) {
        this.mSelectedDay = i;
    }

    public MonthView(Context context) {
        this(context, null, null);
    }
}
