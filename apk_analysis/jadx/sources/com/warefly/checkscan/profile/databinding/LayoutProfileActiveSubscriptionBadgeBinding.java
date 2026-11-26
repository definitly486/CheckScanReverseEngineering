package com.warefly.checkscan.profile.databinding;

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
public final class LayoutProfileActiveSubscriptionBadgeBinding implements ViewBinding {
    public final ImageView ivAdditionalIcon;
    public final ImageView ivWarning;
    public final LinearLayout llAdditional;
    public final MaterialCardView mcvActive;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvLeftText;
    public final TextView tvRightText;
    public final TextView tvTitle;

    private LayoutProfileActiveSubscriptionBadgeBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, LinearLayout linearLayout, MaterialCardView materialCardView, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.ivAdditionalIcon = imageView;
        this.ivWarning = imageView2;
        this.llAdditional = linearLayout;
        this.mcvActive = materialCardView;
        this.tvDescription = textView;
        this.tvLeftText = textView2;
        this.tvRightText = textView3;
        this.tvTitle = textView4;
    }

    public static LayoutProfileActiveSubscriptionBadgeBinding bind(View view) {
        int i = R.id.iv_additional_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_additional_icon);
        if (imageView != null) {
            i = R.id.iv_warning;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_warning);
            if (imageView2 != null) {
                i = R.id.ll_additional;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_additional);
                if (linearLayout != null) {
                    i = R.id.mcv_active;
                    MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mcv_active);
                    if (materialCardView != null) {
                        i = R.id.tv_description;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                        if (textView != null) {
                            i = R.id.tv_left_text;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_left_text);
                            if (textView2 != null) {
                                i = R.id.tv_right_text;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_right_text);
                                if (textView3 != null) {
                                    i = R.id.tv_title;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                    if (textView4 != null) {
                                        return new LayoutProfileActiveSubscriptionBadgeBinding((ConstraintLayout) view, imageView, imageView2, linearLayout, materialCardView, textView, textView2, textView3, textView4);
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

    public static LayoutProfileActiveSubscriptionBadgeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_profile_active_subscription_badge, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutProfileActiveSubscriptionBadgeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
