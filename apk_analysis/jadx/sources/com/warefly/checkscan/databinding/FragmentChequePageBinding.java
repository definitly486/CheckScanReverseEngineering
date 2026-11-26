package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.infinityScrolling.HorizontalCarouselRecyclerViewNew;
import com.warefly.checkscan.design.resources.databinding.LayoutPreviewsLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentChequePageBinding implements ViewBinding {
    public final ImageView btnBack;
    public final ImageView btnShare;
    public final Group groupScanImitation;
    public final WaitLayoutBinding incldWaitScreen;
    public final ImageView ivQr;
    public final ConstraintLayout layoutCoupons;
    public final ItemInfoRejectCashbackBinding layoutInfoRejectCashback;
    public final ConstraintLayout layoutListProducts;
    public final ConstraintLayout layoutMainInfoShop;
    public final LayoutQrInfoBinding layoutQrInfo;
    public final ProgressBar pbItemsLoading;
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final HorizontalCarouselRecyclerViewNew rvBanners;
    public final RecyclerView rvChequeItems;
    public final RecyclerView rvCoupons;
    public final RecyclerView rvOperations;
    public final NestedScrollView scrollView;
    public final View toolbar;
    public final TextView tvCouponsFromCheckscan;
    public final TextView tvHeaderSum;
    public final TextView tvShopName;
    public final TextView tvSum;
    public final TextView tvToolbarTitle;
    public final LayoutTryAgainBinding viewFailedLoading;
    public final LayoutPreviewsLoadingBinding viewLoading;

    private FragmentChequePageBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, Group group, WaitLayoutBinding waitLayoutBinding, ImageView imageView3, ConstraintLayout constraintLayout2, ItemInfoRejectCashbackBinding itemInfoRejectCashbackBinding, ConstraintLayout constraintLayout3, ConstraintLayout constraintLayout4, LayoutQrInfoBinding layoutQrInfoBinding, ProgressBar progressBar, ProgressBar progressBar2, HorizontalCarouselRecyclerViewNew horizontalCarouselRecyclerViewNew, RecyclerView recyclerView, RecyclerView recyclerView2, RecyclerView recyclerView3, NestedScrollView nestedScrollView, View view, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, LayoutTryAgainBinding layoutTryAgainBinding, LayoutPreviewsLoadingBinding layoutPreviewsLoadingBinding) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.btnShare = imageView2;
        this.groupScanImitation = group;
        this.incldWaitScreen = waitLayoutBinding;
        this.ivQr = imageView3;
        this.layoutCoupons = constraintLayout2;
        this.layoutInfoRejectCashback = itemInfoRejectCashbackBinding;
        this.layoutListProducts = constraintLayout3;
        this.layoutMainInfoShop = constraintLayout4;
        this.layoutQrInfo = layoutQrInfoBinding;
        this.pbItemsLoading = progressBar;
        this.pbLoading = progressBar2;
        this.rvBanners = horizontalCarouselRecyclerViewNew;
        this.rvChequeItems = recyclerView;
        this.rvCoupons = recyclerView2;
        this.rvOperations = recyclerView3;
        this.scrollView = nestedScrollView;
        this.toolbar = view;
        this.tvCouponsFromCheckscan = textView;
        this.tvHeaderSum = textView2;
        this.tvShopName = textView3;
        this.tvSum = textView4;
        this.tvToolbarTitle = textView5;
        this.viewFailedLoading = layoutTryAgainBinding;
        this.viewLoading = layoutPreviewsLoadingBinding;
    }

    public static FragmentChequePageBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_share;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_share);
            if (imageView2 != null) {
                i = R.id.group_scan_imitation;
                Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_scan_imitation);
                if (group != null) {
                    i = R.id.incld_wait_screen;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_wait_screen);
                    if (viewFindChildViewById != null) {
                        WaitLayoutBinding waitLayoutBindingBind = WaitLayoutBinding.bind(viewFindChildViewById);
                        i = R.id.iv_qr;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_qr);
                        if (imageView3 != null) {
                            i = R.id.layout_coupons;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_coupons);
                            if (constraintLayout != null) {
                                i = R.id.layout_info_reject_cashback;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.layout_info_reject_cashback);
                                if (viewFindChildViewById2 != null) {
                                    ItemInfoRejectCashbackBinding itemInfoRejectCashbackBindingBind = ItemInfoRejectCashbackBinding.bind(viewFindChildViewById2);
                                    i = R.id.layout_list_products;
                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_list_products);
                                    if (constraintLayout2 != null) {
                                        i = R.id.layout_main_info_shop;
                                        ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.layout_main_info_shop);
                                        if (constraintLayout3 != null) {
                                            i = R.id.layout_qr_info;
                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.layout_qr_info);
                                            if (viewFindChildViewById3 != null) {
                                                LayoutQrInfoBinding layoutQrInfoBindingBind = LayoutQrInfoBinding.bind(viewFindChildViewById3);
                                                i = R.id.pb_items_loading;
                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_items_loading);
                                                if (progressBar != null) {
                                                    i = R.id.pb_loading;
                                                    ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
                                                    if (progressBar2 != null) {
                                                        i = R.id.rv_banners;
                                                        HorizontalCarouselRecyclerViewNew horizontalCarouselRecyclerViewNew = (HorizontalCarouselRecyclerViewNew) ViewBindings.findChildViewById(view, R.id.rv_banners);
                                                        if (horizontalCarouselRecyclerViewNew != null) {
                                                            i = R.id.rv_cheque_items;
                                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_cheque_items);
                                                            if (recyclerView != null) {
                                                                i = R.id.rv_coupons;
                                                                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_coupons);
                                                                if (recyclerView2 != null) {
                                                                    i = R.id.rv_operations;
                                                                    RecyclerView recyclerView3 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_operations);
                                                                    if (recyclerView3 != null) {
                                                                        i = R.id.scroll_view;
                                                                        NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.scroll_view);
                                                                        if (nestedScrollView != null) {
                                                                            i = R.id.toolbar;
                                                                            View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.toolbar);
                                                                            if (viewFindChildViewById4 != null) {
                                                                                i = R.id.tv_coupons_from_checkscan;
                                                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_coupons_from_checkscan);
                                                                                if (textView != null) {
                                                                                    i = R.id.tv_header_sum;
                                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_header_sum);
                                                                                    if (textView2 != null) {
                                                                                        i = R.id.tv_shop_name;
                                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_shop_name);
                                                                                        if (textView3 != null) {
                                                                                            i = R.id.tv_sum;
                                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sum);
                                                                                            if (textView4 != null) {
                                                                                                i = R.id.tv_toolbar_title;
                                                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                                                                                                if (textView5 != null) {
                                                                                                    i = R.id.view_failed_loading;
                                                                                                    View viewFindChildViewById5 = ViewBindings.findChildViewById(view, R.id.view_failed_loading);
                                                                                                    if (viewFindChildViewById5 != null) {
                                                                                                        LayoutTryAgainBinding layoutTryAgainBindingBind = LayoutTryAgainBinding.bind(viewFindChildViewById5);
                                                                                                        i = R.id.view_loading;
                                                                                                        View viewFindChildViewById6 = ViewBindings.findChildViewById(view, R.id.view_loading);
                                                                                                        if (viewFindChildViewById6 != null) {
                                                                                                            return new FragmentChequePageBinding((ConstraintLayout) view, imageView, imageView2, group, waitLayoutBindingBind, imageView3, constraintLayout, itemInfoRejectCashbackBindingBind, constraintLayout2, constraintLayout3, layoutQrInfoBindingBind, progressBar, progressBar2, horizontalCarouselRecyclerViewNew, recyclerView, recyclerView2, recyclerView3, nestedScrollView, viewFindChildViewById4, textView, textView2, textView3, textView4, textView5, layoutTryAgainBindingBind, LayoutPreviewsLoadingBinding.bind(viewFindChildViewById6));
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
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentChequePageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_cheque_page, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentChequePageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
