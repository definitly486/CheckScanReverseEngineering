package com.wdullaer.materialdatetimepicker.date;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.StateListDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.material.timepicker.TimeModel;
import com.wdullaer.materialdatetimepicker.R;
import defpackage.fg;

/* JADX INFO: loaded from: classes5.dex */
public class YearPickerView extends ListView implements AdapterView.OnItemClickListener, DatePickerDialog.OnDateChangedListener {
    private YearAdapter mAdapter;
    private int mChildSize;
    private final DatePickerController mController;
    private TextViewWithCircularIndicator mSelectedView;
    private int mViewSize;

    public final class YearAdapter extends BaseAdapter {
        private final int mMaxYear;
        private final int mMinYear;

        public YearAdapter(int i, int i2) {
            if (i > i2) {
                fg.c("minYear > maxYear");
                throw null;
            }
            this.mMinYear = i;
            this.mMaxYear = i2;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (this.mMaxYear - this.mMinYear) + 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(this.mMinYear + i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextViewWithCircularIndicator textViewWithCircularIndicator;
            if (view != null) {
                textViewWithCircularIndicator = (TextViewWithCircularIndicator) view;
            } else {
                textViewWithCircularIndicator = (TextViewWithCircularIndicator) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mdtp_year_label_text_view, viewGroup, false);
                textViewWithCircularIndicator.setAccentColor(YearPickerView.this.mController.getAccentColor(), YearPickerView.this.mController.isThemeDark());
            }
            int i2 = this.mMinYear + i;
            boolean z = YearPickerView.this.mController.getSelectedDay().year == i2;
            textViewWithCircularIndicator.setText(String.format(YearPickerView.this.mController.getLocale(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i2)));
            textViewWithCircularIndicator.drawIndicator(z);
            textViewWithCircularIndicator.requestLayout();
            if (z) {
                YearPickerView.this.mSelectedView = textViewWithCircularIndicator;
            }
            return textViewWithCircularIndicator;
        }
    }

    public YearPickerView(Context context, DatePickerController datePickerController) {
        super(context);
        this.mController = datePickerController;
        datePickerController.registerOnDateChangedListener(this);
        setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        Resources resources = context.getResources();
        this.mViewSize = datePickerController.getVersion() == DatePickerDialog.Version.VERSION_1 ? resources.getDimensionPixelOffset(R.dimen.mdtp_date_picker_view_animator_height) : resources.getDimensionPixelOffset(R.dimen.mdtp_date_picker_view_animator_height_v2);
        this.mChildSize = resources.getDimensionPixelOffset(R.dimen.mdtp_year_label_height);
        setVerticalFadingEdgeEnabled(true);
        setFadingEdgeLength(this.mChildSize / 3);
        init();
        setOnItemClickListener(this);
        setSelector(new StateListDrawable());
        setDividerHeight(0);
        onDateChanged();
    }

    private static int getYearFromTextView(TextView textView) {
        return Integer.valueOf(textView.getText().toString()).intValue();
    }

    private void init() {
        YearAdapter yearAdapter = new YearAdapter(this.mController.getMinYear(), this.mController.getMaxYear());
        this.mAdapter = yearAdapter;
        setAdapter((ListAdapter) yearAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postSetSelectionFromTop$0(int i, int i2) {
        setSelectionFromTop(i, i2);
        requestLayout();
    }

    public int getFirstPositionOffset() {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return 0;
        }
        return childAt.getTop();
    }

    @Override // com.wdullaer.materialdatetimepicker.date.DatePickerDialog.OnDateChangedListener
    public void onDateChanged() {
        this.mAdapter.notifyDataSetChanged();
        postSetSelectionCentered(this.mController.getSelectedDay().year - this.mController.getMinYear());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4096) {
            accessibilityEvent.setFromIndex(0);
            accessibilityEvent.setToIndex(0);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.mController.tryVibrate();
        TextViewWithCircularIndicator textViewWithCircularIndicator = (TextViewWithCircularIndicator) view;
        if (textViewWithCircularIndicator != null) {
            TextViewWithCircularIndicator textViewWithCircularIndicator2 = this.mSelectedView;
            if (textViewWithCircularIndicator != textViewWithCircularIndicator2) {
                if (textViewWithCircularIndicator2 != null) {
                    textViewWithCircularIndicator2.drawIndicator(false);
                    this.mSelectedView.requestLayout();
                }
                textViewWithCircularIndicator.drawIndicator(true);
                textViewWithCircularIndicator.requestLayout();
                this.mSelectedView = textViewWithCircularIndicator;
            }
            this.mController.onYearSelected(getYearFromTextView(textViewWithCircularIndicator));
            this.mAdapter.notifyDataSetChanged();
        }
    }

    public void postSetSelectionCentered(int i) {
        postSetSelectionFromTop(i, (this.mViewSize / 2) - (this.mChildSize / 2));
    }

    public void postSetSelectionFromTop(final int i, final int i2) {
        post(new Runnable() { // from class: bm9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.lambda$postSetSelectionFromTop$0(i, i2);
            }
        });
    }
}
