package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemChequeBinding implements ViewBinding {
    public final Barrier barrierEndOfCheque;
    public final ImageView dashedBorderline;
    public final ImageView ivWarning;
    public final Barrier nameBarrier;
    private final ConstraintLayout rootView;
    public final TextView tvDateTime;
    public final TextView tvShopName;
    public final TextView tvStock;
    public final TextView tvSum;

    private ItemChequeBinding(ConstraintLayout constraintLayout, Barrier barrier, ImageView imageView, ImageView imageView2, Barrier barrier2, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.barrierEndOfCheque = barrier;
        this.dashedBorderline = imageView;
        this.ivWarning = imageView2;
        this.nameBarrier = barrier2;
        this.tvDateTime = textView;
        this.tvShopName = textView2;
        this.tvStock = textView3;
        this.tvSum = textView4;
    }

    public static ItemChequeBinding bind(View view) {
        int i = R.id.barrier_end_of_cheque;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_end_of_cheque);
        if (barrier != null) {
            i = R.id.dashed_borderline;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dashed_borderline);
            if (imageView != null) {
                i = R.id.iv_warning;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_warning);
                if (imageView2 != null) {
                    i = R.id.name_barrier;
                    Barrier barrier2 = (Barrier) ViewBindings.findChildViewById(view, R.id.name_barrier);
                    if (barrier2 != null) {
                        i = R.id.tv_date_time;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_date_time);
                        if (textView != null) {
                            i = R.id.tv_shop_name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_shop_name);
                            if (textView2 != null) {
                                i = R.id.tv_stock;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_stock);
                                if (textView3 != null) {
                                    i = R.id.tv_sum;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sum);
                                    if (textView4 != null) {
                                        return new ItemChequeBinding((ConstraintLayout) view, barrier, imageView, imageView2, barrier2, textView, textView2, textView3, textView4);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemChequeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cheque, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemChequeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
