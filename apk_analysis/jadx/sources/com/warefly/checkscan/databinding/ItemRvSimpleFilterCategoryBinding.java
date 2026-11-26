package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvSimpleFilterCategoryBinding implements ViewBinding {
    public final Barrier barrier;
    public final CheckBox checkboxSimple;
    public final View divider;
    private final ConstraintLayout rootView;
    public final TextView tvSimpleTitle;

    private ItemRvSimpleFilterCategoryBinding(ConstraintLayout constraintLayout, Barrier barrier, CheckBox checkBox, View view, TextView textView) {
        this.rootView = constraintLayout;
        this.barrier = barrier;
        this.checkboxSimple = checkBox;
        this.divider = view;
        this.tvSimpleTitle = textView;
    }

    public static ItemRvSimpleFilterCategoryBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.checkbox_simple;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkbox_simple);
            if (checkBox != null) {
                i = R.id.divider;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                if (viewFindChildViewById != null) {
                    i = R.id.tv_simple_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_simple_title);
                    if (textView != null) {
                        return new ItemRvSimpleFilterCategoryBinding((ConstraintLayout) view, barrier, checkBox, viewFindChildViewById, textView);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvSimpleFilterCategoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_simple_filter_category, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvSimpleFilterCategoryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
