package com.warefly.checkscan.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvProfileHeaderBinding implements ViewBinding {
    public final Barrier barrierEditData;
    public final MaterialCardView btnBadgeEdit;
    public final ImageView btnEdit;
    public final LayoutProfileActiveSubscriptionBadgeBinding incldActiveSubscriptionBadge;
    public final LayoutProfileAddEmailBadgeBinding incldAddEmailBadge;
    public final LayoutProfileExpiredSubscriptionBadgeBinding incldExpiredSubscriptionBadge;
    public final ImageView ivBadgeIcon;
    public final ImageView ivPhotoProfile;
    public final LinearLayout llData;
    private final MaterialCardView rootView;
    public final Barrier topBarrier;
    public final TextView tvBadgeTitle;
    public final TextView tvEmail;
    public final TextView tvPhone;
    public final TextView tvUsernameProfile;

    private ItemRvProfileHeaderBinding(MaterialCardView materialCardView, Barrier barrier, MaterialCardView materialCardView2, ImageView imageView, LayoutProfileActiveSubscriptionBadgeBinding layoutProfileActiveSubscriptionBadgeBinding, LayoutProfileAddEmailBadgeBinding layoutProfileAddEmailBadgeBinding, LayoutProfileExpiredSubscriptionBadgeBinding layoutProfileExpiredSubscriptionBadgeBinding, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout, Barrier barrier2, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = materialCardView;
        this.barrierEditData = barrier;
        this.btnBadgeEdit = materialCardView2;
        this.btnEdit = imageView;
        this.incldActiveSubscriptionBadge = layoutProfileActiveSubscriptionBadgeBinding;
        this.incldAddEmailBadge = layoutProfileAddEmailBadgeBinding;
        this.incldExpiredSubscriptionBadge = layoutProfileExpiredSubscriptionBadgeBinding;
        this.ivBadgeIcon = imageView2;
        this.ivPhotoProfile = imageView3;
        this.llData = linearLayout;
        this.topBarrier = barrier2;
        this.tvBadgeTitle = textView;
        this.tvEmail = textView2;
        this.tvPhone = textView3;
        this.tvUsernameProfile = textView4;
    }

    public static ItemRvProfileHeaderBinding bind(View view) {
        int i = R.id.barrier_edit_data;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_edit_data);
        if (barrier != null) {
            i = R.id.btn_badge_edit;
            MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.btn_badge_edit);
            if (materialCardView != null) {
                i = R.id.btn_edit;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_edit);
                if (imageView != null) {
                    i = R.id.incld_active_subscription_badge;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_active_subscription_badge);
                    if (viewFindChildViewById != null) {
                        LayoutProfileActiveSubscriptionBadgeBinding layoutProfileActiveSubscriptionBadgeBindingBind = LayoutProfileActiveSubscriptionBadgeBinding.bind(viewFindChildViewById);
                        i = R.id.incld_add_email_badge;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_add_email_badge);
                        if (viewFindChildViewById2 != null) {
                            LayoutProfileAddEmailBadgeBinding layoutProfileAddEmailBadgeBindingBind = LayoutProfileAddEmailBadgeBinding.bind(viewFindChildViewById2);
                            i = R.id.incld_expired_subscription_badge;
                            View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.incld_expired_subscription_badge);
                            if (viewFindChildViewById3 != null) {
                                LayoutProfileExpiredSubscriptionBadgeBinding layoutProfileExpiredSubscriptionBadgeBindingBind = LayoutProfileExpiredSubscriptionBadgeBinding.bind(viewFindChildViewById3);
                                i = R.id.iv_badge_icon;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge_icon);
                                if (imageView2 != null) {
                                    i = R.id.iv_photo_profile;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_photo_profile);
                                    if (imageView3 != null) {
                                        i = R.id.ll_data;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_data);
                                        if (linearLayout != null) {
                                            i = R.id.top_barrier;
                                            Barrier barrier2 = (Barrier) ViewBindings.findChildViewById(view, R.id.top_barrier);
                                            if (barrier2 != null) {
                                                i = R.id.tv_badge_title;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_badge_title);
                                                if (textView != null) {
                                                    i = R.id.tv_email;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_email);
                                                    if (textView2 != null) {
                                                        i = R.id.tv_phone;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_phone);
                                                        if (textView3 != null) {
                                                            i = R.id.tv_username_profile;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_username_profile);
                                                            if (textView4 != null) {
                                                                return new ItemRvProfileHeaderBinding((MaterialCardView) view, barrier, materialCardView, imageView, layoutProfileActiveSubscriptionBadgeBindingBind, layoutProfileAddEmailBadgeBindingBind, layoutProfileExpiredSubscriptionBadgeBindingBind, imageView2, imageView3, linearLayout, barrier2, textView, textView2, textView3, textView4);
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
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvProfileHeaderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_profile_header, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvProfileHeaderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
