package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutProductChequeBinding implements ViewBinding {
    public final Barrier barrierSum;
    private final ConstraintLayout rootView;
    public final TextView tvProductName;
    public final TextView tvProductPrice;
    public final TextView tvProductPriceUnits;

    private LayoutProductChequeBinding(ConstraintLayout constraintLayout, Barrier barrier, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.barrierSum = barrier;
        this.tvProductName = textView;
        this.tvProductPrice = textView2;
        this.tvProductPriceUnits = textView3;
    }

    public static LayoutProductChequeBinding bind(View view) {
        int i = R.id.barrier_sum;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_sum);
        if (barrier != null) {
            i = R.id.tv_product_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_product_name);
            if (textView != null) {
                i = R.id.tv_product_price;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_product_price);
                if (textView2 != null) {
                    i = R.id.tv_product_price_units;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_product_price_units);
                    if (textView3 != null) {
                        return new LayoutProductChequeBinding((ConstraintLayout) view, barrier, textView, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutProductChequeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_product_cheque, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutProductChequeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
