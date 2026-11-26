package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentAdmitadNewBinding implements ViewBinding {
    public final ConstraintLayout allBlocks;
    public final TextView btnGoShop;
    public final ItemAdmitadNewDescriptionBinding layoutDescription;
    public final ItemAdmitadGetCashbackDescriptionBinding layoutGetCashbackInfo;
    public final ItemAdmitadOfferTakeOffBinding layoutOfferExpired;
    public final ItemAdmitadPopularProductsBinding layoutPopularProducts;
    public final ItemAdmitadPromocodeCouponsBinding layoutPromocodesCoupons;
    public final ItemAdmitadTitleBinding layoutTitle;
    public final NestedScrollView nestedScroll;
    private final FrameLayout rootView;
    public final LayoutPartnerLoadingPlaceholderBinding viewLoading;
    public final LayoutTextToolbarBinding viewToolbar;

    private FragmentAdmitadNewBinding(FrameLayout frameLayout, ConstraintLayout constraintLayout, TextView textView, ItemAdmitadNewDescriptionBinding itemAdmitadNewDescriptionBinding, ItemAdmitadGetCashbackDescriptionBinding itemAdmitadGetCashbackDescriptionBinding, ItemAdmitadOfferTakeOffBinding itemAdmitadOfferTakeOffBinding, ItemAdmitadPopularProductsBinding itemAdmitadPopularProductsBinding, ItemAdmitadPromocodeCouponsBinding itemAdmitadPromocodeCouponsBinding, ItemAdmitadTitleBinding itemAdmitadTitleBinding, NestedScrollView nestedScrollView, LayoutPartnerLoadingPlaceholderBinding layoutPartnerLoadingPlaceholderBinding, LayoutTextToolbarBinding layoutTextToolbarBinding) {
        this.rootView = frameLayout;
        this.allBlocks = constraintLayout;
        this.btnGoShop = textView;
        this.layoutDescription = itemAdmitadNewDescriptionBinding;
        this.layoutGetCashbackInfo = itemAdmitadGetCashbackDescriptionBinding;
        this.layoutOfferExpired = itemAdmitadOfferTakeOffBinding;
        this.layoutPopularProducts = itemAdmitadPopularProductsBinding;
        this.layoutPromocodesCoupons = itemAdmitadPromocodeCouponsBinding;
        this.layoutTitle = itemAdmitadTitleBinding;
        this.nestedScroll = nestedScrollView;
        this.viewLoading = layoutPartnerLoadingPlaceholderBinding;
        this.viewToolbar = layoutTextToolbarBinding;
    }

    public static FragmentAdmitadNewBinding bind(View view) {
        int i = R.id.all_blocks;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.all_blocks);
        if (constraintLayout != null) {
            i = R.id.btn_go_shop;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_go_shop);
            if (textView != null) {
                i = R.id.layout_description;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.layout_description);
                if (viewFindChildViewById != null) {
                    ItemAdmitadNewDescriptionBinding itemAdmitadNewDescriptionBindingBind = ItemAdmitadNewDescriptionBinding.bind(viewFindChildViewById);
                    i = R.id.layout_get_cashback_info;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.layout_get_cashback_info);
                    if (viewFindChildViewById2 != null) {
                        ItemAdmitadGetCashbackDescriptionBinding itemAdmitadGetCashbackDescriptionBindingBind = ItemAdmitadGetCashbackDescriptionBinding.bind(viewFindChildViewById2);
                        i = R.id.layout_offer_expired;
                        View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.layout_offer_expired);
                        if (viewFindChildViewById3 != null) {
                            ItemAdmitadOfferTakeOffBinding itemAdmitadOfferTakeOffBindingBind = ItemAdmitadOfferTakeOffBinding.bind(viewFindChildViewById3);
                            i = R.id.layout_popular_products;
                            View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.layout_popular_products);
                            if (viewFindChildViewById4 != null) {
                                ItemAdmitadPopularProductsBinding itemAdmitadPopularProductsBindingBind = ItemAdmitadPopularProductsBinding.bind(viewFindChildViewById4);
                                i = R.id.layout_promocodes_coupons;
                                View viewFindChildViewById5 = ViewBindings.findChildViewById(view, R.id.layout_promocodes_coupons);
                                if (viewFindChildViewById5 != null) {
                                    ItemAdmitadPromocodeCouponsBinding itemAdmitadPromocodeCouponsBindingBind = ItemAdmitadPromocodeCouponsBinding.bind(viewFindChildViewById5);
                                    i = R.id.layout_title;
                                    View viewFindChildViewById6 = ViewBindings.findChildViewById(view, R.id.layout_title);
                                    if (viewFindChildViewById6 != null) {
                                        ItemAdmitadTitleBinding itemAdmitadTitleBindingBind = ItemAdmitadTitleBinding.bind(viewFindChildViewById6);
                                        i = R.id.nested_scroll;
                                        NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.nested_scroll);
                                        if (nestedScrollView != null) {
                                            i = R.id.view_loading;
                                            View viewFindChildViewById7 = ViewBindings.findChildViewById(view, R.id.view_loading);
                                            if (viewFindChildViewById7 != null) {
                                                LayoutPartnerLoadingPlaceholderBinding layoutPartnerLoadingPlaceholderBindingBind = LayoutPartnerLoadingPlaceholderBinding.bind(viewFindChildViewById7);
                                                i = R.id.view_toolbar;
                                                View viewFindChildViewById8 = ViewBindings.findChildViewById(view, R.id.view_toolbar);
                                                if (viewFindChildViewById8 != null) {
                                                    return new FragmentAdmitadNewBinding((FrameLayout) view, constraintLayout, textView, itemAdmitadNewDescriptionBindingBind, itemAdmitadGetCashbackDescriptionBindingBind, itemAdmitadOfferTakeOffBindingBind, itemAdmitadPopularProductsBindingBind, itemAdmitadPromocodeCouponsBindingBind, itemAdmitadTitleBindingBind, nestedScrollView, layoutPartnerLoadingPlaceholderBindingBind, LayoutTextToolbarBinding.bind(viewFindChildViewById8));
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

    public static FragmentAdmitadNewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_admitad_new, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentAdmitadNewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
