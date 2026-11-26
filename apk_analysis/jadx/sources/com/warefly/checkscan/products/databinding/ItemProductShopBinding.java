package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemProductShopBinding implements ViewBinding {
    public final ImageView ivLogo;
    private final MaterialCardView rootView;
    public final TextView tvBody;

    private ItemProductShopBinding(MaterialCardView materialCardView, ImageView imageView, TextView textView) {
        this.rootView = materialCardView;
        this.ivLogo = imageView;
        this.tvBody = textView;
    }

    public static ItemProductShopBinding bind(View view) {
        int i = R.id.iv_logo;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
        if (imageView != null) {
            i = R.id.tv_body;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_body);
            if (textView != null) {
                return new ItemProductShopBinding((MaterialCardView) view, imageView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemProductShopBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_product_shop, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemProductShopBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
