package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentPageStatisticsBinding implements ViewBinding {
    public final CategoriesStatisticsLayoutBinding categoriesLayout;
    public final ProgressBar pbLoadingStatistics;
    private final NestedScrollView rootView;
    public final RecyclerView rvRetailers;
    public final ConstraintLayout statisticSheet;
    public final TextView tvShops;

    private FragmentPageStatisticsBinding(NestedScrollView nestedScrollView, CategoriesStatisticsLayoutBinding categoriesStatisticsLayoutBinding, ProgressBar progressBar, RecyclerView recyclerView, ConstraintLayout constraintLayout, TextView textView) {
        this.rootView = nestedScrollView;
        this.categoriesLayout = categoriesStatisticsLayoutBinding;
        this.pbLoadingStatistics = progressBar;
        this.rvRetailers = recyclerView;
        this.statisticSheet = constraintLayout;
        this.tvShops = textView;
    }

    public static FragmentPageStatisticsBinding bind(View view) {
        int i = R.id.categories_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.categories_layout);
        if (viewFindChildViewById != null) {
            CategoriesStatisticsLayoutBinding categoriesStatisticsLayoutBindingBind = CategoriesStatisticsLayoutBinding.bind(viewFindChildViewById);
            i = R.id.pb_loading_statistics;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_loading_statistics);
            if (progressBar != null) {
                i = R.id.rv_retailers;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_retailers);
                if (recyclerView != null) {
                    i = R.id.statistic_sheet;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.statistic_sheet);
                    if (constraintLayout != null) {
                        i = R.id.tv_shops;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_shops);
                        if (textView != null) {
                            return new FragmentPageStatisticsBinding((NestedScrollView) view, categoriesStatisticsLayoutBindingBind, progressBar, recyclerView, constraintLayout, textView);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentPageStatisticsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_page_statistics, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentPageStatisticsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
