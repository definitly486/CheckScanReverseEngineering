package com.warefly.checkscan.bonuses.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutBonusesToolbarBinding implements ViewBinding {
    public final ImageView btnNotifications;
    public final ProfileBadgeView btnProfile;
    public final MaterialCardView btnSearch;
    public final ImageView ivBellRedDot;
    private final ConstraintLayout rootView;
    public final ConstraintLayout toolbarContent;
    public final TextView tvSearch;

    private LayoutBonusesToolbarBinding(ConstraintLayout constraintLayout, ImageView imageView, ProfileBadgeView profileBadgeView, MaterialCardView materialCardView, ImageView imageView2, ConstraintLayout constraintLayout2, TextView textView) {
        this.rootView = constraintLayout;
        this.btnNotifications = imageView;
        this.btnProfile = profileBadgeView;
        this.btnSearch = materialCardView;
        this.ivBellRedDot = imageView2;
        this.toolbarContent = constraintLayout2;
        this.tvSearch = textView;
    }

    public static LayoutBonusesToolbarBinding bind(View view) {
        int i = R.id.btn_notifications;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_notifications);
        if (imageView != null) {
            i = R.id.btn_profile;
            ProfileBadgeView profileBadgeView = (ProfileBadgeView) ViewBindings.findChildViewById(view, R.id.btn_profile);
            if (profileBadgeView != null) {
                i = R.id.btn_search;
                MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.btn_search);
                if (materialCardView != null) {
                    i = R.id.iv_bell_red_dot;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bell_red_dot);
                    if (imageView2 != null) {
                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                        i = R.id.tv_search;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_search);
                        if (textView != null) {
                            return new LayoutBonusesToolbarBinding(constraintLayout, imageView, profileBadgeView, materialCardView, imageView2, constraintLayout, textView);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutBonusesToolbarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_bonuses_toolbar, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutBonusesToolbarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
