package com.warefly.checkscan.databinding;

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

/* JADX INFO: loaded from: classes5.dex */
public final class ItemBadgeProductWithPromoBinding implements ViewBinding {
    public final ImageView ivOpenPromoOrdering;
    public final ImageView ivPromoIcon;
    private final ConstraintLayout rootView;
    public final TextView tvPromoTitle;

    private ItemBadgeProductWithPromoBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, TextView textView) {
        this.rootView = constraintLayout;
        this.ivOpenPromoOrdering = imageView;
        this.ivPromoIcon = imageView2;
        this.tvPromoTitle = textView;
    }

    public static ItemBadgeProductWithPromoBinding bind(View view) {
        int i = R.id.iv_open_promo_ordering;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_open_promo_ordering);
        if (imageView != null) {
            i = R.id.iv_promo_icon;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_promo_icon);
            if (imageView2 != null) {
                i = R.id.tv_promo_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_promo_title);
                if (textView != null) {
                    return new ItemBadgeProductWithPromoBinding((ConstraintLayout) view, imageView, imageView2, textView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemBadgeProductWithPromoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_badge_product_with_promo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemBadgeProductWithPromoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
