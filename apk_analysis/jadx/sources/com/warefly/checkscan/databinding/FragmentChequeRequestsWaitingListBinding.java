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
public final class FragmentChequeRequestsWaitingListBinding implements ViewBinding {
    public final ImageView btnBack;
    public final ImageView btnHelp;
    public final ImageView btnSort;
    public final ProgressBar pbLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvChequeRequests;
    public final View toolbar;
    public final Barrier toolbarBarrier;
    public final TextView toolbarTitle;
    public final TextView tvNoReceipts;

    private FragmentChequeRequestsWaitingListBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ProgressBar progressBar, RecyclerView recyclerView, View view, Barrier barrier, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.btnHelp = imageView2;
        this.btnSort = imageView3;
        this.pbLoading = progressBar;
        this.rvChequeRequests = recyclerView;
        this.toolbar = view;
        this.toolbarBarrier = barrier;
        this.toolbarTitle = textView;
        this.tvNoReceipts = textView2;
    }

    public static FragmentChequeRequestsWaitingListBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_help;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_help);
            if (imageView2 != null) {
                i = R.id.btn_sort;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_sort);
                if (imageView3 != null) {
                    i = R.id.pb_loading;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading);
                    if (progressBar != null) {
                        i = R.id.rv_cheque_requests;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_cheque_requests);
                        if (recyclerView != null) {
                            i = R.id.toolbar;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
                            if (viewFindChildViewById != null) {
                                i = R.id.toolbar_barrier;
                                Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.toolbar_barrier);
                                if (barrier != null) {
                                    i = R.id.toolbar_title;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.toolbar_title);
                                    if (textView != null) {
                                        i = R.id.tv_no_receipts;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_no_receipts);
                                        if (textView2 != null) {
                                            return new FragmentChequeRequestsWaitingListBinding((ConstraintLayout) view, imageView, imageView2, imageView3, progressBar, recyclerView, viewFindChildViewById, barrier, textView, textView2);
                                        }
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

    public static FragmentChequeRequestsWaitingListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_cheque_requests_waiting_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentChequeRequestsWaitingListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
