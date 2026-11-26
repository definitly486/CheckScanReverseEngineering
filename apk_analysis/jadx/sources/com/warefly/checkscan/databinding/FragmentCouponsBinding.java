package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.design.resources.databinding.LayoutPreviewsLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentCouponsBinding implements ViewBinding {
    public final TextView btnTryAgain;
    private final ConstraintLayout rootView;
    public final RecyclerView rvCoupons;
    public final LayoutToolbarBackFilterIconBinding toolbar;
    public final TextView tvErrorDescription;
    public final LayoutPreviewsLoadingBinding viewLoading;

    private FragmentCouponsBinding(ConstraintLayout constraintLayout, TextView textView, RecyclerView recyclerView, LayoutToolbarBackFilterIconBinding layoutToolbarBackFilterIconBinding, TextView textView2, LayoutPreviewsLoadingBinding layoutPreviewsLoadingBinding) {
        this.rootView = constraintLayout;
        this.btnTryAgain = textView;
        this.rvCoupons = recyclerView;
        this.toolbar = layoutToolbarBackFilterIconBinding;
        this.tvErrorDescription = textView2;
        this.viewLoading = layoutPreviewsLoadingBinding;
    }

    public static FragmentCouponsBinding bind(View view) {
        int i = R.id.btn_try_again;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_try_again);
        if (textView != null) {
            i = R.id.rv_coupons;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_coupons);
            if (recyclerView != null) {
                i = R.id.toolbar;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
                if (viewFindChildViewById != null) {
                    LayoutToolbarBackFilterIconBinding layoutToolbarBackFilterIconBindingBind = LayoutToolbarBackFilterIconBinding.bind(viewFindChildViewById);
                    i = R.id.tv_error_description;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_error_description);
                    if (textView2 != null) {
                        i = R.id.view_loading;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_loading);
                        if (viewFindChildViewById2 != null) {
                            return new FragmentCouponsBinding((ConstraintLayout) view, textView, recyclerView, layoutToolbarBackFilterIconBindingBind, textView2, LayoutPreviewsLoadingBinding.bind(viewFindChildViewById2));
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentCouponsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_coupons, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCouponsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
