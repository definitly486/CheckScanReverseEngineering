package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.ConfettiLayoutBinding;
import com.warefly.checkscan.ui.dotindicator.DotsIndicator;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentOnboardingOneSlideBinding implements ViewBinding {
    public final Barrier bannerBarrier;
    public final ImageView btnBack;
    public final TextView btnPrimary;
    public final TextView btnSecondary;
    public final DotsIndicator dotsIndicator;
    public final ConfettiLayoutBinding incldConfetti;
    public final ImageView ivBanner;
    private final ConstraintLayout rootView;
    public final Space spacerButtons;
    public final TextView tvDescription;
    public final TextView tvTitle;
    public final ViewPager2 vpBankSlider;
    public final DotsIndicator vpBankSliderIndicator;

    private FragmentOnboardingOneSlideBinding(ConstraintLayout constraintLayout, Barrier barrier, ImageView imageView, TextView textView, TextView textView2, DotsIndicator dotsIndicator, ConfettiLayoutBinding confettiLayoutBinding, ImageView imageView2, Space space, TextView textView3, TextView textView4, ViewPager2 viewPager2, DotsIndicator dotsIndicator2) {
        this.rootView = constraintLayout;
        this.bannerBarrier = barrier;
        this.btnBack = imageView;
        this.btnPrimary = textView;
        this.btnSecondary = textView2;
        this.dotsIndicator = dotsIndicator;
        this.incldConfetti = confettiLayoutBinding;
        this.ivBanner = imageView2;
        this.spacerButtons = space;
        this.tvDescription = textView3;
        this.tvTitle = textView4;
        this.vpBankSlider = viewPager2;
        this.vpBankSliderIndicator = dotsIndicator2;
    }

    public static FragmentOnboardingOneSlideBinding bind(View view) {
        int i = R.id.banner_barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.banner_barrier);
        if (barrier != null) {
            i = R.id.btn_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
            if (imageView != null) {
                i = R.id.btn_primary;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_primary);
                if (textView != null) {
                    i = R.id.btn_secondary;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_secondary);
                    if (textView2 != null) {
                        i = R.id.dots_indicator;
                        DotsIndicator dotsIndicator = (DotsIndicator) ViewBindings.findChildViewById(view, R.id.dots_indicator);
                        if (dotsIndicator != null) {
                            i = R.id.incld_confetti;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_confetti);
                            if (viewFindChildViewById != null) {
                                ConfettiLayoutBinding confettiLayoutBindingBind = ConfettiLayoutBinding.bind(viewFindChildViewById);
                                i = R.id.iv_banner;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                                if (imageView2 != null) {
                                    i = R.id.spacer_buttons;
                                    Space space = (Space) ViewBindings.findChildViewById(view, R.id.spacer_buttons);
                                    if (space != null) {
                                        i = R.id.tv_description;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                        if (textView3 != null) {
                                            i = R.id.tv_title;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                            if (textView4 != null) {
                                                i = R.id.vp_bank_slider;
                                                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.vp_bank_slider);
                                                if (viewPager2 != null) {
                                                    i = R.id.vp_bank_slider_indicator;
                                                    DotsIndicator dotsIndicator2 = (DotsIndicator) ViewBindings.findChildViewById(view, R.id.vp_bank_slider_indicator);
                                                    if (dotsIndicator2 != null) {
                                                        return new FragmentOnboardingOneSlideBinding((ConstraintLayout) view, barrier, imageView, textView, textView2, dotsIndicator, confettiLayoutBindingBind, imageView2, space, textView3, textView4, viewPager2, dotsIndicator2);
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
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentOnboardingOneSlideBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_onboarding_one_slide, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentOnboardingOneSlideBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
