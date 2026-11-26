package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;
import com.warefly.checkscan.ui.bottomnavigationscan.BottomNavigationScan;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentDesktopBinding implements ViewBinding {
    public final ImageView animPlaceholder;
    public final FrameLayout bnContainer;
    public final BottomNavigationScan bottomNavigation;
    public final ImageView btnNotifications;
    public final ProfileBadgeView btnProfile;
    public final ShapeableImageView btnScan;
    public final ImageView btnWithdraw;
    public final FrameLayout desktopContainer;
    public final LayoutNoInternetBinding incldNoInternetView;
    public final ImageView ivBellRedDot;
    public final ImageView ivMainToolbar;
    public final ConstraintLayout layoutDesktop;
    public final ImageView menuCostyl;
    private final ConstraintLayout rootView;
    public final ConstraintLayout toolbarContent;
    public final TextView tvToolbar;

    private FragmentDesktopBinding(ConstraintLayout constraintLayout, ImageView imageView, FrameLayout frameLayout, BottomNavigationScan bottomNavigationScan, ImageView imageView2, ProfileBadgeView profileBadgeView, ShapeableImageView shapeableImageView, ImageView imageView3, FrameLayout frameLayout2, LayoutNoInternetBinding layoutNoInternetBinding, ImageView imageView4, ImageView imageView5, ConstraintLayout constraintLayout2, ImageView imageView6, ConstraintLayout constraintLayout3, TextView textView) {
        this.rootView = constraintLayout;
        this.animPlaceholder = imageView;
        this.bnContainer = frameLayout;
        this.bottomNavigation = bottomNavigationScan;
        this.btnNotifications = imageView2;
        this.btnProfile = profileBadgeView;
        this.btnScan = shapeableImageView;
        this.btnWithdraw = imageView3;
        this.desktopContainer = frameLayout2;
        this.incldNoInternetView = layoutNoInternetBinding;
        this.ivBellRedDot = imageView4;
        this.ivMainToolbar = imageView5;
        this.layoutDesktop = constraintLayout2;
        this.menuCostyl = imageView6;
        this.toolbarContent = constraintLayout3;
        this.tvToolbar = textView;
    }

    public static FragmentDesktopBinding bind(View view) {
        int i = R.id.anim_placeholder;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.anim_placeholder);
        if (imageView != null) {
            i = R.id.bn_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.bn_container);
            if (frameLayout != null) {
                i = R.id.bottom_navigation;
                BottomNavigationScan bottomNavigationScan = (BottomNavigationScan) ViewBindings.findChildViewById(view, R.id.bottom_navigation);
                if (bottomNavigationScan != null) {
                    i = R.id.btn_notifications;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_notifications);
                    if (imageView2 != null) {
                        i = R.id.btn_profile;
                        ProfileBadgeView profileBadgeView = (ProfileBadgeView) ViewBindings.findChildViewById(view, R.id.btn_profile);
                        if (profileBadgeView != null) {
                            i = R.id.btn_scan;
                            ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, R.id.btn_scan);
                            if (shapeableImageView != null) {
                                i = R.id.btn_withdraw;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_withdraw);
                                if (imageView3 != null) {
                                    i = R.id.desktop_container;
                                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.desktop_container);
                                    if (frameLayout2 != null) {
                                        i = R.id.incld_no_internet_view;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_no_internet_view);
                                        if (viewFindChildViewById != null) {
                                            LayoutNoInternetBinding layoutNoInternetBindingBind = LayoutNoInternetBinding.bind(viewFindChildViewById);
                                            i = R.id.iv_bell_red_dot;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bell_red_dot);
                                            if (imageView4 != null) {
                                                i = R.id.iv_main_toolbar;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_main_toolbar);
                                                if (imageView5 != null) {
                                                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                                    i = R.id.menu_costyl;
                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.menu_costyl);
                                                    if (imageView6 != null) {
                                                        i = R.id.toolbar_content;
                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.toolbar_content);
                                                        if (constraintLayout2 != null) {
                                                            i = R.id.tv_toolbar;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar);
                                                            if (textView != null) {
                                                                return new FragmentDesktopBinding(constraintLayout, imageView, frameLayout, bottomNavigationScan, imageView2, profileBadgeView, shapeableImageView, imageView3, frameLayout2, layoutNoInternetBindingBind, imageView4, imageView5, constraintLayout, imageView6, constraintLayout2, textView);
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

    public static FragmentDesktopBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_desktop, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentDesktopBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
