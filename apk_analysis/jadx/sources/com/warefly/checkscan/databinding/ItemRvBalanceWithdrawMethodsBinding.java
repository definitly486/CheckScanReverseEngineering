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
public final class ItemRvBalanceWithdrawMethodsBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final RecyclerView rvMethods;

    private ItemRvBalanceWithdrawMethodsBinding(ConstraintLayout constraintLayout, RecyclerView recyclerView) {
        this.rootView = constraintLayout;
        this.rvMethods = recyclerView;
    }

    public static ItemRvBalanceWithdrawMethodsBinding bind(View view) {
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_methods);
        if (recyclerView != null) {
            return new ItemRvBalanceWithdrawMethodsBinding((ConstraintLayout) view, recyclerView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.rv_methods)));
        return null;
    }

    public static ItemRvBalanceWithdrawMethodsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_withdraw_methods, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceWithdrawMethodsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
