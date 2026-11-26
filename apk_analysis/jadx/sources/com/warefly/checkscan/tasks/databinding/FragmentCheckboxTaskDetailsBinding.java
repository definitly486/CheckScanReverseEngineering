package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutSpinnerLoadingBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentCheckboxTaskDetailsBinding implements ViewBinding {
    public final ImageView btnClose;
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final LayoutSimpleTryAgainBinding incldError;
    public final LayoutSpinnerLoadingBinding incldLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;

    private FragmentCheckboxTaskDetailsBinding(ConstraintLayout constraintLayout, ImageView imageView, LayoutAdsBadgeBinding layoutAdsBadgeBinding, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, LayoutSpinnerLoadingBinding layoutSpinnerLoadingBinding, RecyclerView recyclerView) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.incldError = layoutSimpleTryAgainBinding;
        this.incldLoading = layoutSpinnerLoadingBinding;
        this.rvContent = recyclerView;
    }

    public static FragmentCheckboxTaskDetailsBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.incld_ads_badge;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
            if (viewFindChildViewById != null) {
                LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
                i = R.id.incld_error;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_error);
                if (viewFindChildViewById2 != null) {
                    LayoutSimpleTryAgainBinding layoutSimpleTryAgainBindingBind = LayoutSimpleTryAgainBinding.bind(viewFindChildViewById2);
                    i = R.id.incld_loading;
                    View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.incld_loading);
                    if (viewFindChildViewById3 != null) {
                        LayoutSpinnerLoadingBinding layoutSpinnerLoadingBindingBind = LayoutSpinnerLoadingBinding.bind(viewFindChildViewById3);
                        i = R.id.rv_content;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                        if (recyclerView != null) {
                            return new FragmentCheckboxTaskDetailsBinding((ConstraintLayout) view, imageView, layoutAdsBadgeBindingBind, layoutSimpleTryAgainBindingBind, layoutSpinnerLoadingBindingBind, recyclerView);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentCheckboxTaskDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_checkbox_task_details, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCheckboxTaskDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
