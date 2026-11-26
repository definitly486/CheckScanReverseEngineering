package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemShopsStatisticsBinding implements ViewBinding {
    public final ImageView ivShopStatistics;
    public final View pbCostsStatistics;
    private final ConstraintLayout rootView;
    public final TextView tvCostStatistics;
    public final TextView tvShopStatistics;

    private ItemShopsStatisticsBinding(ConstraintLayout constraintLayout, ImageView imageView, View view, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.ivShopStatistics = imageView;
        this.pbCostsStatistics = view;
        this.tvCostStatistics = textView;
        this.tvShopStatistics = textView2;
    }

    public static ItemShopsStatisticsBinding bind(View view) {
        int i = R.id.iv_shop_statistics;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_shop_statistics);
        if (imageView != null) {
            i = R.id.pb_costs_statistics;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.pb_costs_statistics);
            if (viewFindChildViewById != null) {
                i = R.id.tv_cost_statistics;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cost_statistics);
                if (textView != null) {
                    i = R.id.tv_shop_statistics;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_shop_statistics);
                    if (textView2 != null) {
                        return new ItemShopsStatisticsBinding((ConstraintLayout) view, imageView, viewFindChildViewById, textView, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemShopsStatisticsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_shops_statistics, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemShopsStatisticsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
