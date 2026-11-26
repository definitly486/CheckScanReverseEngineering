package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
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
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitle18Binding;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentShopBinding implements ViewBinding {
    public final CollapsingToolbarLayout appbar;
    public final LinearLayout btnScan;
    public final CoordinatorLayout coordLayout;
    public final LayoutSimpleTryAgainBinding incldError;
    public final LayoutSpinnerLoadingBinding incldLoading;
    public final SafeImageView ivBanner;
    public final ShimmerFrameLayout ivLoading;
    public final ImageView ivLogo;
    public final MaterialCardView layoutButtonScan;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final LayoutToolbarTitle18Binding toolbar;
    public final AppBarLayout toolbarBanner;

    private FragmentShopBinding(ConstraintLayout constraintLayout, CollapsingToolbarLayout collapsingToolbarLayout, LinearLayout linearLayout, CoordinatorLayout coordinatorLayout, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, SafeImageView safeImageView, ShimmerFrameLayout shimmerFrameLayout, ImageView imageView, MaterialCardView materialCardView, RecyclerView recyclerView, LayoutToolbarTitle18Binding layoutToolbarTitle18Binding, AppBarLayout appBarLayout) {
        this.rootView = constraintLayout;
        this.appbar = collapsingToolbarLayout;
        this.btnScan = linearLayout;
        this.coordLayout = coordinatorLayout;
        this.incldError = layoutSimpleTryAgainBinding;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.ivBanner = safeImageView;
        this.ivLoading = shimmerFrameLayout;
        this.ivLogo = imageView;
        this.layoutButtonScan = materialCardView;
        this.rvContent = recyclerView;
        this.toolbar = layoutToolbarTitle18Binding;
        this.toolbarBanner = appBarLayout;
    }

    public static FragmentShopBinding bind(View view) {
        int i = R.id.appbar;
        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (collapsingToolbarLayout != null) {
            i = R.id.btn_scan;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.btn_scan);
            if (linearLayout != null) {
                i = R.id.coord_layout;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.coord_layout);
                if (coordinatorLayout != null) {
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
                                    i = R.id.iv_logo;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                                    if (imageView != null) {
                                        i = R.id.layout_button_scan;
                                        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.layout_button_scan);
                                        if (materialCardView != null) {
                                            i = R.id.rv_content;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                                            if (recyclerView != null) {
                                                i = R.id.toolbar;
                                                View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.toolbar);
                                                if (viewFindChildViewById3 != null) {
                                                    LayoutToolbarTitle18Binding layoutToolbarTitle18BindingBind = LayoutToolbarTitle18Binding.bind(viewFindChildViewById3);
                                                    i = R.id.toolbar_banner;
                                                    AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.toolbar_banner);
                                                    if (appBarLayout != null) {
                                                        return new FragmentShopBinding((ConstraintLayout) view, collapsingToolbarLayout, linearLayout, coordinatorLayout, layoutSimpleTryAgainBindingBind, layoutSpinnerLoadingBindingBind, safeImageView, shimmerFrameLayout, imageView, materialCardView, recyclerView, layoutToolbarTitle18BindingBind, appBarLayout);
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

    public static FragmentShopBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_shop, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentShopBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
