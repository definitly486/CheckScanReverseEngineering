package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentOnboardingImageSlideBinding implements ViewBinding {
    public final ImageView ivBanner;
    private final ConstraintLayout rootView;

    private FragmentOnboardingImageSlideBinding(ConstraintLayout constraintLayout, ImageView imageView) {
        this.rootView = constraintLayout;
        this.ivBanner = imageView;
    }

    public static FragmentOnboardingImageSlideBinding bind(View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
        if (imageView != null) {
            return new FragmentOnboardingImageSlideBinding((ConstraintLayout) view, imageView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.iv_banner)));
        return null;
    }

    public static FragmentOnboardingImageSlideBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_onboarding_image_slide, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentOnboardingImageSlideBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
