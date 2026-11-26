package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Barrier;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutBlurCloseBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemBonusPromoBannerBinding implements ViewBinding {
    public final Barrier barrier;
    public final TextView btnAction;
    public final TextView btnHide;
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final LayoutBlurCloseBinding incldBlurClose;
    public final AppCompatImageView ivWideBanner;
    private final MaterialCardView rootView;

    private ItemBonusPromoBannerBinding(MaterialCardView materialCardView, Barrier barrier, TextView textView, TextView textView2, LayoutAdsBadgeBinding layoutAdsBadgeBinding, LayoutBlurCloseBinding layoutBlurCloseBinding, AppCompatImageView appCompatImageView) {
        this.rootView = materialCardView;
        this.barrier = barrier;
        this.btnAction = textView;
        this.btnHide = textView2;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.incldBlurClose = layoutBlurCloseBinding;
        this.ivWideBanner = appCompatImageView;
    }

    public static ItemBonusPromoBannerBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.btn_action;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
            if (textView != null) {
                i = R.id.btn_hide;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_hide);
                if (textView2 != null) {
                    i = R.id.incld_ads_badge;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
                    if (viewFindChildViewById != null) {
                        LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
                        i = R.id.incld_blur_close;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_blur_close);
                        if (viewFindChildViewById2 != null) {
                            LayoutBlurCloseBinding layoutBlurCloseBindingBind = LayoutBlurCloseBinding.bind(viewFindChildViewById2);
                            i = R.id.iv_wide_banner;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.iv_wide_banner);
                            if (appCompatImageView != null) {
                                return new ItemBonusPromoBannerBinding((MaterialCardView) view, barrier, textView, textView2, layoutAdsBadgeBindingBind, layoutBlurCloseBindingBind, appCompatImageView);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemBonusPromoBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_bonus_promo_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemBonusPromoBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
