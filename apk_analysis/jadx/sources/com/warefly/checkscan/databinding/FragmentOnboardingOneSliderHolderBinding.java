package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentOnboardingOneSliderHolderBinding implements ViewBinding {
    public final FrameLayout container;
    public final LayoutSimpleTryAgainBinding incldTryAgain;
    public final CircularProgressIndicator pbLoading;
    private final ConstraintLayout rootView;

    private FragmentOnboardingOneSliderHolderBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, CircularProgressIndicator circularProgressIndicator) {
        this.rootView = constraintLayout;
        this.container = frameLayout;
        this.incldTryAgain = layoutSimpleTryAgainBinding;
        this.pbLoading = circularProgressIndicator;
    }

    public static FragmentOnboardingOneSliderHolderBinding bind(View view) {
        int i = R.id.container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.container);
        if (frameLayout != null) {
            i = R.id.incld_try_again;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_try_again);
            if (viewFindChildViewById != null) {
                LayoutSimpleTryAgainBinding layoutSimpleTryAgainBindingBind = LayoutSimpleTryAgainBinding.bind(viewFindChildViewById);
                CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ViewBindings.findChildViewById(view, R.id.pb_loading);
                if (circularProgressIndicator != null) {
                    return new FragmentOnboardingOneSliderHolderBinding((ConstraintLayout) view, frameLayout, layoutSimpleTryAgainBindingBind, circularProgressIndicator);
                }
                i = R.id.pb_loading;
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentOnboardingOneSliderHolderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_onboarding_one_slider_holder, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentOnboardingOneSliderHolderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
