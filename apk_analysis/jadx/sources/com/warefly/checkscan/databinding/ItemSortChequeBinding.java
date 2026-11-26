package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSortChequeBinding implements ViewBinding {
    public final ImageView btnBySort;
    public final ConstraintLayout chipCheque;
    public final ImageView ivBySort;
    private final ConstraintLayout rootView;
    public final TextView tvBySort;

    private ItemSortChequeBinding(ConstraintLayout constraintLayout, ImageView imageView, ConstraintLayout constraintLayout2, ImageView imageView2, TextView textView) {
        this.rootView = constraintLayout;
        this.btnBySort = imageView;
        this.chipCheque = constraintLayout2;
        this.ivBySort = imageView2;
        this.tvBySort = textView;
    }

    public static ItemSortChequeBinding bind(View view) {
        int i = R.id.btn_by_sort;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_by_sort);
        if (imageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i = R.id.iv_by_sort;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_by_sort);
            if (imageView2 != null) {
                i = R.id.tv_by_sort;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_by_sort);
                if (textView != null) {
                    return new ItemSortChequeBinding(constraintLayout, imageView, constraintLayout, imageView2, textView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemSortChequeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_sort_cheque, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemSortChequeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
