package com.warefly.checkscan.databinding;

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
public final class FragmentOnboardingCardSlideBinding implements ViewBinding {
    public final AppCompatTextView btnAction;
    public final ImageView ivPlaceholder;
    private final LinearLayout rootView;
    public final View space;
    public final AppCompatTextView tvDescription;
    public final AppCompatTextView tvTitle;

    private FragmentOnboardingCardSlideBinding(LinearLayout linearLayout, AppCompatTextView appCompatTextView, ImageView imageView, View view, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.rootView = linearLayout;
        this.btnAction = appCompatTextView;
        this.ivPlaceholder = imageView;
        this.space = view;
        this.tvDescription = appCompatTextView2;
        this.tvTitle = appCompatTextView3;
    }

    public static FragmentOnboardingCardSlideBinding bind(View view) {
        int i = R.id.btn_action;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (appCompatTextView != null) {
            i = R.id.iv_placeholder;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_placeholder);
            if (imageView != null) {
                i = R.id.space;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.space);
                if (viewFindChildViewById != null) {
                    i = R.id.tv_description;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (appCompatTextView2 != null) {
                        i = R.id.tv_title;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (appCompatTextView3 != null) {
                            return new FragmentOnboardingCardSlideBinding((LinearLayout) view, appCompatTextView, imageView, viewFindChildViewById, appCompatTextView2, appCompatTextView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentOnboardingCardSlideBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_onboarding_card_slide, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentOnboardingCardSlideBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
