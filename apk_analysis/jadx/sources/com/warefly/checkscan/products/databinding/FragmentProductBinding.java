package com.warefly.checkscan.products.databinding;

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
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.SafeImageView;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentProductBinding implements ViewBinding {
    public final CollapsingToolbarLayout appbar;
    public final ImageView btnBack;
    public final LinearLayout btnScan;
    public final CoordinatorLayout coordLayout;
    public final LayoutSimpleTryAgainBinding incldError;
    public final LayoutSpinnerLoadingBinding incldLoading;
    public final SafeImageView ivBanner;
    public final ShimmerFrameLayout ivLoading;
    public final MaterialCardView layoutButtonScan;
    private final CoordinatorLayout rootView;
    public final RecyclerView rvContent;
    public final AppBarLayout toolbarBanner;

    private FragmentProductBinding(CoordinatorLayout coordinatorLayout, CollapsingToolbarLayout collapsingToolbarLayout, ImageView imageView, LinearLayout linearLayout, CoordinatorLayout coordinatorLayout2, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, SafeImageView safeImageView, ShimmerFrameLayout shimmerFrameLayout, MaterialCardView materialCardView, RecyclerView recyclerView, AppBarLayout appBarLayout) {
        this.rootView = coordinatorLayout;
        this.appbar = collapsingToolbarLayout;
        this.btnBack = imageView;
        this.btnScan = linearLayout;
        this.coordLayout = coordinatorLayout2;
        this.incldError = layoutSimpleTryAgainBinding;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.ivBanner = safeImageView;
        this.ivLoading = shimmerFrameLayout;
        this.layoutButtonScan = materialCardView;
        this.rvContent = recyclerView;
        this.toolbarBanner = appBarLayout;
    }

    public static FragmentProductBinding bind(View view) {
        int i = R.id.appbar;
        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (collapsingToolbarLayout != null) {
            i = R.id.btn_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
            if (imageView != null) {
                i = R.id.btn_scan;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.btn_scan);
                if (linearLayout != null) {
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) view;
                    i = R.id.incld_error;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_error);
                    if (viewFindChildViewById != null) {
                        LayoutSimpleTryAgainBinding layoutSimpleTryAgainBindingBind = LayoutSimpleTryAgainBinding.bind(viewFindChildViewById);
                        i = R.id.incld_loading;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_loading);
                        if (viewFindChildViewById2 != null) {
                            LayoutSpinnerLoadingBinding layoutSpinnerLoadingBindingBind = LayoutSpinnerLoadingBinding.bind(viewFindChildViewById2);
                            i = R.id.iv_banner;
                            SafeImageView safeImageView = (SafeImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                            if (safeImageView != null) {
                                i = R.id.iv_loading;
                                ShimmerFrameLayout shimmerFrameLayout = (ShimmerFrameLayout) ViewBindings.findChildViewById(view, R.id.iv_loading);
                                if (shimmerFrameLayout != null) {
                                    i = R.id.layout_button_scan;
                                    MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.layout_button_scan);
                                    if (materialCardView != null) {
                                        i = R.id.rv_content;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                                        if (recyclerView != null) {
                                            i = R.id.toolbar_banner;
                                            AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.toolbar_banner);
                                            if (appBarLayout != null) {
                                                return new FragmentProductBinding(coordinatorLayout, collapsingToolbarLayout, imageView, linearLayout, coordinatorLayout, layoutSimpleTryAgainBindingBind, layoutSpinnerLoadingBindingBind, safeImageView, shimmerFrameLayout, materialCardView, recyclerView, appBarLayout);
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

    public static FragmentProductBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_product, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static FragmentProductBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
