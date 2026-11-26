package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutBonusPromoBannerDefaultHeaderBinding implements ViewBinding {
    public final ImageView image;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private LayoutBonusPromoBannerDefaultHeaderBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.image = imageView;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static LayoutBonusPromoBannerDefaultHeaderBinding bind(View view) {
        int i = R.id.image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
        if (imageView != null) {
            i = R.id.tv_description;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
            if (textView != null) {
                i = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView2 != null) {
                    return new LayoutBonusPromoBannerDefaultHeaderBinding((ConstraintLayout) view, imageView, textView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutBonusPromoBannerDefaultHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_bonus_promo_banner_default_header, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutBonusPromoBannerDefaultHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
