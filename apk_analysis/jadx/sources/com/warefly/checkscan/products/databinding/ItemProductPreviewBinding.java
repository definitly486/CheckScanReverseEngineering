package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemProductPreviewBinding implements ViewBinding {
    public final FrameLayout badgeLayout;
    public final ImageView ivProduct;
    public final MaterialCardView mcBadge;
    public final MaterialCardView mcProduct;
    private final ConstraintLayout rootView;
    public final TextView tvBadge;
    public final TextView tvTitle;
    public final View viewBadgeTopPoint;

    private ItemProductPreviewBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, ImageView imageView, MaterialCardView materialCardView, MaterialCardView materialCardView2, TextView textView, TextView textView2, View view) {
        this.rootView = constraintLayout;
        this.badgeLayout = frameLayout;
        this.ivProduct = imageView;
        this.mcBadge = materialCardView;
        this.mcProduct = materialCardView2;
        this.tvBadge = textView;
        this.tvTitle = textView2;
        this.viewBadgeTopPoint = view;
    }

    public static ItemProductPreviewBinding bind(View view) {
        int i = R.id.badge_layout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.badge_layout);
        if (frameLayout != null) {
            i = R.id.iv_product;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_product);
            if (imageView != null) {
                i = R.id.mc_badge;
                MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mc_badge);
                if (materialCardView != null) {
                    i = R.id.mc_product;
                    MaterialCardView materialCardView2 = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mc_product);
                    if (materialCardView2 != null) {
                        i = R.id.tv_badge;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_badge);
                        if (textView != null) {
                            i = R.id.tv_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView2 != null) {
                                i = R.id.view_badge_top_point;
                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_badge_top_point);
                                if (viewFindChildViewById != null) {
                                    return new ItemProductPreviewBinding((ConstraintLayout) view, frameLayout, imageView, materialCardView, materialCardView2, textView, textView2, viewFindChildViewById);
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

    public static ItemProductPreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_product_preview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemProductPreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
