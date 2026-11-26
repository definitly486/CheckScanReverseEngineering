package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceHidableBannerBinding implements ViewBinding {
    public final ImageView btnHide;
    public final ImageView ivBanner;
    private final MaterialCardView rootView;

    private ItemRvBalanceHidableBannerBinding(MaterialCardView materialCardView, ImageView imageView, ImageView imageView2) {
        this.rootView = materialCardView;
        this.btnHide = imageView;
        this.ivBanner = imageView2;
    }

    public static ItemRvBalanceHidableBannerBinding bind(View view) {
        int i = R.id.btn_hide;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_hide);
        if (imageView != null) {
            i = R.id.iv_banner;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
            if (imageView2 != null) {
                return new ItemRvBalanceHidableBannerBinding((MaterialCardView) view, imageView, imageView2);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBalanceHidableBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_hidable_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceHidableBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
