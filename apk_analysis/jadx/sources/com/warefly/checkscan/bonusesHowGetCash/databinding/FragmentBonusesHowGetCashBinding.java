package com.warefly.checkscan.bonusesHowGetCash.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.slides.SlidesProgressView;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentBonusesHowGetCashBinding implements ViewBinding {
    public final ImageView ivClose;
    public final SlidesProgressView pbSlides;
    private final FrameLayout rootView;
    public final ViewPager2 vp;

    private FragmentBonusesHowGetCashBinding(FrameLayout frameLayout, ImageView imageView, SlidesProgressView slidesProgressView, ViewPager2 viewPager2) {
        this.rootView = frameLayout;
        this.ivClose = imageView;
        this.pbSlides = slidesProgressView;
        this.vp = viewPager2;
    }

    public static FragmentBonusesHowGetCashBinding bind(View view) {
        int i = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (imageView != null) {
            i = R.id.pb_slides;
            SlidesProgressView slidesProgressView = (SlidesProgressView) ViewBindings.findChildViewById(view, R.id.pb_slides);
            if (slidesProgressView != null) {
                i = R.id.vp;
                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.vp);
                if (viewPager2 != null) {
                    return new FragmentBonusesHowGetCashBinding((FrameLayout) view, imageView, slidesProgressView, viewPager2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentBonusesHowGetCashBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_bonuses_how_get_cash, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBonusesHowGetCashBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
