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
public final class RvProductInChequeRowBinding implements ViewBinding {
    public final Barrier barrier;
    public final TextView productDatetime;
    public final TextView productName;
    public final TextView productPriceUnits;
    public final TextView productSum;
    private final ConstraintLayout rootView;

    private RvProductInChequeRowBinding(ConstraintLayout constraintLayout, Barrier barrier, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.barrier = barrier;
        this.productDatetime = textView;
        this.productName = textView2;
        this.productPriceUnits = textView3;
        this.productSum = textView4;
    }

    public static RvProductInChequeRowBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.product_datetime;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.product_datetime);
            if (textView != null) {
                i = R.id.product_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.product_name);
                if (textView2 != null) {
                    i = R.id.product_price_units;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.product_price_units);
                    if (textView3 != null) {
                        i = R.id.product_sum;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.product_sum);
                        if (textView4 != null) {
                            return new RvProductInChequeRowBinding((ConstraintLayout) view, barrier, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static RvProductInChequeRowBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.rv_product_in_cheque_row, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static RvProductInChequeRowBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
