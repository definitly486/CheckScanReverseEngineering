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
public final class FragmentAllSpecialsBinding implements ViewBinding {
    public final TextView btnChooseRegion;
    private final ConstraintLayout rootView;
    public final RecyclerView rvSpecials;
    public final LayoutPreviewsLoadingBinding viewLoading;
    public final LayoutTextToolbarBinding viewToolbar;
    public final LayoutTryAgainBinding viewTryAgain;

    private FragmentAllSpecialsBinding(ConstraintLayout constraintLayout, TextView textView, RecyclerView recyclerView, LayoutPreviewsLoadingBinding layoutPreviewsLoadingBinding, LayoutTextToolbarBinding layoutTextToolbarBinding, LayoutTryAgainBinding layoutTryAgainBinding) {
        this.rootView = constraintLayout;
        this.btnChooseRegion = textView;
        this.rvSpecials = recyclerView;
        this.viewLoading = layoutPreviewsLoadingBinding;
        this.viewToolbar = layoutTextToolbarBinding;
        this.viewTryAgain = layoutTryAgainBinding;
    }

    public static FragmentAllSpecialsBinding bind(View view) {
        int i = R.id.btn_choose_region;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_choose_region);
        if (textView != null) {
            i = R.id.rv_specials;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_specials);
            if (recyclerView != null) {
                i = R.id.view_loading;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_loading);
                if (viewFindChildViewById != null) {
                    LayoutPreviewsLoadingBinding layoutPreviewsLoadingBindingBind = LayoutPreviewsLoadingBinding.bind(viewFindChildViewById);
                    i = R.id.view_toolbar;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_toolbar);
                    if (viewFindChildViewById2 != null) {
                        LayoutTextToolbarBinding layoutTextToolbarBindingBind = LayoutTextToolbarBinding.bind(viewFindChildViewById2);
                        i = R.id.view_try_again;
                        View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.view_try_again);
                        if (viewFindChildViewById3 != null) {
                            return new FragmentAllSpecialsBinding((ConstraintLayout) view, textView, recyclerView, layoutPreviewsLoadingBindingBind, layoutTextToolbarBindingBind, LayoutTryAgainBinding.bind(viewFindChildViewById3));
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentAllSpecialsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_all_specials, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentAllSpecialsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
