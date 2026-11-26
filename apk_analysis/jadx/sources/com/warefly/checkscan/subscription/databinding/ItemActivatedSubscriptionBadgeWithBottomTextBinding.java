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
public final class ItemActivatedSubscriptionBadgeWithBottomTextBinding implements ViewBinding {
    public final View centerOfBadge;
    public final ConstraintLayout clBadgeContainer;
    public final ImageView ivBottomTextIcon;
    public final ImageView ivLogo;
    public final LinearLayout llText;
    public final MaterialCardView mcBadge;
    private final ConstraintLayout rootView;
    public final LinearLayout textContainer;
    public final TextView tvLeftText;
    public final TextView tvRightText;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private ItemActivatedSubscriptionBadgeWithBottomTextBinding(ConstraintLayout constraintLayout, View view, ConstraintLayout constraintLayout2, ImageView imageView, ImageView imageView2, LinearLayout linearLayout, MaterialCardView materialCardView, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.centerOfBadge = view;
        this.clBadgeContainer = constraintLayout2;
        this.ivBottomTextIcon = imageView;
        this.ivLogo = imageView2;
        this.llText = linearLayout;
        this.mcBadge = materialCardView;
        this.textContainer = linearLayout2;
        this.tvLeftText = textView;
        this.tvRightText = textView2;
        this.tvSubtitle = textView3;
        this.tvTitle = textView4;
    }

    public static ItemActivatedSubscriptionBadgeWithBottomTextBinding bind(View view) {
        int i = R.id.center_of_badge;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.center_of_badge);
        if (viewFindChildViewById != null) {
            i = R.id.cl_badge_container;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.cl_badge_container);
            if (constraintLayout != null) {
                i = R.id.iv_bottom_text_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bottom_text_icon);
                if (imageView != null) {
                    i = R.id.iv_logo;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                    if (imageView2 != null) {
                        i = R.id.ll_text;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_text);
                        if (linearLayout != null) {
                            i = R.id.mc_badge;
                            MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mc_badge);
                            if (materialCardView != null) {
                                i = R.id.text_container;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.text_container);
                                if (linearLayout2 != null) {
                                    i = R.id.tv_left_text;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_left_text);
                                    if (textView != null) {
                                        i = R.id.tv_right_text;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_right_text);
                                        if (textView2 != null) {
                                            i = R.id.tv_subtitle;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                                            if (textView3 != null) {
                                                i = R.id.tv_title;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                if (textView4 != null) {
                                                    return new ItemActivatedSubscriptionBadgeWithBottomTextBinding((ConstraintLayout) view, viewFindChildViewById, constraintLayout, imageView, imageView2, linearLayout, materialCardView, linearLayout2, textView, textView2, textView3, textView4);
                                                }
                                            }
                                        }
                                    }
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

    public static ItemActivatedSubscriptionBadgeWithBottomTextBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_activated_subscription_badge_with_bottom_text, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemActivatedSubscriptionBadgeWithBottomTextBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
