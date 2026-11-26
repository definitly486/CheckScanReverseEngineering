package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutWithoutSplashBannerLoadingBinding implements ViewBinding {
    public final LinearProgressIndicator pbLoading;
    private final ConstraintLayout rootView;
    public final TextView tvLoading;
    public final TextView tvSecs;

    private LayoutWithoutSplashBannerLoadingBinding(ConstraintLayout constraintLayout, LinearProgressIndicator linearProgressIndicator, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.pbLoading = linearProgressIndicator;
        this.tvLoading = textView;
        this.tvSecs = textView2;
    }

    public static LayoutWithoutSplashBannerLoadingBinding bind(View view) {
        int i = R.id.pb_loading;
        LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) ViewBindings.findChildViewById(view, R.id.pb_loading);
        if (linearProgressIndicator != null) {
            i = R.id.tv_loading;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_loading);
            if (textView != null) {
                i = R.id.tv_secs;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_secs);
                if (textView2 != null) {
                    return new LayoutWithoutSplashBannerLoadingBinding((ConstraintLayout) view, linearProgressIndicator, textView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutWithoutSplashBannerLoadingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_without_splash_banner_loading, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutWithoutSplashBannerLoadingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
