package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentBankCardOptionsBinding implements ViewBinding {
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvBankOptions;
    public final LayoutToolbarSimpleTitleBinding toolbar;

    private FragmentBankCardOptionsBinding(ConstraintLayout constraintLayout, ProgressBar progressBar, RecyclerView recyclerView, LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding) {
        this.rootView = constraintLayout;
        this.pbLoading = progressBar;
        this.rvBankOptions = recyclerView;
        this.toolbar = layoutToolbarSimpleTitleBinding;
    }

    public static FragmentBankCardOptionsBinding bind(View view) {
        int i = R.id.pb_loading;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
        if (progressBar != null) {
            i = R.id.rv_bank_options;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_bank_options);
            if (recyclerView != null) {
                i = R.id.toolbar;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
                if (viewFindChildViewById != null) {
                    return new FragmentBankCardOptionsBinding((ConstraintLayout) view, progressBar, recyclerView, LayoutToolbarSimpleTitleBinding.bind(viewFindChildViewById));
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentBankCardOptionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_bank_card_options, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBankCardOptionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
