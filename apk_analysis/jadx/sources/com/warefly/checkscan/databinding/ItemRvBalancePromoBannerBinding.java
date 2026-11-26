package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalancePromoBannerBinding implements ViewBinding {
    public final TextView btnAction;
    public final TextView btnHide;
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final ImageView ivBanner;
    private final ConstraintLayout rootView;
    public final RecyclerView rvTerms;
    public final TextView tvTitle;

    private ItemRvBalancePromoBannerBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, LayoutAdsBadgeBinding layoutAdsBadgeBinding, ImageView imageView, RecyclerView recyclerView, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnAction = textView;
        this.btnHide = textView2;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.ivBanner = imageView;
        this.rvTerms = recyclerView;
        this.tvTitle = textView3;
    }

    public static ItemRvBalancePromoBannerBinding bind(View view) {
        int i = R.id.btn_action;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (textView != null) {
            i = R.id.btn_hide;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_hide);
            if (textView2 != null) {
                i = R.id.incld_ads_badge;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
                if (viewFindChildViewById != null) {
                    LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
                    i = R.id.iv_banner;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                    if (imageView != null) {
                        i = R.id.rv_terms;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_terms);
                        if (recyclerView != null) {
                            i = R.id.tv_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView3 != null) {
                                return new ItemRvBalancePromoBannerBinding((ConstraintLayout) view, textView, textView2, layoutAdsBadgeBindingBind, imageView, recyclerView, textView3);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBalancePromoBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_promo_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalancePromoBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
