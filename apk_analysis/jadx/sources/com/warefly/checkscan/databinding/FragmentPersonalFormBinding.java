package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitleWithTextButtonBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentPersonalFormBinding implements ViewBinding {
    public final LoadingSpinnerBinding incldLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final LayoutToolbarTitleWithTextButtonBinding toolbar;

    private FragmentPersonalFormBinding(ConstraintLayout constraintLayout, LoadingSpinnerBinding loadingSpinnerBinding, RecyclerView recyclerView, LayoutToolbarTitleWithTextButtonBinding layoutToolbarTitleWithTextButtonBinding) {
        this.rootView = constraintLayout;
        this.incldLoading = loadingSpinnerBinding;
        this.rvContent = recyclerView;
        this.toolbar = layoutToolbarTitleWithTextButtonBinding;
    }

    public static FragmentPersonalFormBinding bind(View view) {
        int i = R.id.incld_loading;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_loading);
        if (viewFindChildViewById != null) {
            LoadingSpinnerBinding loadingSpinnerBindingBind = LoadingSpinnerBinding.bind(viewFindChildViewById);
            int i2 = R.id.rv_content;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
            if (recyclerView != null) {
                i2 = R.id.toolbar;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.toolbar);
                if (viewFindChildViewById2 != null) {
                    return new FragmentPersonalFormBinding((ConstraintLayout) view, loadingSpinnerBindingBind, recyclerView, LayoutToolbarTitleWithTextButtonBinding.bind(viewFindChildViewById2));
                }
            }
            i = i2;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentPersonalFormBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_personal_form, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPersonalFormBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
