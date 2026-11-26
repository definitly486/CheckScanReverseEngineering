package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvShopsFavoritePreviewBinding implements ViewBinding {
    public final ImageView btnFavorite;
    public final ShapeableImageView ivTopMarket;
    private final ConstraintLayout rootView;
    public final AppCompatTextView tvTitle;

    private ItemRvShopsFavoritePreviewBinding(ConstraintLayout constraintLayout, ImageView imageView, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView) {
        this.rootView = constraintLayout;
        this.btnFavorite = imageView;
        this.ivTopMarket = shapeableImageView;
        this.tvTitle = appCompatTextView;
    }

    public static ItemRvShopsFavoritePreviewBinding bind(View view) {
        int i = R.id.btn_favorite;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_favorite);
        if (imageView != null) {
            i = R.id.iv_top_market;
            ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, R.id.iv_top_market);
            if (shapeableImageView != null) {
                i = R.id.tv_title;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (appCompatTextView != null) {
                    return new ItemRvShopsFavoritePreviewBinding((ConstraintLayout) view, imageView, shapeableImageView, appCompatTextView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvShopsFavoritePreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_shops_favorite_preview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvShopsFavoritePreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
