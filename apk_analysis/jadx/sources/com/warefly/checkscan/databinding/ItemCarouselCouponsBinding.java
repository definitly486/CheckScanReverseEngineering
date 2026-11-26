package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemCarouselCouponsBinding implements ViewBinding {
    public final Guideline guideline;
    public final ImageView ivLogoCoupon;
    private final CardView rootView;
    public final TextView tvDescriptionCoupon;
    public final TextView tvTermCoupon;
    public final View viewColoredLayerCoupon;

    private ItemCarouselCouponsBinding(CardView cardView, Guideline guideline, ImageView imageView, TextView textView, TextView textView2, View view) {
        this.rootView = cardView;
        this.guideline = guideline;
        this.ivLogoCoupon = imageView;
        this.tvDescriptionCoupon = textView;
        this.tvTermCoupon = textView2;
        this.viewColoredLayerCoupon = view;
    }

    public static ItemCarouselCouponsBinding bind(View view) {
        int i = R.id.guideline;
        Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline);
        if (guideline != null) {
            i = R.id.iv_logo_coupon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo_coupon);
            if (imageView != null) {
                i = R.id.tv_description_coupon;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description_coupon);
                if (textView != null) {
                    i = R.id.tv_term_coupon;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_term_coupon);
                    if (textView2 != null) {
                        i = R.id.view_colored_layer_coupon;
                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_colored_layer_coupon);
                        if (viewFindChildViewById != null) {
                            return new ItemCarouselCouponsBinding((CardView) view, guideline, imageView, textView, textView2, viewFindChildViewById);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemCarouselCouponsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_carousel_coupons, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static ItemCarouselCouponsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
