package com.warefly.checkscan.subscription.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemActivatedSubscriptionBannerBinding implements ViewBinding {
    public final AppCompatTextView btnExpired;
    public final ImageView ivBonus;
    public final ConstraintLayout layoutOfferExpired;
    private final MaterialCardView rootView;
    public final AppCompatTextView tvChequesCount;
    public final AppCompatTextView tvDescription;
    public final AppCompatTextView tvExpired;
    public final AppCompatTextView tvTitle;

    private ItemActivatedSubscriptionBannerBinding(MaterialCardView materialCardView, AppCompatTextView appCompatTextView, ImageView imageView, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5) {
        this.rootView = materialCardView;
        this.btnExpired = appCompatTextView;
        this.ivBonus = imageView;
        this.layoutOfferExpired = constraintLayout;
        this.tvChequesCount = appCompatTextView2;
        this.tvDescription = appCompatTextView3;
        this.tvExpired = appCompatTextView4;
        this.tvTitle = appCompatTextView5;
    }

    public static ItemActivatedSubscriptionBannerBinding bind(View view) {
        int i = R.id.btn_expired;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_expired);
        if (appCompatTextView != null) {
            i = R.id.iv_bonus;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bonus);
            if (imageView != null) {
                i = R.id.layout_offer_expired;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_offer_expired);
                if (constraintLayout != null) {
                    i = R.id.tv_cheques_count;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_cheques_count);
                    if (appCompatTextView2 != null) {
                        i = R.id.tv_description;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                        if (appCompatTextView3 != null) {
                            i = R.id.tv_expired;
                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_expired);
                            if (appCompatTextView4 != null) {
                                i = R.id.tv_title;
                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (appCompatTextView5 != null) {
                                    return new ItemActivatedSubscriptionBannerBinding((MaterialCardView) view, appCompatTextView, imageView, constraintLayout, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5);
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemActivatedSubscriptionBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_activated_subscription_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemActivatedSubscriptionBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
