package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentCouponNewBinding implements ViewBinding {
    public final ConstraintLayout allBlocks;
    public final LoadingButton btnGoShop;
    public final ItemAdmitadNewDescriptionBinding layoutDescription;
    public final ItemAdmitadGetCashbackDescriptionBinding layoutGetCashbackInfo;
    public final ItemAdmitadPopularProductsBinding layoutPopularProducts;
    public final ItemCouponNewBinding layoutTitle;
    public final NestedScrollView nestedScroll;
    private final FrameLayout rootView;
    public final LayoutPartnerLoadingPlaceholderBinding viewLoading;
    public final LayoutTextToolbarBinding viewToolbar;

    private FragmentCouponNewBinding(FrameLayout frameLayout, ConstraintLayout constraintLayout, LoadingButton loadingButton, ItemAdmitadNewDescriptionBinding itemAdmitadNewDescriptionBinding, ItemAdmitadGetCashbackDescriptionBinding itemAdmitadGetCashbackDescriptionBinding, ItemAdmitadPopularProductsBinding itemAdmitadPopularProductsBinding, ItemCouponNewBinding itemCouponNewBinding, NestedScrollView nestedScrollView, LayoutPartnerLoadingPlaceholderBinding layoutPartnerLoadingPlaceholderBinding, LayoutTextToolbarBinding layoutTextToolbarBinding) {
        this.rootView = frameLayout;
        this.allBlocks = constraintLayout;
        this.btnGoShop = loadingButton;
        this.layoutDescription = itemAdmitadNewDescriptionBinding;
        this.layoutGetCashbackInfo = itemAdmitadGetCashbackDescriptionBinding;
        this.layoutPopularProducts = itemAdmitadPopularProductsBinding;
        this.layoutTitle = itemCouponNewBinding;
        this.nestedScroll = nestedScrollView;
        this.viewLoading = layoutPartnerLoadingPlaceholderBinding;
        this.viewToolbar = layoutTextToolbarBinding;
    }

    public static FragmentCouponNewBinding bind(View view) {
        int i = R.id.all_blocks;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.all_blocks);
        if (constraintLayout != null) {
            i = R.id.btn_go_shop;
            LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_go_shop);
            if (loadingButton != null) {
                i = R.id.layout_description;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.layout_description);
                if (viewFindChildViewById != null) {
                    ItemAdmitadNewDescriptionBinding itemAdmitadNewDescriptionBindingBind = ItemAdmitadNewDescriptionBinding.bind(viewFindChildViewById);
                    i = R.id.layout_get_cashback_info;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.layout_get_cashback_info);
                    if (viewFindChildViewById2 != null) {
                        ItemAdmitadGetCashbackDescriptionBinding itemAdmitadGetCashbackDescriptionBindingBind = ItemAdmitadGetCashbackDescriptionBinding.bind(viewFindChildViewById2);
                        i = R.id.layout_popular_products;
                        View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.layout_popular_products);
                        if (viewFindChildViewById3 != null) {
                            ItemAdmitadPopularProductsBinding itemAdmitadPopularProductsBindingBind = ItemAdmitadPopularProductsBinding.bind(viewFindChildViewById3);
                            i = R.id.layout_title;
                            View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.layout_title);
                            if (viewFindChildViewById4 != null) {
                                ItemCouponNewBinding itemCouponNewBindingBind = ItemCouponNewBinding.bind(viewFindChildViewById4);
                                i = R.id.nested_scroll;
                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.nested_scroll);
                                if (nestedScrollView != null) {
                                    i = R.id.view_loading;
                                    View viewFindChildViewById5 = ViewBindings.findChildViewById(view, R.id.view_loading);
                                    if (viewFindChildViewById5 != null) {
                                        LayoutPartnerLoadingPlaceholderBinding layoutPartnerLoadingPlaceholderBindingBind = LayoutPartnerLoadingPlaceholderBinding.bind(viewFindChildViewById5);
                                        i = R.id.view_toolbar;
                                        View viewFindChildViewById6 = ViewBindings.findChildViewById(view, R.id.view_toolbar);
                                        if (viewFindChildViewById6 != null) {
                                            return new FragmentCouponNewBinding((FrameLayout) view, constraintLayout, loadingButton, itemAdmitadNewDescriptionBindingBind, itemAdmitadGetCashbackDescriptionBindingBind, itemAdmitadPopularProductsBindingBind, itemCouponNewBindingBind, nestedScrollView, layoutPartnerLoadingPlaceholderBindingBind, LayoutTextToolbarBinding.bind(viewFindChildViewById6));
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

    public static FragmentCouponNewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_coupon_new, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCouponNewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
