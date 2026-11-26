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
public final class RecyclerViewProductOfPlaceRowBinding implements ViewBinding {
    public final Barrier barrier;
    private final ConstraintLayout rootView;
    public final TextView tvDate;
    public final TextView tvName;
    public final TextView tvPrice;

    private RecyclerViewProductOfPlaceRowBinding(ConstraintLayout constraintLayout, Barrier barrier, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.barrier = barrier;
        this.tvDate = textView;
        this.tvName = textView2;
        this.tvPrice = textView3;
    }

    public static RecyclerViewProductOfPlaceRowBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.tv_date;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_date);
            if (textView != null) {
                i = R.id.tv_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                if (textView2 != null) {
                    i = R.id.tv_price;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_price);
                    if (textView3 != null) {
                        return new RecyclerViewProductOfPlaceRowBinding((ConstraintLayout) view, barrier, textView, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static RecyclerViewProductOfPlaceRowBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.recycler_view_product_of_place_row, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static RecyclerViewProductOfPlaceRowBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
