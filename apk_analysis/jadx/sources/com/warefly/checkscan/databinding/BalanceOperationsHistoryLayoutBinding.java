package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class BalanceOperationsHistoryLayoutBinding implements ViewBinding {
    public final TextView btnAllOperations;
    public final View dividerOperations;
    private final MaterialCardView rootView;
    public final RecyclerView rvOperations;
    public final TextView tvNoOperations;
    public final TextView tvOperations;

    private BalanceOperationsHistoryLayoutBinding(MaterialCardView materialCardView, TextView textView, View view, RecyclerView recyclerView, TextView textView2, TextView textView3) {
        this.rootView = materialCardView;
        this.btnAllOperations = textView;
        this.dividerOperations = view;
        this.rvOperations = recyclerView;
        this.tvNoOperations = textView2;
        this.tvOperations = textView3;
    }

    public static BalanceOperationsHistoryLayoutBinding bind(View view) {
        int i = R.id.btn_all_operations;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_all_operations);
        if (textView != null) {
            i = R.id.divider_operations;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.divider_operations);
            if (viewFindChildViewById != null) {
                i = R.id.rv_operations;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_operations);
                if (recyclerView != null) {
                    i = R.id.tv_no_operations;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_no_operations);
                    if (textView2 != null) {
                        i = R.id.tv_operations;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_operations);
                        if (textView3 != null) {
                            return new BalanceOperationsHistoryLayoutBinding((MaterialCardView) view, textView, viewFindChildViewById, recyclerView, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static BalanceOperationsHistoryLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.balance_operations_history_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static BalanceOperationsHistoryLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
