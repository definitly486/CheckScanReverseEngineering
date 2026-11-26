package com.warefly.checkscan.offerLanding.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.SafeImageView;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentOfferLandingBinding implements ViewBinding {
    public final CollapsingToolbarLayout appbar;
    public final ImageView btnBack;
    public final LoadingButton btnIssueCard;
    public final CoordinatorLayout coordLayout;
    public final SafeImageView ivBanner;
    public final ShimmerFrameLayout ivLoading;
    public final LinearLayout layoutButtonIssueCard;
    private final CoordinatorLayout rootView;
    public final RecyclerView rvContent;
    public final AppBarLayout toolbarBanner;

    private FragmentOfferLandingBinding(CoordinatorLayout coordinatorLayout, CollapsingToolbarLayout collapsingToolbarLayout, ImageView imageView, LoadingButton loadingButton, CoordinatorLayout coordinatorLayout2, SafeImageView safeImageView, ShimmerFrameLayout shimmerFrameLayout, LinearLayout linearLayout, RecyclerView recyclerView, AppBarLayout appBarLayout) {
        this.rootView = coordinatorLayout;
        this.appbar = collapsingToolbarLayout;
        this.btnBack = imageView;
        this.btnIssueCard = loadingButton;
        this.coordLayout = coordinatorLayout2;
        this.ivBanner = safeImageView;
        this.ivLoading = shimmerFrameLayout;
        this.layoutButtonIssueCard = linearLayout;
        this.rvContent = recyclerView;
        this.toolbarBanner = appBarLayout;
    }

    public static FragmentOfferLandingBinding bind(View view) {
        int i = R.id.appbar;
        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (collapsingToolbarLayout != null) {
            i = R.id.btn_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
            if (imageView != null) {
                i = R.id.btn_issue_card;
                LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_issue_card);
                if (loadingButton != null) {
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) view;
                    i = R.id.iv_banner;
                    SafeImageView safeImageView = (SafeImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                    if (safeImageView != null) {
                        i = R.id.iv_loading;
                        ShimmerFrameLayout shimmerFrameLayout = (ShimmerFrameLayout) ViewBindings.findChildViewById(view, R.id.iv_loading);
                        if (shimmerFrameLayout != null) {
                            i = R.id.layout_button_issue_card;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_button_issue_card);
                            if (linearLayout != null) {
                                i = R.id.rv_content;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                                if (recyclerView != null) {
                                    i = R.id.toolbar_banner;
                                    AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.toolbar_banner);
                                    if (appBarLayout != null) {
                                        return new FragmentOfferLandingBinding(coordinatorLayout, collapsingToolbarLayout, imageView, loadingButton, coordinatorLayout, safeImageView, shimmerFrameLayout, linearLayout, recyclerView, appBarLayout);
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

    public static FragmentOfferLandingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_offer_landing, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static FragmentOfferLandingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
