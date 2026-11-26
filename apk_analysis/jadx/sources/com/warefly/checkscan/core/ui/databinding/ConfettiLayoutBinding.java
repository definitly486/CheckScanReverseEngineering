package com.warefly.checkscan.core.ui.databinding;

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
public final class ConfettiLayoutBinding implements ViewBinding {
    public final LottieAnimationView lottieConfetti;
    private final ConstraintLayout rootView;

    private ConfettiLayoutBinding(ConstraintLayout constraintLayout, LottieAnimationView lottieAnimationView) {
        this.rootView = constraintLayout;
        this.lottieConfetti = lottieAnimationView;
    }

    public static ConfettiLayoutBinding bind(View view) {
        LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(view, R.id.lottie_confetti);
        if (lottieAnimationView != null) {
            return new ConfettiLayoutBinding((ConstraintLayout) view, lottieAnimationView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.lottie_confetti)));
        return null;
    }

    public static ConfettiLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.confetti_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ConfettiLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
