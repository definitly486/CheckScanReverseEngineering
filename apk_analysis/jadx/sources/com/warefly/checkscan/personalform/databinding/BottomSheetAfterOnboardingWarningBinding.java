package com.warefly.checkscan.personalform.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class BottomSheetAfterOnboardingWarningBinding implements ViewBinding {
    public final TextView btnAction;
    public final TextView btnSecondary;
    public final ImageView ivIndicator;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private BottomSheetAfterOnboardingWarningBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ImageView imageView, ImageView imageView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.btnAction = textView;
        this.btnSecondary = textView2;
        this.ivIndicator = imageView;
        this.ivLogo = imageView2;
        this.tvDescription = textView3;
        this.tvTitle = textView4;
    }

    public static BottomSheetAfterOnboardingWarningBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.btn_secondary;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_secondary);
            if (textView2 != null) {
                i = R.id.iv_indicator;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
                if (imageView != null) {
                    i = R.id.iv_logo;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                    if (imageView2 != null) {
                        i = R.id.tv_description;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                        if (textView3 != null) {
                            i = R.id.tv_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView4 != null) {
                                return new BottomSheetAfterOnboardingWarningBinding((ConstraintLayout) view, textView, textView2, imageView, imageView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static BottomSheetAfterOnboardingWarningBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.bottom_sheet_after_onboarding_warning, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static BottomSheetAfterOnboardingWarningBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
