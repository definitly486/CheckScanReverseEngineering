package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvTaskBannerBinding implements ViewBinding {
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final ImageView ivBanner;
    private final MaterialCardView rootView;

    private ItemRvTaskBannerBinding(MaterialCardView materialCardView, LayoutAdsBadgeBinding layoutAdsBadgeBinding, ImageView imageView) {
        this.rootView = materialCardView;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.ivBanner = imageView;
    }

    public static ItemRvTaskBannerBinding bind(View view) {
        int i = R.id.incld_ads_badge;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
        if (viewFindChildViewById != null) {
            LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
            if (imageView != null) {
                return new ItemRvTaskBannerBinding((MaterialCardView) view, layoutAdsBadgeBindingBind, imageView);
            }
            i = R.id.iv_banner;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvTaskBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_task_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvTaskBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
