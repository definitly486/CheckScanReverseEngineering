package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentOperationsBinding implements ViewBinding {
    public final TextView btnLoadMore;
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvOperations;
    public final TextView tvHeader;
    public final LayoutTryAgainBinding viewTryAgain;

    private FragmentOperationsBinding(ConstraintLayout constraintLayout, TextView textView, ProgressBar progressBar, RecyclerView recyclerView, TextView textView2, LayoutTryAgainBinding layoutTryAgainBinding) {
        this.rootView = constraintLayout;
        this.btnLoadMore = textView;
        this.pbLoading = progressBar;
        this.rvOperations = recyclerView;
        this.tvHeader = textView2;
        this.viewTryAgain = layoutTryAgainBinding;
    }

    public static FragmentOperationsBinding bind(View view) {
        int i = R.id.btn_load_more;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_load_more);
        if (textView != null) {
            i = R.id.pb_loading;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
            if (progressBar != null) {
                i = R.id.rv_operations;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_operations);
                if (recyclerView != null) {
                    i = R.id.tv_header;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_header);
                    if (textView2 != null) {
                        i = R.id.view_try_again;
                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_try_again);
                        if (viewFindChildViewById != null) {
                            return new FragmentOperationsBinding((ConstraintLayout) view, textView, progressBar, recyclerView, textView2, LayoutTryAgainBinding.bind(viewFindChildViewById));
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentOperationsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_operations, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentOperationsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
