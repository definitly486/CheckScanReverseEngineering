package com.warefly.checkscan.tasks.databinding;

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
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.SafeImageView;
import com.warefly.checkscan.core.ui.databinding.ConfettiLayoutBinding;
import com.warefly.checkscan.shimmer.ShimmerFrameLayout;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentDailyTasksBinding implements ViewBinding {
    public final CollapsingToolbarLayout appbar;
    public final ImageView btnBack;
    public final LoadingButton btnGetReward;
    public final CoordinatorLayout coordLayout;
    public final ConfettiLayoutBinding incldConfetti;
    public final SafeImageView ivBanner;
    public final ShimmerFrameLayout ivLoading;
    public final LinearLayout layoutButtonGetReward;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final AppBarLayout toolbarBanner;

    private FragmentDailyTasksBinding(ConstraintLayout constraintLayout, CollapsingToolbarLayout collapsingToolbarLayout, ImageView imageView, LoadingButton loadingButton, CoordinatorLayout coordinatorLayout, ConfettiLayoutBinding confettiLayoutBinding, SafeImageView safeImageView, ShimmerFrameLayout shimmerFrameLayout, LinearLayout linearLayout, RecyclerView recyclerView, AppBarLayout appBarLayout) {
        this.rootView = constraintLayout;
        this.appbar = collapsingToolbarLayout;
        this.btnBack = imageView;
        this.btnGetReward = loadingButton;
        this.coordLayout = coordinatorLayout;
        this.incldConfetti = confettiLayoutBinding;
        this.ivBanner = safeImageView;
        this.ivLoading = shimmerFrameLayout;
        this.layoutButtonGetReward = linearLayout;
        this.rvContent = recyclerView;
        this.toolbarBanner = appBarLayout;
    }

    public static FragmentDailyTasksBinding bind(View view) {
        int i = R.id.appbar;
        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (collapsingToolbarLayout != null) {
            i = R.id.btn_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
            if (imageView != null) {
                i = R.id.btn_get_reward;
                LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_get_reward);
                if (loadingButton != null) {
                    i = R.id.coord_layout;
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.coord_layout);
                    if (coordinatorLayout != null) {
                        i = R.id.incld_confetti;
                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_confetti);
                        if (viewFindChildViewById != null) {
                            ConfettiLayoutBinding confettiLayoutBindingBind = ConfettiLayoutBinding.bind(viewFindChildViewById);
                            i = R.id.iv_banner;
                            SafeImageView safeImageView = (SafeImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                            if (safeImageView != null) {
                                i = R.id.iv_loading;
                                ShimmerFrameLayout shimmerFrameLayout = (ShimmerFrameLayout) ViewBindings.findChildViewById(view, R.id.iv_loading);
                                if (shimmerFrameLayout != null) {
                                    i = R.id.layout_button_get_reward;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_button_get_reward);
                                    if (linearLayout != null) {
                                        i = R.id.rv_content;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                                        if (recyclerView != null) {
                                            i = R.id.toolbar_banner;
                                            AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.toolbar_banner);
                                            if (appBarLayout != null) {
                                                return new FragmentDailyTasksBinding((ConstraintLayout) view, collapsingToolbarLayout, imageView, loadingButton, coordinatorLayout, confettiLayoutBindingBind, safeImageView, shimmerFrameLayout, linearLayout, recyclerView, appBarLayout);
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

    public static FragmentDailyTasksBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_daily_tasks, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentDailyTasksBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
