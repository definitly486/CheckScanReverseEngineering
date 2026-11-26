package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentBalanceBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final RecyclerView rvContent;
    public final SwipeRefreshLayout swipeToRefresh;
    public final LayoutToolbarBalanceBinding toolbar;

    private FragmentBalanceBinding(LinearLayout linearLayout, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, LayoutToolbarBalanceBinding layoutToolbarBalanceBinding) {
        this.rootView = linearLayout;
        this.rvContent = recyclerView;
        this.swipeToRefresh = swipeRefreshLayout;
        this.toolbar = layoutToolbarBalanceBinding;
    }

    public static FragmentBalanceBinding bind(View view) {
        int i = R.id.rv_content;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
        if (recyclerView != null) {
            i = R.id.swipe_to_refresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipe_to_refresh);
            if (swipeRefreshLayout != null) {
                i = R.id.toolbar;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.toolbar);
                if (viewFindChildViewById != null) {
                    return new FragmentBalanceBinding((LinearLayout) view, recyclerView, swipeRefreshLayout, LayoutToolbarBalanceBinding.bind(viewFindChildViewById));
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentBalanceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_balance, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentBalanceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
