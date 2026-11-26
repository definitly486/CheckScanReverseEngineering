package com.warefly.checkscan.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitleTransparentBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentProfileBinding implements ViewBinding {
    public final LayoutSimpleTryAgainBinding incldError;
    public final LayoutSpinnerLoadingBinding incldLoading;
    private final LinearLayout rootView;
    public final RecyclerView rvContent;
    public final LayoutToolbarTitleTransparentBinding toolbar;

    private FragmentProfileBinding(LinearLayout linearLayout, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, RecyclerView recyclerView, LayoutToolbarTitleTransparentBinding layoutToolbarTitleTransparentBinding) {
        this.rootView = linearLayout;
        this.incldError = layoutSimpleTryAgainBinding;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.rvContent = recyclerView;
        this.toolbar = layoutToolbarTitleTransparentBinding;
    }

    public static FragmentProfileBinding bind(View view) {
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
                    i = R.id.toolbar;
                    View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.toolbar);
                    if (viewFindChildViewById3 != null) {
                        return new FragmentProfileBinding((LinearLayout) view, layoutSimpleTryAgainBindingBind, layoutSpinnerLoadingBindingBind, recyclerView, LayoutToolbarTitleTransparentBinding.bind(viewFindChildViewById3));
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_profile, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
