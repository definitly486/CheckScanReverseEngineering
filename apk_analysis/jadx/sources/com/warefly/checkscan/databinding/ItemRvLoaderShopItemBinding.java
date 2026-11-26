package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvLoaderShopItemBinding implements ViewBinding {
    public final ImageView btnFave;
    public final Guideline guide;
    private final MaterialCardView rootView;
    public final TextView tvTitle;
    public final TextView tvValue;

    private ItemRvLoaderShopItemBinding(MaterialCardView materialCardView, ImageView imageView, Guideline guideline, TextView textView, TextView textView2) {
        this.rootView = materialCardView;
        this.btnFave = imageView;
        this.guide = guideline;
        this.tvTitle = textView;
        this.tvValue = textView2;
    }

    public static ItemRvLoaderShopItemBinding bind(View view) {
        int i = R.id.btn_fave;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_fave);
        if (imageView != null) {
            i = R.id.guide;
            Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guide);
            if (guideline != null) {
                i = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView != null) {
                    i = R.id.tv_value;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_value);
                    if (textView2 != null) {
                        return new ItemRvLoaderShopItemBinding((MaterialCardView) view, imageView, guideline, textView, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvLoaderShopItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_loader_shop_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvLoaderShopItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
