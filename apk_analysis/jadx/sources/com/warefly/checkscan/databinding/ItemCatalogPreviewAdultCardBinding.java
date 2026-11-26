package com.warefly.checkscan.databinding;

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
public final class ItemCatalogPreviewAdultCardBinding implements ViewBinding {
    public final TextView btnShow;
    public final ImageView ivAdult;
    private final MaterialCardView rootView;
    public final TextView tvDescription;

    private ItemCatalogPreviewAdultCardBinding(MaterialCardView materialCardView, TextView textView, ImageView imageView, TextView textView2) {
        this.rootView = materialCardView;
        this.btnShow = textView;
        this.ivAdult = imageView;
        this.tvDescription = textView2;
    }

    public static ItemCatalogPreviewAdultCardBinding bind(View view) {
        int i = R.id.btn_show;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_show);
        if (textView != null) {
            i = R.id.iv_adult;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_adult);
            if (imageView != null) {
                i = R.id.tv_description;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                if (textView2 != null) {
                    return new ItemCatalogPreviewAdultCardBinding((MaterialCardView) view, textView, imageView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemCatalogPreviewAdultCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_catalog_preview_adult_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemCatalogPreviewAdultCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
