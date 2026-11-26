package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class RecyclerViewStatisticsExpensesTagBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final LinearLayout tagWrapper;
    public final TextView tvTagExpenses;
    public final TextView tvTagName;

    private RecyclerViewStatisticsExpensesTagBinding(ConstraintLayout constraintLayout, LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.tagWrapper = linearLayout;
        this.tvTagExpenses = textView;
        this.tvTagName = textView2;
    }

    public static RecyclerViewStatisticsExpensesTagBinding bind(View view) {
        int i = R.id.tag_wrapper;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tag_wrapper);
        if (linearLayout != null) {
            i = R.id.tv_tag_expenses;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tag_expenses);
            if (textView != null) {
                i = R.id.tv_tag_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tag_name);
                if (textView2 != null) {
                    return new RecyclerViewStatisticsExpensesTagBinding((ConstraintLayout) view, linearLayout, textView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static RecyclerViewStatisticsExpensesTagBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.recycler_view_statistics_expenses_tag, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static RecyclerViewStatisticsExpensesTagBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
