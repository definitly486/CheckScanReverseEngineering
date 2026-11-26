package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.progressBar.HorizontalStepProgressbar;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvLandingChequeCounterBinding implements ViewBinding {
    public final HorizontalStepProgressbar pbCounter;
    private final LinearLayout rootView;
    public final TextView tvHint;
    public final TextView tvNextLevel;
    public final AppCompatTextView tvTitle;

    private ItemRvLandingChequeCounterBinding(LinearLayout linearLayout, HorizontalStepProgressbar horizontalStepProgressbar, TextView textView, TextView textView2, AppCompatTextView appCompatTextView) {
        this.rootView = linearLayout;
        this.pbCounter = horizontalStepProgressbar;
        this.tvHint = textView;
        this.tvNextLevel = textView2;
        this.tvTitle = appCompatTextView;
    }

    public static ItemRvLandingChequeCounterBinding bind(View view) {
        int i = R.id.pb_counter;
        HorizontalStepProgressbar horizontalStepProgressbar = (HorizontalStepProgressbar) ViewBindings.findChildViewById(view, R.id.pb_counter);
        if (horizontalStepProgressbar != null) {
            i = R.id.tv_hint;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_hint);
            if (textView != null) {
                i = R.id.tv_next_level;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_next_level);
                if (textView2 != null) {
                    i = R.id.tv_title;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (appCompatTextView != null) {
                        return new ItemRvLandingChequeCounterBinding((LinearLayout) view, horizontalStepProgressbar, textView, textView2, appCompatTextView);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvLandingChequeCounterBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_landing_cheque_counter, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvLandingChequeCounterBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
