package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.SafeImageView;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentCardOfferLandingBinding implements ViewBinding {
    public final CollapsingToolbarLayout appbar;
    public final ImageView btnBack;
    public final TextView btnIssueCard;
    public final CoordinatorLayout coordLayout;
    public final SafeImageView ivBanner;
    public final ShimmerFrameLayout ivLoading;
    public final FrameLayout layoutButtonIssueCard;
    private final CoordinatorLayout rootView;
    public final RecyclerView rvContent;
    public final AppBarLayout toolbarBanner;

    private FragmentCardOfferLandingBinding(CoordinatorLayout coordinatorLayout, CollapsingToolbarLayout collapsingToolbarLayout, ImageView imageView, TextView textView, CoordinatorLayout coordinatorLayout2, SafeImageView safeImageView, ShimmerFrameLayout shimmerFrameLayout, FrameLayout frameLayout, RecyclerView recyclerView, AppBarLayout appBarLayout) {
        this.rootView = coordinatorLayout;
        this.appbar = collapsingToolbarLayout;
        this.btnBack = imageView;
        this.btnIssueCard = textView;
        this.coordLayout = coordinatorLayout2;
        this.ivBanner = safeImageView;
        this.ivLoading = shimmerFrameLayout;
        this.layoutButtonIssueCard = frameLayout;
        this.rvContent = recyclerView;
        this.toolbarBanner = appBarLayout;
    }

    public static FragmentCardOfferLandingBinding bind(View view) {
        int i = R.id.appbar;
        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (collapsingToolbarLayout != null) {
            i = R.id.btn_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
            if (imageView != null) {
                i = R.id.btn_issue_card;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_issue_card);
                if (textView != null) {
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) view;
                    i = R.id.iv_banner;
                    SafeImageView safeImageView = (SafeImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                    if (safeImageView != null) {
                        i = R.id.iv_loading;
                        ShimmerFrameLayout shimmerFrameLayout = (ShimmerFrameLayout) ViewBindings.findChildViewById(view, R.id.iv_loading);
                        if (shimmerFrameLayout != null) {
                            i = R.id.layout_button_issue_card;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.layout_button_issue_card);
                            if (frameLayout != null) {
                                i = R.id.rv_content;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                                if (recyclerView != null) {
                                    i = R.id.toolbar_banner;
                                    AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.toolbar_banner);
                                    if (appBarLayout != null) {
                                        return new FragmentCardOfferLandingBinding(coordinatorLayout, collapsingToolbarLayout, imageView, textView, coordinatorLayout, safeImageView, shimmerFrameLayout, frameLayout, recyclerView, appBarLayout);
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

    public static FragmentCardOfferLandingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_card_offer_landing, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCardOfferLandingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
