package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvShopTopItemHotBinding implements ViewBinding {
    public final ImageView ivPowerCode;
    public final ShapeableImageView ivTopMarket;
    private final FrameLayout rootView;
    public final TextView tvTitle;

    private ItemRvShopTopItemHotBinding(FrameLayout frameLayout, ImageView imageView, ShapeableImageView shapeableImageView, TextView textView) {
        this.rootView = frameLayout;
        this.ivPowerCode = imageView;
        this.ivTopMarket = shapeableImageView;
        this.tvTitle = textView;
    }

    public static ItemRvShopTopItemHotBinding bind(View view) {
        int i = R.id.iv_power_code;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_power_code);
        if (imageView != null) {
            i = R.id.iv_top_market;
            ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, R.id.iv_top_market);
            if (shapeableImageView != null) {
                i = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView != null) {
                    return new ItemRvShopTopItemHotBinding((FrameLayout) view, imageView, shapeableImageView, textView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvShopTopItemHotBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_shop_top_item_hot, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvShopTopItemHotBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
