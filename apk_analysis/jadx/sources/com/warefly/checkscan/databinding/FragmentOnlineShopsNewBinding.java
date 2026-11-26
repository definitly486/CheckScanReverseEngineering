package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.design.resources.databinding.LayoutPreviewsLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentOnlineShopsNewBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final RecyclerView rvAll;
    public final LayoutToolbarSimpleTitleBinding toolbar;
    public final LayoutPreviewsLoadingBinding viewLoading;

    private FragmentOnlineShopsNewBinding(LinearLayout linearLayout, RecyclerView recyclerView, LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding, LayoutPreviewsLoadingBinding layoutPreviewsLoadingBinding) {
        this.rootView = linearLayout;
        this.rvAll = recyclerView;
        this.toolbar = layoutToolbarSimpleTitleBinding;
        this.viewLoading = layoutPreviewsLoadingBinding;
    }

    public static FragmentOnlineShopsNewBinding bind(View view) {
        int i = R.id.rv_all;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_all);
        if (recyclerView != null) {
            i = R.id.toolbar;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
            if (viewFindChildViewById != null) {
                LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBindingBind = LayoutToolbarSimpleTitleBinding.bind(viewFindChildViewById);
                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_loading);
                if (viewFindChildViewById2 != null) {
                    return new FragmentOnlineShopsNewBinding((LinearLayout) view, recyclerView, layoutToolbarSimpleTitleBindingBind, LayoutPreviewsLoadingBinding.bind(viewFindChildViewById2));
                }
                i = R.id.view_loading;
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentOnlineShopsNewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_online_shops_new, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentOnlineShopsNewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
