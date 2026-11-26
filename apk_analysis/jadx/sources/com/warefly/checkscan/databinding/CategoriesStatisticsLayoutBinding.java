package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.hookedonplay.decoviewlib.DecoView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class CategoriesStatisticsLayoutBinding implements ViewBinding {
    public final DecoView categoriesExpensesPieChart;
    private final ConstraintLayout rootView;
    public final RecyclerView rvCategories;
    public final TextView tvExpensesChart;
    public final TextView tvSpentLabel;

    private CategoriesStatisticsLayoutBinding(ConstraintLayout constraintLayout, DecoView decoView, RecyclerView recyclerView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.categoriesExpensesPieChart = decoView;
        this.rvCategories = recyclerView;
        this.tvExpensesChart = textView;
        this.tvSpentLabel = textView2;
    }

    public static CategoriesStatisticsLayoutBinding bind(View view) {
        int i = R.id.categories_expenses_pie_chart;
        DecoView decoView = (DecoView) ViewBindings.findChildViewById(view, R.id.categories_expenses_pie_chart);
        if (decoView != null) {
            i = R.id.rv_categories;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_categories);
            if (recyclerView != null) {
                i = R.id.tv_expenses_chart;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_expenses_chart);
                if (textView != null) {
                    i = R.id.tv_spent_label;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_spent_label);
                    if (textView2 != null) {
                        return new CategoriesStatisticsLayoutBinding((ConstraintLayout) view, decoView, recyclerView, textView, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static CategoriesStatisticsLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.categories_statistics_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static CategoriesStatisticsLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
