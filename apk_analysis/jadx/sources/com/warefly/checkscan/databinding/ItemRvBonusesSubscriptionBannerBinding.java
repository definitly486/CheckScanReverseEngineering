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
public final class ItemRvBonusesSubscriptionBannerBinding implements ViewBinding {
    public final View barrier;
    public final TextView btnAction;
    public final ImageView ivLogo;
    private final MaterialCardView rootView;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private ItemRvBonusesSubscriptionBannerBinding(MaterialCardView materialCardView, View view, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = materialCardView;
        this.barrier = view;
        this.btnAction = textView;
        this.ivLogo = imageView;
        this.tvSubtitle = textView2;
        this.tvTitle = textView3;
    }

    public static ItemRvBonusesSubscriptionBannerBinding bind(View view) {
        int i = R.id.barrier;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.barrier);
        if (viewFindChildViewById != null) {
            i = R.id.btn_action;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_action);
            if (textView != null) {
                i = R.id.iv_logo;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                if (imageView != null) {
                    i = R.id.tv_subtitle;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                    if (textView2 != null) {
                        i = R.id.tv_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView3 != null) {
                            return new ItemRvBonusesSubscriptionBannerBinding((MaterialCardView) view, viewFindChildViewById, textView, imageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBonusesSubscriptionBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_bonuses_subscription_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvBonusesSubscriptionBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
