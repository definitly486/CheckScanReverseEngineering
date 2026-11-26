package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitleBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentWithdrawalMethodsBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final LayoutToolbarTitleBinding toolbar;

    private FragmentWithdrawalMethodsBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView, LayoutToolbarTitleBinding layoutToolbarTitleBinding) {
        this.rootView = constraintLayout;
        this.rvContent = recyclerView;
        this.toolbar = layoutToolbarTitleBinding;
    }

    public static FragmentWithdrawalMethodsBinding bind(View view) {
        int i = R.id.rv_content;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
        if (recyclerView != null) {
            i = R.id.toolbar;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
            if (viewFindChildViewById != null) {
                return new FragmentWithdrawalMethodsBinding((ConstraintLayout) view, recyclerView, LayoutToolbarTitleBinding.bind(viewFindChildViewById));
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentWithdrawalMethodsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_withdrawal_methods, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentWithdrawalMethodsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
