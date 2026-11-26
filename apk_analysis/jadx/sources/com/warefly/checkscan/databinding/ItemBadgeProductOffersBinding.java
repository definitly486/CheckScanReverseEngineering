package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemBadgeProductOffersBinding implements ViewBinding {
    public final ImageButton btnBadgePinHint;
    public final ConstraintLayout itemBadgeProductOffersContainer;
    public final ImageView ivOpenOffers;
    private final ConstraintLayout rootView;
    public final RecyclerView rvOffers;
    public final TextView tvOffersTitle;

    private ItemBadgeProductOffersBinding(ConstraintLayout constraintLayout, ImageButton imageButton, ConstraintLayout constraintLayout2, ImageView imageView, RecyclerView recyclerView, TextView textView) {
        this.rootView = constraintLayout;
        this.btnBadgePinHint = imageButton;
        this.itemBadgeProductOffersContainer = constraintLayout2;
        this.ivOpenOffers = imageView;
        this.rvOffers = recyclerView;
        this.tvOffersTitle = textView;
    }

    public static ItemBadgeProductOffersBinding bind(View view) {
        int i = R.id.btn_badge_pin_hint;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_badge_pin_hint);
        if (imageButton != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i = R.id.iv_open_offers;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_open_offers);
            if (imageView != null) {
                i = R.id.rv_offers;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_offers);
                if (recyclerView != null) {
                    i = R.id.tv_offers_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_offers_title);
                    if (textView != null) {
                        return new ItemBadgeProductOffersBinding(constraintLayout, imageButton, constraintLayout, imageView, recyclerView, textView);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemBadgeProductOffersBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_badge_product_offers, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemBadgeProductOffersBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
