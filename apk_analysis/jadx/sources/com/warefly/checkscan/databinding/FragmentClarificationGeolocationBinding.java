package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentClarificationGeolocationBinding implements ViewBinding {
    public final LoadingButton btnCorrect;
    public final TextView btnNoEdit;
    public final Guideline guidelineVert50;
    public final ImageView ivCloudAnimation;
    public final CircularProgressIndicator pbLoading;
    private final ConstraintLayout rootView;
    public final TextView tvWeShowDiscount;
    public final TextView tvYourCity;

    private FragmentClarificationGeolocationBinding(ConstraintLayout constraintLayout, LoadingButton loadingButton, TextView textView, Guideline guideline, ImageView imageView, CircularProgressIndicator circularProgressIndicator, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnCorrect = loadingButton;
        this.btnNoEdit = textView;
        this.guidelineVert50 = guideline;
        this.ivCloudAnimation = imageView;
        this.pbLoading = circularProgressIndicator;
        this.tvWeShowDiscount = textView2;
        this.tvYourCity = textView3;
    }

    public static FragmentClarificationGeolocationBinding bind(View view) {
        int i = R.id.btn_correct;
        LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_correct);
        if (loadingButton != null) {
            i = R.id.btn_no_edit;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_no_edit);
            if (textView != null) {
                i = R.id.guideline_vert_50;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline_vert_50);
                if (guideline != null) {
                    i = R.id.iv_cloud_animation;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_cloud_animation);
                    if (imageView != null) {
                        i = R.id.pb_loading;
                        CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ViewBindings.findChildViewById(view, R.id.pb_loading);
                        if (circularProgressIndicator != null) {
                            i = R.id.tv_we_show_discount;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_we_show_discount);
                            if (textView2 != null) {
                                i = R.id.tv_your_city;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_your_city);
                                if (textView3 != null) {
                                    return new FragmentClarificationGeolocationBinding((ConstraintLayout) view, loadingButton, textView, guideline, imageView, circularProgressIndicator, textView2, textView3);
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

    public static FragmentClarificationGeolocationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_clarification_geolocation, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentClarificationGeolocationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
