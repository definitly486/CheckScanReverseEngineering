package com.wdullaer.materialdatetimepicker.date;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.wdullaer.materialdatetimepicker.R;
import com.wdullaer.materialdatetimepicker.Utils;
import defpackage.k;

/* JADX INFO: loaded from: classes5.dex */
public class DayPickerGroup extends ViewGroup implements View.OnClickListener, DayPickerView.OnPageListener {
    private DatePickerController controller;
    private DayPickerView dayPickerView;
    private ImageButton nextButton;
    private ImageButton prevButton;

    public DayPickerGroup(Context context, DatePickerController datePickerController) {
        super(context);
        this.controller = datePickerController;
        init();
    }

    private void init() {
        SimpleDayPickerView simpleDayPickerView = new SimpleDayPickerView(getContext(), this.controller);
        this.dayPickerView = simpleDayPickerView;
        addView(simpleDayPickerView);
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.mdtp_daypicker_group, (ViewGroup) this, false);
        while (viewGroup.getChildCount() > 0) {
            View childAt = viewGroup.getChildAt(0);
            viewGroup.removeViewAt(0);
            addView(childAt);
        }
        this.prevButton = (ImageButton) findViewById(R.id.mdtp_previous_month_arrow);
        this.nextButton = (ImageButton) findViewById(R.id.mdtp_next_month_arrow);
        if (this.controller.getVersion() == DatePickerDialog.Version.VERSION_1) {
            int iDpToPx = Utils.dpToPx(16.0f, getResources());
            this.prevButton.setMinimumHeight(iDpToPx);
            this.prevButton.setMinimumWidth(iDpToPx);
            this.nextButton.setMinimumHeight(iDpToPx);
            this.nextButton.setMinimumWidth(iDpToPx);
        }
        if (this.controller.isThemeDark()) {
            int color = ContextCompat.getColor(getContext(), R.color.mdtp_date_picker_text_normal_dark_theme);
            this.prevButton.setColorFilter(color);
            this.nextButton.setColorFilter(color);
        }
        this.prevButton.setOnClickListener(this);
        this.nextButton.setOnClickListener(this);
        this.dayPickerView.setOnPageListener(this);
    }

    private void updateButtonVisibility(int i) {
        boolean z = this.controller.getScrollOrientation() == DatePickerDialog.ScrollOrientation.HORIZONTAL;
        boolean z2 = i > 0;
        boolean z3 = i < this.dayPickerView.getCount() - 1;
        this.prevButton.setVisibility((z && z2) ? 0 : 4);
        this.nextButton.setVisibility((z && z3) ? 0 : 4);
    }

    public int getMostVisiblePosition() {
        return this.dayPickerView.getMostVisiblePosition();
    }

    public void onChange() {
        this.dayPickerView.onChange();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        if (this.nextButton == view) {
            i = 1;
        } else if (this.prevButton != view) {
            return;
        } else {
            i = -1;
        }
        int mostVisiblePosition = this.dayPickerView.getMostVisiblePosition() + i;
        if (mostVisiblePosition < 0 || mostVisiblePosition >= this.dayPickerView.getCount()) {
            return;
        }
        this.dayPickerView.smoothScrollToPosition(mostVisiblePosition);
        updateButtonVisibility(mostVisiblePosition);
    }

    public void onDateChanged() {
        this.dayPickerView.onDateChanged();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ImageButton imageButton;
        ImageButton imageButton2;
        if (ViewCompat.getLayoutDirection(this) == 1) {
            imageButton = this.nextButton;
            imageButton2 = this.prevButton;
        } else {
            imageButton = this.prevButton;
            imageButton2 = this.nextButton;
        }
        int dimensionPixelSize = this.controller.getVersion() == DatePickerDialog.Version.VERSION_1 ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.mdtp_date_picker_view_animator_padding_v2);
        int i5 = i3 - i;
        this.dayPickerView.layout(0, dimensionPixelSize, i5, i4 - i2);
        SimpleMonthView simpleMonthView = (SimpleMonthView) this.dayPickerView.getChildAt(0);
        int monthHeight = simpleMonthView.getMonthHeight();
        int cellWidth = simpleMonthView.getCellWidth();
        int edgePadding = simpleMonthView.getEdgePadding();
        int measuredWidth = imageButton.getMeasuredWidth();
        int measuredHeight = imageButton.getMeasuredHeight();
        int iB = k.b(monthHeight, measuredHeight, 2, simpleMonthView.getPaddingTop() + dimensionPixelSize);
        int iB2 = k.b(cellWidth, measuredWidth, 2, edgePadding);
        imageButton.layout(iB2, iB, measuredWidth + iB2, measuredHeight + iB);
        int measuredWidth2 = imageButton2.getMeasuredWidth();
        int measuredHeight2 = imageButton2.getMeasuredHeight();
        int iB3 = k.b(monthHeight, measuredHeight2, 2, simpleMonthView.getPaddingTop() + dimensionPixelSize);
        int i6 = ((i5 - edgePadding) - ((cellWidth - measuredWidth2) / 2)) - 2;
        imageButton2.layout(i6 - measuredWidth2, iB3, i6, measuredHeight2 + iB3);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        measureChild(this.dayPickerView, i, i2);
        setMeasuredDimension(this.dayPickerView.getMeasuredWidthAndState(), this.dayPickerView.getMeasuredHeightAndState());
        int measuredWidth = this.dayPickerView.getMeasuredWidth();
        int measuredHeight = this.dayPickerView.getMeasuredHeight();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, Integer.MIN_VALUE);
        this.prevButton.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.nextButton.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    @Override // com.wdullaer.materialdatetimepicker.date.DayPickerView.OnPageListener
    public void onPageChanged(int i) {
        updateButtonVisibility(i);
        this.dayPickerView.accessibilityAnnouncePageChanged();
    }

    public void postSetSelection(int i) {
        this.dayPickerView.postSetSelection(i);
    }

    public DayPickerGroup(Context context) {
        super(context);
        init();
    }

    public DayPickerGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public DayPickerGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }
}
