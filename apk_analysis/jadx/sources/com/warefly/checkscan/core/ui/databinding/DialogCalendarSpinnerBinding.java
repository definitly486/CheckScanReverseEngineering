package com.warefly.checkscan.core.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.calendarspinner.DateTimePickerSpinner;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogCalendarSpinnerBinding implements ViewBinding {
    public final AppCompatTextView btnLeft;
    public final AppCompatTextView btnRight;
    public final DateTimePickerSpinner calendarSpinner;
    private final LinearLayout rootView;

    private DialogCalendarSpinnerBinding(LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, DateTimePickerSpinner dateTimePickerSpinner) {
        this.rootView = linearLayout;
        this.btnLeft = appCompatTextView;
        this.btnRight = appCompatTextView2;
        this.calendarSpinner = dateTimePickerSpinner;
    }

    public static DialogCalendarSpinnerBinding bind(View view) {
        int i = R.id.btn_left;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_left);
        if (appCompatTextView != null) {
            i = R.id.btn_right;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_right);
            if (appCompatTextView2 != null) {
                i = R.id.calendar_spinner;
                DateTimePickerSpinner dateTimePickerSpinner = (DateTimePickerSpinner) ViewBindings.findChildViewById(view, R.id.calendar_spinner);
                if (dateTimePickerSpinner != null) {
                    return new DialogCalendarSpinnerBinding((LinearLayout) view, appCompatTextView, appCompatTextView2, dateTimePickerSpinner);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogCalendarSpinnerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_calendar_spinner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogCalendarSpinnerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
