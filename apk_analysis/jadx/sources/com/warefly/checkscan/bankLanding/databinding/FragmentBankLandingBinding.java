package com.warefly.checkscan.bankLanding.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
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
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentBankLandingBinding implements ViewBinding {
    public final CollapsingToolbarLayout appbar;
    public final ImageView btnBack;
    public final TextView btnIssueCard;
    public final CoordinatorLayout coordLayout;
    public final LayoutSimpleTryAgainBinding incldError;
    public final LayoutSpinnerLoadingBinding incldLoading;
    public final SafeImageView ivBanner;
    public final MaterialCardView mcvIssueCard;
    private final CoordinatorLayout rootView;
    public final RecyclerView rvContent;
    public final AppBarLayout toolbarBanner;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private FragmentBankLandingBinding(CoordinatorLayout coordinatorLayout, CollapsingToolbarLayout collapsingToolbarLayout, ImageView imageView, TextView textView, CoordinatorLayout coordinatorLayout2, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, SafeImageView safeImageView, MaterialCardView materialCardView, RecyclerView recyclerView, AppBarLayout appBarLayout, TextView textView2, TextView textView3) {
        this.rootView = coordinatorLayout;
        this.appbar = collapsingToolbarLayout;
        this.btnBack = imageView;
        this.btnIssueCard = textView;
        this.coordLayout = coordinatorLayout2;
        this.incldError = layoutSimpleTryAgainBinding;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.ivBanner = safeImageView;
        this.mcvIssueCard = materialCardView;
        this.rvContent = recyclerView;
        this.toolbarBanner = appBarLayout;
        this.tvSubtitle = textView2;
        this.tvTitle = textView3;
    }

    public static FragmentBankLandingBinding bind(View view) {
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
                                i = R.id.mcv_issue_card;
                                MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mcv_issue_card);
                                if (materialCardView != null) {
                                    i = R.id.rv_content;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                                    if (recyclerView != null) {
                                        i = R.id.toolbar_banner;
                                        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.toolbar_banner);
                                        if (appBarLayout != null) {
                                            i = R.id.tv_subtitle;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                                            if (textView2 != null) {
                                                i = R.id.tv_title;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                if (textView3 != null) {
                                                    return new FragmentBankLandingBinding(coordinatorLayout, collapsingToolbarLayout, imageView, textView, coordinatorLayout, layoutSimpleTryAgainBindingBind, layoutSpinnerLoadingBindingBind, safeImageView, materialCardView, recyclerView, appBarLayout, textView2, textView3);
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

    public static FragmentBankLandingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_bank_landing, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBankLandingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
