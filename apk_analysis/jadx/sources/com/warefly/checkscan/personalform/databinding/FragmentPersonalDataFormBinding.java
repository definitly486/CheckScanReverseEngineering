package com.warefly.checkscan.personalform.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitleWithTextButtonTransparentBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentPersonalDataFormBinding implements ViewBinding {
    public final LayoutSpinnerLoadingBinding incldLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final LayoutToolbarTitleWithTextButtonTransparentBinding toolbar;

    private FragmentPersonalDataFormBinding(ConstraintLayout constraintLayout, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, RecyclerView recyclerView, LayoutToolbarTitleWithTextButtonTransparentBinding layoutToolbarTitleWithTextButtonTransparentBinding) {
        this.rootView = constraintLayout;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.rvContent = recyclerView;
        this.toolbar = layoutToolbarTitleWithTextButtonTransparentBinding;
    }

    public static FragmentPersonalDataFormBinding bind(View view) {
        int i = R.id.incld_loading;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_loading);
        if (viewFindChildViewById != null) {
            LayoutSpinnerLoadingBinding layoutSpinnerLoadingBindingBind = LayoutSpinnerLoadingBinding.bind(viewFindChildViewById);
            int i2 = R.id.rv_content;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
            if (recyclerView != null) {
                i2 = R.id.toolbar;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.toolbar);
                if (viewFindChildViewById2 != null) {
                    return new FragmentPersonalDataFormBinding((ConstraintLayout) view, layoutSpinnerLoadingBindingBind, recyclerView, LayoutToolbarTitleWithTextButtonTransparentBinding.bind(viewFindChildViewById2));
                }
            }
            i = i2;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentPersonalDataFormBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_personal_data_form, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPersonalDataFormBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
