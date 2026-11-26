package com.warefly.checkscan.subscriptionLanding.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemLandingCardBinding implements ViewBinding {
    public final Guideline guidline;
    public final ImageView ivPlus;
    public final ImageView ivPro;
    private final ConstraintLayout rootView;

    private ItemLandingCardBinding(ConstraintLayout constraintLayout, Guideline guideline, ImageView imageView, ImageView imageView2) {
        this.rootView = constraintLayout;
        this.guidline = guideline;
        this.ivPlus = imageView;
        this.ivPro = imageView2;
    }

    public static ItemLandingCardBinding bind(View view) {
        int i = R.id.guidline;
        Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guidline);
        if (guideline != null) {
            i = R.id.iv_plus;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_plus);
            if (imageView != null) {
                i = R.id.iv_pro;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_pro);
                if (imageView2 != null) {
                    return new ItemLandingCardBinding((ConstraintLayout) view, guideline, imageView, imageView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemLandingCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_landing_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemLandingCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
