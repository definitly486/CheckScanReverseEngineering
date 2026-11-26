package com.warefly.checkscan.scannerml.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentScannerOnboardingBinding implements ViewBinding {
    public final AppCompatTextView bntAction;
    public final ImageView ivPlaceholder;
    private final LinearLayout rootView;
    public final AppCompatTextView tvDescription;
    public final AppCompatTextView tvTitle;
    public final AppCompatTextView tvToolbarTitle;

    private FragmentScannerOnboardingBinding(LinearLayout linearLayout, AppCompatTextView appCompatTextView, ImageView imageView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.rootView = linearLayout;
        this.bntAction = appCompatTextView;
        this.ivPlaceholder = imageView;
        this.tvDescription = appCompatTextView2;
        this.tvTitle = appCompatTextView3;
        this.tvToolbarTitle = appCompatTextView4;
    }

    public static FragmentScannerOnboardingBinding bind(View view) {
        int i = R.id.bnt_action;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.bnt_action);
        if (appCompatTextView != null) {
            i = R.id.iv_placeholder;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_placeholder);
            if (imageView != null) {
                i = R.id.tv_description;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                if (appCompatTextView2 != null) {
                    i = R.id.tv_title;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (appCompatTextView3 != null) {
                        i = R.id.tv_toolbar_title;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                        if (appCompatTextView4 != null) {
                            return new FragmentScannerOnboardingBinding((LinearLayout) view, appCompatTextView, imageView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentScannerOnboardingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_scanner_onboarding, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentScannerOnboardingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
