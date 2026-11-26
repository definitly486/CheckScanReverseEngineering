package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutSplashLoadingBinding implements ViewBinding {
    public final LottieAnimationView lottieSplashAnimation;
    private final ConstraintLayout rootView;

    private LayoutSplashLoadingBinding(ConstraintLayout constraintLayout, LottieAnimationView lottieAnimationView) {
        this.rootView = constraintLayout;
        this.lottieSplashAnimation = lottieAnimationView;
    }

    public static LayoutSplashLoadingBinding bind(View view) {
        LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(view, R.id.lottie_splash_animation);
        if (lottieAnimationView != null) {
            return new LayoutSplashLoadingBinding((ConstraintLayout) view, lottieAnimationView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.lottie_splash_animation)));
        return null;
    }

    public static LayoutSplashLoadingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_splash_loading, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutSplashLoadingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
