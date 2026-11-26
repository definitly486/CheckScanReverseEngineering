package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvPromoSelectCardBinding implements ViewBinding {
    public final ImageView ivBadge;
    public final LinearLayout llBadge;
    public final MaterialCardView mcvPromo;
    private final ConstraintLayout rootView;
    public final RecyclerView rvPromoBlocks;
    public final TextView tvBadge;

    private ItemRvPromoSelectCardBinding(ConstraintLayout constraintLayout, ImageView imageView, LinearLayout linearLayout, MaterialCardView materialCardView, RecyclerView recyclerView, TextView textView) {
        this.rootView = constraintLayout;
        this.ivBadge = imageView;
        this.llBadge = linearLayout;
        this.mcvPromo = materialCardView;
        this.rvPromoBlocks = recyclerView;
        this.tvBadge = textView;
    }

    public static ItemRvPromoSelectCardBinding bind(View view) {
        int i = R.id.iv_badge;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge);
        if (imageView != null) {
            i = R.id.ll_badge;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_badge);
            if (linearLayout != null) {
                i = R.id.mcv_promo;
                MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mcv_promo);
                if (materialCardView != null) {
                    i = R.id.rv_promo_blocks;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_promo_blocks);
                    if (recyclerView != null) {
                        i = R.id.tv_badge;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_badge);
                        if (textView != null) {
                            return new ItemRvPromoSelectCardBinding((ConstraintLayout) view, imageView, linearLayout, materialCardView, recyclerView, textView);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvPromoSelectCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_promo_select_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvPromoSelectCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
