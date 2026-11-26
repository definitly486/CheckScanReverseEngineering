package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitle18TransparentBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentPromoSelectCardBinding implements ViewBinding {
    public final AppBarLayout appbarMotivation;
    public final CoordinatorLayout coordinatorContent;
    public final LayoutSimpleTryAgainBinding incldError;
    public final LayoutSpinnerLoadingBinding incldLoading;
    public final LinearLayout llFullTerms;
    public final LinearLayout llMotivationBanner;
    public final LinearLayout llMotivationInfo;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final LayoutToolbarTitle18TransparentBinding toolbar;
    public final TextView tvFullTerms;
    public final TextView tvMotivationDescription;
    public final TextView tvMotivationTitle;

    private FragmentPromoSelectCardBinding(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, CoordinatorLayout coordinatorLayout, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, RecyclerView recyclerView, LayoutToolbarTitle18TransparentBinding layoutToolbarTitle18TransparentBinding, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.appbarMotivation = appBarLayout;
        this.coordinatorContent = coordinatorLayout;
        this.incldError = layoutSimpleTryAgainBinding;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.llFullTerms = linearLayout;
        this.llMotivationBanner = linearLayout2;
        this.llMotivationInfo = linearLayout3;
        this.rvContent = recyclerView;
        this.toolbar = layoutToolbarTitle18TransparentBinding;
        this.tvFullTerms = textView;
        this.tvMotivationDescription = textView2;
        this.tvMotivationTitle = textView3;
    }

    public static FragmentPromoSelectCardBinding bind(View view) {
        int i = R.id.appbar_motivation;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbar_motivation);
        if (appBarLayout != null) {
            i = R.id.coordinator_content;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.coordinator_content);
            if (coordinatorLayout != null) {
                i = R.id.incld_error;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_error);
                if (viewFindChildViewById != null) {
                    LayoutSimpleTryAgainBinding layoutSimpleTryAgainBindingBind = LayoutSimpleTryAgainBinding.bind(viewFindChildViewById);
                    i = R.id.incld_loading;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_loading);
                    if (viewFindChildViewById2 != null) {
                        LayoutSpinnerLoadingBinding layoutSpinnerLoadingBindingBind = LayoutSpinnerLoadingBinding.bind(viewFindChildViewById2);
                        i = R.id.ll_full_terms;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_full_terms);
                        if (linearLayout != null) {
                            i = R.id.ll_motivation_banner;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_motivation_banner);
                            if (linearLayout2 != null) {
                                i = R.id.ll_motivation_info;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_motivation_info);
                                if (linearLayout3 != null) {
                                    i = R.id.rv_content;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                                    if (recyclerView != null) {
                                        i = R.id.toolbar;
                                        View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.toolbar);
                                        if (viewFindChildViewById3 != null) {
                                            LayoutToolbarTitle18TransparentBinding layoutToolbarTitle18TransparentBindingBind = LayoutToolbarTitle18TransparentBinding.bind(viewFindChildViewById3);
                                            i = R.id.tv_full_terms;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_full_terms);
                                            if (textView != null) {
                                                i = R.id.tv_motivation_description;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_motivation_description);
                                                if (textView2 != null) {
                                                    i = R.id.tv_motivation_title;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_motivation_title);
                                                    if (textView3 != null) {
                                                        return new FragmentPromoSelectCardBinding((ConstraintLayout) view, appBarLayout, coordinatorLayout, layoutSimpleTryAgainBindingBind, layoutSpinnerLoadingBindingBind, linearLayout, linearLayout2, linearLayout3, recyclerView, layoutToolbarTitle18TransparentBindingBind, textView, textView2, textView3);
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

    public static FragmentPromoSelectCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_promo_select_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPromoSelectCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
