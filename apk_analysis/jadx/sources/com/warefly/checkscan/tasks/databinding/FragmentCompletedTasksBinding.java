package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutSimpleTryAgainBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarTitle18TransparentBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentCompletedTasksBinding implements ViewBinding {
    public final LayoutSimpleTryAgainBinding incldTryAgain;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final SwipeRefreshLayout swipeToRefresh;
    public final LayoutToolbarTitle18TransparentBinding toolbar;

    private FragmentCompletedTasksBinding(ConstraintLayout constraintLayout, LayoutSimpleTryAgainBinding layoutSimpleTryAgainBinding, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, LayoutToolbarTitle18TransparentBinding layoutToolbarTitle18TransparentBinding) {
        this.rootView = constraintLayout;
        this.incldTryAgain = layoutSimpleTryAgainBinding;
        this.rvContent = recyclerView;
        this.swipeToRefresh = swipeRefreshLayout;
        this.toolbar = layoutToolbarTitle18TransparentBinding;
    }

    public static FragmentCompletedTasksBinding bind(View view) {
        int i = R.id.incld_try_again;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_try_again);
        if (viewFindChildViewById != null) {
            LayoutSimpleTryAgainBinding layoutSimpleTryAgainBindingBind = LayoutSimpleTryAgainBinding.bind(viewFindChildViewById);
            i = R.id.rv_content;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
            if (recyclerView != null) {
                i = R.id.swipe_to_refresh;
                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipe_to_refresh);
                if (swipeRefreshLayout != null) {
                    i = R.id.toolbar;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.toolbar);
                    if (viewFindChildViewById2 != null) {
                        return new FragmentCompletedTasksBinding((ConstraintLayout) view, layoutSimpleTryAgainBindingBind, recyclerView, swipeRefreshLayout, LayoutToolbarTitle18TransparentBinding.bind(viewFindChildViewById2));
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentCompletedTasksBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_completed_tasks, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCompletedTasksBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
