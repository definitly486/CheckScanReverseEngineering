package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitleTransparentBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentSelectPromocodeBinding implements ViewBinding {
    public final LayoutTryAgainBinding incldError;
    public final LayoutSpinnerLoadingBinding incldLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final LayoutToolbarTitleTransparentBinding toolbar;

    private FragmentSelectPromocodeBinding(ConstraintLayout constraintLayout, LayoutTryAgainBinding layoutTryAgainBinding, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, RecyclerView recyclerView, LayoutToolbarTitleTransparentBinding layoutToolbarTitleTransparentBinding) {
        this.rootView = constraintLayout;
        this.incldError = layoutTryAgainBinding;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.rvContent = recyclerView;
        this.toolbar = layoutToolbarTitleTransparentBinding;
    }

    public static FragmentSelectPromocodeBinding bind(View view) {
        int i = R.id.incld_error;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_error);
        if (viewFindChildViewById != null) {
            LayoutTryAgainBinding layoutTryAgainBindingBind = LayoutTryAgainBinding.bind(viewFindChildViewById);
            i = R.id.incld_loading;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_loading);
            if (viewFindChildViewById2 != null) {
                LayoutSpinnerLoadingBinding layoutSpinnerLoadingBindingBind = LayoutSpinnerLoadingBinding.bind(viewFindChildViewById2);
                i = R.id.rv_content;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                if (recyclerView != null) {
                    i = R.id.toolbar;
                    View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.toolbar);
                    if (viewFindChildViewById3 != null) {
                        return new FragmentSelectPromocodeBinding((ConstraintLayout) view, layoutTryAgainBindingBind, layoutSpinnerLoadingBindingBind, recyclerView, LayoutToolbarTitleTransparentBinding.bind(viewFindChildViewById3));
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentSelectPromocodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_select_promocode, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentSelectPromocodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
