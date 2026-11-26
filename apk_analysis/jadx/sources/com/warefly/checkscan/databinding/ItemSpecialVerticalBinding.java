package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSpecialVerticalBinding implements ViewBinding {
    public final CardView banner;
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final ImageView ivPicture;
    private final CardView rootView;

    private ItemSpecialVerticalBinding(CardView cardView, CardView cardView2, LayoutAdsBadgeBinding layoutAdsBadgeBinding, ImageView imageView) {
        this.rootView = cardView;
        this.banner = cardView2;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.ivPicture = imageView;
    }

    public static ItemSpecialVerticalBinding bind(View view) {
        CardView cardView = (CardView) view;
        int i = R.id.incld_ads_badge;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
        if (viewFindChildViewById != null) {
            LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_picture);
            if (imageView != null) {
                return new ItemSpecialVerticalBinding(cardView, cardView, layoutAdsBadgeBindingBind, imageView);
            }
            i = R.id.iv_picture;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemSpecialVerticalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_special_vertical, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static ItemSpecialVerticalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
