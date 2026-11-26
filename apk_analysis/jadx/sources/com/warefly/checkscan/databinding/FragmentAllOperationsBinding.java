package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentAllOperationsBinding implements ViewBinding {
    public final Barrier barrierFilter;
    public final ImageView btnChooseFilter;
    public final ImageView btnRemoveFilter;
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvOperations;
    public final LayoutToolbarSimpleTitleBinding toolbar;
    public final TextView tvFilterName;
    public final LayoutTryAgainBinding viewTryAgain;

    private FragmentAllOperationsBinding(ConstraintLayout constraintLayout, Barrier barrier, ImageView imageView, ImageView imageView2, ProgressBar progressBar, RecyclerView recyclerView, LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding, TextView textView, LayoutTryAgainBinding layoutTryAgainBinding) {
        this.rootView = constraintLayout;
        this.barrierFilter = barrier;
        this.btnChooseFilter = imageView;
        this.btnRemoveFilter = imageView2;
        this.pbLoading = progressBar;
        this.rvOperations = recyclerView;
        this.toolbar = layoutToolbarSimpleTitleBinding;
        this.tvFilterName = textView;
        this.viewTryAgain = layoutTryAgainBinding;
    }

    public static FragmentAllOperationsBinding bind(View view) {
        int i = R.id.barrier_filter;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_filter);
        if (barrier != null) {
            i = R.id.btn_choose_filter;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_choose_filter);
            if (imageView != null) {
                i = R.id.btn_remove_filter;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_remove_filter);
                if (imageView2 != null) {
                    i = R.id.pb_loading;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
                    if (progressBar != null) {
                        i = R.id.rv_operations;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_operations);
                        if (recyclerView != null) {
                            i = R.id.toolbar;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
                            if (viewFindChildViewById != null) {
                                LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBindingBind = LayoutToolbarSimpleTitleBinding.bind(viewFindChildViewById);
                                i = R.id.tv_filter_name;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_filter_name);
                                if (textView != null) {
                                    i = R.id.view_try_again;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_try_again);
                                    if (viewFindChildViewById2 != null) {
                                        return new FragmentAllOperationsBinding((ConstraintLayout) view, barrier, imageView, imageView2, progressBar, recyclerView, layoutToolbarSimpleTitleBindingBind, textView, LayoutTryAgainBinding.bind(viewFindChildViewById2));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentAllOperationsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_all_operations, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentAllOperationsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
