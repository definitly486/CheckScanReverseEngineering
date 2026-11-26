package com.warefly.checkscan.subscription.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class AnonSplashScanResultBinding implements ViewBinding {
    public final TextView btnActivate;
    public final ImageView btnClose;
    public final LottieAnimationView ivBanner;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private AnonSplashScanResultBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, LottieAnimationView lottieAnimationView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnActivate = textView;
        this.btnClose = imageView;
        this.ivBanner = lottieAnimationView;
        this.tvDescription = textView2;
        this.tvTitle = textView3;
    }

    public static AnonSplashScanResultBinding bind(View view) {
        int i = R.id.btn_activate;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_activate);
        if (textView != null) {
            i = R.id.btn_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
            if (imageView != null) {
                i = R.id.iv_banner;
                LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                if (lottieAnimationView != null) {
                    i = R.id.tv_description;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView2 != null) {
                        i = R.id.tv_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView3 != null) {
                            return new AnonSplashScanResultBinding((ConstraintLayout) view, textView, imageView, lottieAnimationView, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static AnonSplashScanResultBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.anon_splash_scan_result, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static AnonSplashScanResultBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
