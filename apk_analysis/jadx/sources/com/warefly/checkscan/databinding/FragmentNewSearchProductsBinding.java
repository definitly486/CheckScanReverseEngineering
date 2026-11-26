package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.SmartNestedScrollView;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentNewSearchProductsBinding implements ViewBinding {
    public final ConstraintLayout mainLayout;
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvChips;
    public final RecyclerView rvProducts;
    public final RecyclerView rvShops;
    public final SmartNestedScrollView smartNested;
    public final ToolbarSearchNewBinding toolbarSearch;
    public final TextView tvHeaderProductInCheque;
    public final TextView tvHeaderShopInCheque;

    private FragmentNewSearchProductsBinding(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ProgressBar progressBar, RecyclerView recyclerView, RecyclerView recyclerView2, RecyclerView recyclerView3, SmartNestedScrollView smartNestedScrollView, ToolbarSearchNewBinding toolbarSearchNewBinding, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.mainLayout = constraintLayout2;
        this.pbLoading = progressBar;
        this.rvChips = recyclerView;
        this.rvProducts = recyclerView2;
        this.rvShops = recyclerView3;
        this.smartNested = smartNestedScrollView;
        this.toolbarSearch = toolbarSearchNewBinding;
        this.tvHeaderProductInCheque = textView;
        this.tvHeaderShopInCheque = textView2;
    }

    public static FragmentNewSearchProductsBinding bind(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = R.id.pb_loading;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
        if (progressBar != null) {
            i = R.id.rv_chips;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_chips);
            if (recyclerView != null) {
                i = R.id.rv_products;
                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_products);
                if (recyclerView2 != null) {
                    i = R.id.rv_shops;
                    RecyclerView recyclerView3 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_shops);
                    if (recyclerView3 != null) {
                        i = R.id.smart_nested;
                        SmartNestedScrollView smartNestedScrollView = (SmartNestedScrollView) ViewBindings.findChildViewById(view, R.id.smart_nested);
                        if (smartNestedScrollView != null) {
                            i = R.id.toolbar_search;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar_search);
                            if (viewFindChildViewById != null) {
                                ToolbarSearchNewBinding toolbarSearchNewBindingBind = ToolbarSearchNewBinding.bind(viewFindChildViewById);
                                i = R.id.tv_header_product_in_cheque;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_header_product_in_cheque);
                                if (textView != null) {
                                    i = R.id.tv_header_shop_in_cheque;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_header_shop_in_cheque);
                                    if (textView2 != null) {
                                        return new FragmentNewSearchProductsBinding(constraintLayout, constraintLayout, progressBar, recyclerView, recyclerView2, recyclerView3, smartNestedScrollView, toolbarSearchNewBindingBind, textView, textView2);
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

    public static FragmentNewSearchProductsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_new_search_products, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentNewSearchProductsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
