package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogInputTimePickerBinding implements ViewBinding {
    public final TextView btnDismiss;
    public final TextView btnSelect;
    public final TextInputEditText etHour;
    public final TextInputEditText etMinutes;
    private final MaterialCardView rootView;
    public final Space spacerTitle;
    public final TextInputLayout tilHours;
    public final TextInputLayout tilMinutes;
    public final TextView tvDivider;
    public final TextView tvHourHint;
    public final TextView tvMinutesHint;
    public final TextView tvTitle;

    private DialogInputTimePickerBinding(MaterialCardView materialCardView, TextView textView, TextView textView2, TextInputEditText textInputEditText, TextInputEditText textInputEditText2, Space space, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = materialCardView;
        this.btnDismiss = textView;
        this.btnSelect = textView2;
        this.etHour = textInputEditText;
        this.etMinutes = textInputEditText2;
        this.spacerTitle = space;
        this.tilHours = textInputLayout;
        this.tilMinutes = textInputLayout2;
        this.tvDivider = textView3;
        this.tvHourHint = textView4;
        this.tvMinutesHint = textView5;
        this.tvTitle = textView6;
    }

    public static DialogInputTimePickerBinding bind(View view) {
        int i = R.id.btn_dismiss;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_dismiss);
        if (textView != null) {
            i = R.id.btn_select;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_select);
            if (textView2 != null) {
                i = R.id.et_hour;
                TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_hour);
                if (textInputEditText != null) {
                    i = R.id.et_minutes;
                    TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_minutes);
                    if (textInputEditText2 != null) {
                        i = R.id.spacer_title;
                        Space space = (Space) ViewBindings.findChildViewById(view, R.id.spacer_title);
                        if (space != null) {
                            i = R.id.til_hours;
                            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_hours);
                            if (textInputLayout != null) {
                                i = R.id.til_minutes;
                                TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_minutes);
                                if (textInputLayout2 != null) {
                                    i = R.id.tv_divider;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_divider);
                                    if (textView3 != null) {
                                        i = R.id.tv_hour_hint;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_hour_hint);
                                        if (textView4 != null) {
                                            i = R.id.tv_minutes_hint;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_minutes_hint);
                                            if (textView5 != null) {
                                                i = R.id.tv_title;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                if (textView6 != null) {
                                                    return new DialogInputTimePickerBinding((MaterialCardView) view, textView, textView2, textInputEditText, textInputEditText2, space, textInputLayout, textInputLayout2, textView3, textView4, textView5, textView6);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogInputTimePickerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_input_time_picker, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static DialogInputTimePickerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
