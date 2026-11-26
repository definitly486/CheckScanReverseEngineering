package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvImageOfferBinding implements ViewBinding {
    public final ImageView image;
    private final ImageView rootView;

    private ItemRvImageOfferBinding(ImageView imageView, ImageView imageView2) {
        this.rootView = imageView;
        this.image = imageView2;
    }

    public static ItemRvImageOfferBinding bind(View view) {
        if (view != null) {
            ImageView imageView = (ImageView) view;
            return new ItemRvImageOfferBinding(imageView, imageView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemRvImageOfferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_image_offer, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ImageView getRoot() {
        return this.rootView;
    }

    public static ItemRvImageOfferBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
