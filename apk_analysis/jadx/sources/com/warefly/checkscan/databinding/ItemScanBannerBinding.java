package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemScanBannerBinding implements ViewBinding {
    public final TextView btnGoToLink;
    public final ImageView image;
    private final ConstraintLayout rootView;
    public final TextView tvOfferBannerDescription;
    public final TextView tvOfferBannerTitle;

    private ItemScanBannerBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnGoToLink = textView;
        this.image = imageView;
        this.tvOfferBannerDescription = textView2;
        this.tvOfferBannerTitle = textView3;
    }

    public static ItemScanBannerBinding bind(View view) {
        int i = R.id.btn_go_to_link;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_go_to_link);
        if (textView != null) {
            i = R.id.image;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image);
            if (imageView != null) {
                i = R.id.tv_offer_banner_description;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_offer_banner_description);
                if (textView2 != null) {
                    i = R.id.tv_offer_banner_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_offer_banner_title);
                    if (textView3 != null) {
                        return new ItemScanBannerBinding((ConstraintLayout) view, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemScanBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_scan_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemScanBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
