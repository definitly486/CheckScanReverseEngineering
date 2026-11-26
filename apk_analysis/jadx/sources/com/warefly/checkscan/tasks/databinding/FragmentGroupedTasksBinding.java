package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitle18TransparentBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentGroupedTasksBinding implements ViewBinding {
    public final LayoutSimpleTryAgainBinding incldTryAgain;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final LayoutToolbarTitle18TransparentBinding toolbar;

    private FragmentGroupedTasksBinding(ConstraintLayout constraintLayout, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, RecyclerView recyclerView, LayoutToolbarTitle18TransparentBinding layoutToolbarTitle18TransparentBinding) {
        this.rootView = constraintLayout;
        this.incldTryAgain = layoutSimpleTryAgainBinding;
        this.rvContent = recyclerView;
        this.toolbar = layoutToolbarTitle18TransparentBinding;
    }

    public static FragmentGroupedTasksBinding bind(View view) {
        int i = R.id.incld_try_again;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_try_again);
        if (viewFindChildViewById != null) {
            LayoutSimpleTryAgainBinding layoutSimpleTryAgainBindingBind = LayoutSimpleTryAgainBinding.bind(viewFindChildViewById);
            int i2 = R.id.rv_content;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
            if (recyclerView != null) {
                i2 = R.id.toolbar;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.toolbar);
                if (viewFindChildViewById2 != null) {
                    return new FragmentGroupedTasksBinding((ConstraintLayout) view, layoutSimpleTryAgainBindingBind, recyclerView, LayoutToolbarTitle18TransparentBinding.bind(viewFindChildViewById2));
                }
            }
            i = i2;
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentGroupedTasksBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_grouped_tasks, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentGroupedTasksBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
