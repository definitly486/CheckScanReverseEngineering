package com.warefly.checkscan.core.ui.databinding;

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
public final class ItemSpecialHorizontalBinding implements ViewBinding {
    public final MaterialCardView banner;
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final ImageView ivPicture;
    private final MaterialCardView rootView;

    private ItemSpecialHorizontalBinding(MaterialCardView materialCardView, MaterialCardView materialCardView2, LayoutAdsBadgeBinding layoutAdsBadgeBinding, ImageView imageView) {
        this.rootView = materialCardView;
        this.banner = materialCardView2;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.ivPicture = imageView;
    }

    public static ItemSpecialHorizontalBinding bind(View view) {
        MaterialCardView materialCardView = (MaterialCardView) view;
        int i = R.id.incld_ads_badge;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
        if (viewFindChildViewById != null) {
            LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_picture);
            if (imageView != null) {
                return new ItemSpecialHorizontalBinding(materialCardView, materialCardView, layoutAdsBadgeBindingBind, imageView);
            }
            i = R.id.iv_picture;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemSpecialHorizontalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_special_horizontal, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemSpecialHorizontalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
