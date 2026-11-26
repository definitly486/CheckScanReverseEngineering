package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemCategoryInChequeBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final TextView tvCategoryName;
    public final TextView tvCategorySum;

    private ItemCategoryInChequeBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.tvCategoryName = textView;
        this.tvCategorySum = textView2;
    }

    public static ItemCategoryInChequeBinding bind(View view) {
        int i = R.id.tv_category_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_category_name);
        if (textView != null) {
            i = R.id.tv_category_sum;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_category_sum);
            if (textView2 != null) {
                return new ItemCategoryInChequeBinding((ConstraintLayout) view, textView, textView2);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemCategoryInChequeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_category_in_cheque, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemCategoryInChequeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
