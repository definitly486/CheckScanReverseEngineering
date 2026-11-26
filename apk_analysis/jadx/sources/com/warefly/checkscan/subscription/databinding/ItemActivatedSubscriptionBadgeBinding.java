package com.warefly.checkscan.subscription.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemActivatedSubscriptionBadgeBinding implements ViewBinding {
    public final ConstraintLayout clBadgeContainer;
    public final ImageView ivLogo;
    public final MaterialCardView materialCard;
    private final MaterialCardView rootView;
    public final LinearLayout textContainer;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private ItemActivatedSubscriptionBadgeBinding(MaterialCardView materialCardView, ConstraintLayout constraintLayout, ImageView imageView, MaterialCardView materialCardView2, LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = materialCardView;
        this.clBadgeContainer = constraintLayout;
        this.ivLogo = imageView;
        this.materialCard = materialCardView2;
        this.textContainer = linearLayout;
        this.tvSubtitle = textView;
        this.tvTitle = textView2;
    }

    public static ItemActivatedSubscriptionBadgeBinding bind(View view) {
        int i = R.id.cl_badge_container;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.cl_badge_container);
        if (constraintLayout != null) {
            i = R.id.iv_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
            if (imageView != null) {
                MaterialCardView materialCardView = (MaterialCardView) view;
                i = R.id.text_container;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.text_container);
                if (linearLayout != null) {
                    i = R.id.tv_subtitle;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                    if (textView != null) {
                        i = R.id.tv_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView2 != null) {
                            return new ItemActivatedSubscriptionBadgeBinding(materialCardView, constraintLayout, imageView, materialCardView, linearLayout, textView, textView2);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemActivatedSubscriptionBadgeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_activated_subscription_badge, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemActivatedSubscriptionBadgeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
