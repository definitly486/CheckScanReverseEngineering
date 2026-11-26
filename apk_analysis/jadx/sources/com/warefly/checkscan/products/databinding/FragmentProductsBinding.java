package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentProductsBinding implements ViewBinding {
    public final LayoutSimpleTryAgainBinding incldError;
    public final LayoutSpinnerLoadingBinding incldLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final SwipeRefreshLayout swipeToRefresh;

    private FragmentProductsBinding(ConstraintLayout constraintLayout, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.rootView = constraintLayout;
        this.incldError = layoutSimpleTryAgainBinding;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.rvContent = recyclerView;
        this.swipeToRefresh = swipeRefreshLayout;
    }

    public static FragmentProductsBinding bind(View view) {
        int i = R.id.incld_error;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_error);
        if (viewFindChildViewById != null) {
            LayoutSimpleTryAgainBinding layoutSimpleTryAgainBindingBind = LayoutSimpleTryAgainBinding.bind(viewFindChildViewById);
            i = R.id.incld_loading;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_loading);
            if (viewFindChildViewById2 != null) {
                LayoutSpinnerLoadingBinding layoutSpinnerLoadingBindingBind = LayoutSpinnerLoadingBinding.bind(viewFindChildViewById2);
                i = R.id.rv_content;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                if (recyclerView != null) {
                    i = R.id.swipe_to_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipe_to_refresh);
                    if (swipeRefreshLayout != null) {
                        return new FragmentProductsBinding((ConstraintLayout) view, layoutSimpleTryAgainBindingBind, layoutSpinnerLoadingBindingBind, recyclerView, swipeRefreshLayout);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentProductsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_products, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentProductsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
