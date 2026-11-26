package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvFilterCategoryBinding implements ViewBinding {
    public final Barrier barrier;
    public final View btnSubFilter;
    public final CheckBox checkboxSub;
    public final View divider;
    private final ConstraintLayout rootView;
    public final RecyclerView rvSubFilters;
    public final TextView tvSubTitle;

    private ItemRvFilterCategoryBinding(ConstraintLayout constraintLayout, Barrier barrier, View view, CheckBox checkBox, View view2, RecyclerView recyclerView, TextView textView) {
        this.rootView = constraintLayout;
        this.barrier = barrier;
        this.btnSubFilter = view;
        this.checkboxSub = checkBox;
        this.divider = view2;
        this.rvSubFilters = recyclerView;
        this.tvSubTitle = textView;
    }

    public static ItemRvFilterCategoryBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.btn_sub_filter;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.btn_sub_filter);
            if (viewFindChildViewById != null) {
                i = R.id.checkbox_sub;
                CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkbox_sub);
                if (checkBox != null) {
                    i = R.id.divider;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.divider);
                    if (viewFindChildViewById2 != null) {
                        i = R.id.rv_sub_filters;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_sub_filters);
                        if (recyclerView != null) {
                            i = R.id.tv_sub_title;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sub_title);
                            if (textView != null) {
                                return new ItemRvFilterCategoryBinding((ConstraintLayout) view, barrier, viewFindChildViewById, checkBox, viewFindChildViewById2, recyclerView, textView);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvFilterCategoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_filter_category, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvFilterCategoryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
