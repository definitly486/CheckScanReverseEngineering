package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import com.warefly.checkscan.shared.infoBottomSheet.databinding.ItemInfoBadgeBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentTaskDetailsBinding implements ViewBinding {
    public final LoadingButton btnAction;
    public final LoadingButton btnClaimReward;
    public final ImageView btnClose;
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final LayoutSimpleTryAgainBinding incldError;
    public final ItemInfoBadgeBinding incldInfoBadge;
    public final LayoutSpinnerLoadingBinding incldLoadingSpinner;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final RecyclerView rvBadges;
    public final TextView tvTitle;

    private FragmentTaskDetailsBinding(ConstraintLayout constraintLayout, LoadingButton loadingButton, LoadingButton loadingButton2, ImageView imageView, LayoutAdsBadgeBinding layoutAdsBadgeBinding, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, ItemInfoBadgeBinding itemInfoBadgeBinding, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, ImageView imageView2, RecyclerView recyclerView, TextView textView) {
        this.rootView = constraintLayout;
        this.btnAction = loadingButton;
        this.btnClaimReward = loadingButton2;
        this.btnClose = imageView;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.incldError = layoutSimpleTryAgainBinding;
        this.incldInfoBadge = itemInfoBadgeBinding;
        this.incldLoadingSpinner = layoutSpinnerLoadingBinding;
        this.ivLogo = imageView2;
        this.rvBadges = recyclerView;
        this.tvTitle = textView;
    }

    public static FragmentTaskDetailsBinding bind(View view) {
        int i = R.id.btn_action;
        LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (loadingButton != null) {
            i = R.id.btn_claim_reward;
            LoadingButton loadingButton2 = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_claim_reward);
            if (loadingButton2 != null) {
                i = R.id.btn_close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
                if (imageView != null) {
                    i = R.id.incld_ads_badge;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
                    if (viewFindChildViewById != null) {
                        LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
                        i = R.id.incld_error;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_error);
                        if (viewFindChildViewById2 != null) {
                            LayoutSimpleTryAgainBinding layoutSimpleTryAgainBindingBind = LayoutSimpleTryAgainBinding.bind(viewFindChildViewById2);
                            i = R.id.incld_info_badge;
                            View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.incld_info_badge);
                            if (viewFindChildViewById3 != null) {
                                ItemInfoBadgeBinding itemInfoBadgeBindingBind = ItemInfoBadgeBinding.bind(viewFindChildViewById3);
                                i = R.id.incld_loading_spinner;
                                View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.incld_loading_spinner);
                                if (viewFindChildViewById4 != null) {
                                    LayoutSpinnerLoadingBinding layoutSpinnerLoadingBindingBind = LayoutSpinnerLoadingBinding.bind(viewFindChildViewById4);
                                    i = R.id.iv_logo;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                                    if (imageView2 != null) {
                                        i = R.id.rv_badges;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_badges);
                                        if (recyclerView != null) {
                                            i = R.id.tv_title;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                            if (textView != null) {
                                                return new FragmentTaskDetailsBinding((ConstraintLayout) view, loadingButton, loadingButton2, imageView, layoutAdsBadgeBindingBind, layoutSimpleTryAgainBindingBind, itemInfoBadgeBindingBind, layoutSpinnerLoadingBindingBind, imageView2, recyclerView, textView);
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

    public static FragmentTaskDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_task_details, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentTaskDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
