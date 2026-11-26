package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvOfferBonusBinding implements ViewBinding {
    public final ImageView ivBonus;
    private final ImageView rootView;

    private ItemRvOfferBonusBinding(ImageView imageView, ImageView imageView2) {
        this.rootView = imageView;
        this.ivBonus = imageView2;
    }

    public static ItemRvOfferBonusBinding bind(View view) {
        if (view != null) {
            ImageView imageView = (ImageView) view;
            return new ItemRvOfferBonusBinding(imageView, imageView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvOfferBonusBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_offer_bonus, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ImageView getRoot() {
        return this.rootView;
    }

    public static ItemRvOfferBonusBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
