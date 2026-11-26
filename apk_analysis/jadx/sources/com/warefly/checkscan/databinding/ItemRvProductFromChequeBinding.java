package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvProductFromChequeBinding implements ViewBinding {
    public final Guideline guideline;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvPrice;

    private ItemRvProductFromChequeBinding(ConstraintLayout constraintLayout, Guideline guideline, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.guideline = guideline;
        this.tvDescription = textView;
        this.tvPrice = textView2;
    }

    public static ItemRvProductFromChequeBinding bind(View view) {
        int i = R.id.guideline;
        Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guideline);
        if (guideline != null) {
            i = R.id.tv_description;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
            if (textView != null) {
                i = R.id.tv_price;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_price);
                if (textView2 != null) {
                    return new ItemRvProductFromChequeBinding((ConstraintLayout) view, guideline, textView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvProductFromChequeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_product_from_cheque, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvProductFromChequeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
