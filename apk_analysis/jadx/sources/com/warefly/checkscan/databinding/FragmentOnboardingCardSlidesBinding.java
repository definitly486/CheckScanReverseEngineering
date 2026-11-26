package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.warefly.checkscan.R;
import com.warefly.checkscan.ui.dotindicator.DotsIndicator;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentOnboardingCardSlidesBinding implements ViewBinding {
    public final ImageView btnLeft;
    public final ImageView btnRight;
    public final DotsIndicator dotsIndicator;
    private final LinearLayout rootView;
    public final ViewPager2 vpCards;

    private FragmentOnboardingCardSlidesBinding(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, DotsIndicator dotsIndicator, ViewPager2 viewPager2) {
        this.rootView = linearLayout;
        this.btnLeft = imageView;
        this.btnRight = imageView2;
        this.dotsIndicator = dotsIndicator;
        this.vpCards = viewPager2;
    }

    public static FragmentOnboardingCardSlidesBinding bind(View view) {
        int i = R.id.btn_left;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_left);
        if (imageView != null) {
            i = R.id.btn_right;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_right);
            if (imageView2 != null) {
                i = R.id.dots_indicator;
                DotsIndicator dotsIndicator = (DotsIndicator) ViewBindings.findChildViewById(view, R.id.dots_indicator);
                if (dotsIndicator != null) {
                    i = R.id.vp_cards;
                    ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.vp_cards);
                    if (viewPager2 != null) {
                        return new FragmentOnboardingCardSlidesBinding((LinearLayout) view, imageView, imageView2, dotsIndicator, viewPager2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentOnboardingCardSlidesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_onboarding_card_slides, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentOnboardingCardSlidesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
