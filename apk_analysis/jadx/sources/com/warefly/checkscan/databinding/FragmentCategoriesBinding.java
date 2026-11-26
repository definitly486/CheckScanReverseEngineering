package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentCategoriesBinding implements ViewBinding {
    public final BonusesCategoriesLoadingBinding incldLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvCategories;
    public final LayoutToolbarSimpleTitleBinding toolbar;

    private FragmentCategoriesBinding(ConstraintLayout constraintLayout, BonusesCategoriesLoadingBinding bonusesCategoriesLoadingBinding, RecyclerView recyclerView, LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding) {
        this.rootView = constraintLayout;
        this.incldLoading = bonusesCategoriesLoadingBinding;
        this.rvCategories = recyclerView;
        this.toolbar = layoutToolbarSimpleTitleBinding;
    }

    public static FragmentCategoriesBinding bind(View view) {
        int i = R.id.incld_loading;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_loading);
        if (viewFindChildViewById != null) {
            BonusesCategoriesLoadingBinding bonusesCategoriesLoadingBindingBind = BonusesCategoriesLoadingBinding.bind(viewFindChildViewById);
            int i2 = R.id.rv_categories;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_categories);
            if (recyclerView != null) {
                i2 = R.id.toolbar;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.toolbar);
                if (viewFindChildViewById2 != null) {
                    return new FragmentCategoriesBinding((ConstraintLayout) view, bonusesCategoriesLoadingBindingBind, recyclerView, LayoutToolbarSimpleTitleBinding.bind(viewFindChildViewById2));
                }
            }
            i = i2;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentCategoriesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_categories, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCategoriesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
