package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.ContentLoadingProgressBar;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentPointsProgramBinding implements ViewBinding {
    public final TextView btnWithdraw;
    public final FragmentContainerView fragmentContainerViewOperations;
    public final Group groupHeader;
    public final ContentLoadingProgressBar pbUpdateBalance;
    public final ConstraintLayout pinnedToolbar;
    private final CoordinatorLayout rootView;
    public final LayoutTermsHeadingBinding termsHeading;
    public final LayoutDescriptionBinding viewDescription;
    public final LayoutPlaceHeadingBinding viewHeading;
    public final LayoutPartnerLoadingPlaceholderBinding viewLoading;
    public final LayoutTryAgainBinding viewLoadingFailed;
    public final LayoutRewardListingBinding viewRewards;
    public final LayoutTextToolbarBinding viewToolbar;

    private FragmentPointsProgramBinding(CoordinatorLayout coordinatorLayout, TextView textView, FragmentContainerView fragmentContainerView, Group group, ContentLoadingProgressBar contentLoadingProgressBar, ConstraintLayout constraintLayout, LayoutTermsHeadingBinding layoutTermsHeadingBinding, LayoutDescriptionBinding layoutDescriptionBinding, LayoutPlaceHeadingBinding layoutPlaceHeadingBinding, LayoutPartnerLoadingPlaceholderBinding layoutPartnerLoadingPlaceholderBinding, LayoutTryAgainBinding layoutTryAgainBinding, LayoutRewardListingBinding layoutRewardListingBinding, LayoutTextToolbarBinding layoutTextToolbarBinding) {
        this.rootView = coordinatorLayout;
        this.btnWithdraw = textView;
        this.fragmentContainerViewOperations = fragmentContainerView;
        this.groupHeader = group;
        this.pbUpdateBalance = contentLoadingProgressBar;
        this.pinnedToolbar = constraintLayout;
        this.termsHeading = layoutTermsHeadingBinding;
        this.viewDescription = layoutDescriptionBinding;
        this.viewHeading = layoutPlaceHeadingBinding;
        this.viewLoading = layoutPartnerLoadingPlaceholderBinding;
        this.viewLoadingFailed = layoutTryAgainBinding;
        this.viewRewards = layoutRewardListingBinding;
        this.viewToolbar = layoutTextToolbarBinding;
    }

    public static FragmentPointsProgramBinding bind(View view) {
        int i = R.id.btn_withdraw;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_withdraw);
        if (textView != null) {
            i = R.id.fragment_container_view_operations;
            FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, R.id.fragment_container_view_operations);
            if (fragmentContainerView != null) {
                i = R.id.group_header;
                Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_header);
                if (group != null) {
                    i = R.id.pb_update_balance;
                    ContentLoadingProgressBar contentLoadingProgressBar = (ContentLoadingProgressBar) ViewBindings.findChildViewById(view, R.id.pb_update_balance);
                    if (contentLoadingProgressBar != null) {
                        i = R.id.pinned_toolbar;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.pinned_toolbar);
                        if (constraintLayout != null) {
                            i = R.id.terms_heading;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.terms_heading);
                            if (viewFindChildViewById != null) {
                                LayoutTermsHeadingBinding layoutTermsHeadingBindingBind = LayoutTermsHeadingBinding.bind(viewFindChildViewById);
                                i = R.id.view_description;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_description);
                                if (viewFindChildViewById2 != null) {
                                    LayoutDescriptionBinding layoutDescriptionBindingBind = LayoutDescriptionBinding.bind(viewFindChildViewById2);
                                    i = R.id.view_heading;
                                    View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.view_heading);
                                    if (viewFindChildViewById3 != null) {
                                        LayoutPlaceHeadingBinding layoutPlaceHeadingBindingBind = LayoutPlaceHeadingBinding.bind(viewFindChildViewById3);
                                        i = R.id.view_loading;
                                        View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.view_loading);
                                        if (viewFindChildViewById4 != null) {
                                            LayoutPartnerLoadingPlaceholderBinding layoutPartnerLoadingPlaceholderBindingBind = LayoutPartnerLoadingPlaceholderBinding.bind(viewFindChildViewById4);
                                            i = R.id.view_loading_failed;
                                            View viewFindChildViewById5 = ViewBindings.findChildViewById(view, R.id.view_loading_failed);
                                            if (viewFindChildViewById5 != null) {
                                                LayoutTryAgainBinding layoutTryAgainBindingBind = LayoutTryAgainBinding.bind(viewFindChildViewById5);
                                                i = R.id.view_rewards;
                                                View viewFindChildViewById6 = ViewBindings.findChildViewById(view, R.id.view_rewards);
                                                if (viewFindChildViewById6 != null) {
                                                    LayoutRewardListingBinding layoutRewardListingBindingBind = LayoutRewardListingBinding.bind(viewFindChildViewById6);
                                                    i = R.id.view_toolbar;
                                                    View viewFindChildViewById7 = ViewBindings.findChildViewById(view, R.id.view_toolbar);
                                                    if (viewFindChildViewById7 != null) {
                                                        return new FragmentPointsProgramBinding((CoordinatorLayout) view, textView, fragmentContainerView, group, contentLoadingProgressBar, constraintLayout, layoutTermsHeadingBindingBind, layoutDescriptionBindingBind, layoutPlaceHeadingBindingBind, layoutPartnerLoadingPlaceholderBindingBind, layoutTryAgainBindingBind, layoutRewardListingBindingBind, LayoutTextToolbarBinding.bind(viewFindChildViewById7));
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

    public static FragmentPointsProgramBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_points_program, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPointsProgramBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
