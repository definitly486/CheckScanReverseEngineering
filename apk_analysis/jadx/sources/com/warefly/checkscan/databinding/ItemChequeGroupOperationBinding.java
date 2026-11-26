package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemChequeGroupOperationBinding implements ViewBinding {
    public final Barrier barrierBottom;
    public final Barrier barrierEnd;
    public final ImageView ivExpand;
    public final ImageView ivIcon;
    private final ConstraintLayout rootView;
    public final RecyclerView rvSuboperations;
    public final TextView tvExpand;
    public final TextView tvStatus;
    public final TextView tvTitle;
    public final TextView tvValue;

    private ItemChequeGroupOperationBinding(ConstraintLayout constraintLayout, Barrier barrier, Barrier barrier2, ImageView imageView, ImageView imageView2, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.barrierBottom = barrier;
        this.barrierEnd = barrier2;
        this.ivExpand = imageView;
        this.ivIcon = imageView2;
        this.rvSuboperations = recyclerView;
        this.tvExpand = textView;
        this.tvStatus = textView2;
        this.tvTitle = textView3;
        this.tvValue = textView4;
    }

    public static ItemChequeGroupOperationBinding bind(View view) {
        int i = R.id.barrierBottom;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrierBottom);
        if (barrier != null) {
            i = R.id.barrierEnd;
            Barrier barrier2 = (Barrier) ViewBindings.findChildViewById(view, R.id.barrierEnd);
            if (barrier2 != null) {
                i = R.id.iv_expand;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_expand);
                if (imageView != null) {
                    i = R.id.iv_icon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
                    if (imageView2 != null) {
                        i = R.id.rv_suboperations;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_suboperations);
                        if (recyclerView != null) {
                            i = R.id.tv_expand;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_expand);
                            if (textView != null) {
                                i = R.id.tv_status;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_status);
                                if (textView2 != null) {
                                    i = R.id.tv_title;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                    if (textView3 != null) {
                                        i = R.id.tv_value;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_value);
                                        if (textView4 != null) {
                                            return new ItemChequeGroupOperationBinding((ConstraintLayout) view, barrier, barrier2, imageView, imageView2, recyclerView, textView, textView2, textView3, textView4);
                                        }
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

    public static ItemChequeGroupOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cheque_group_operation, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemChequeGroupOperationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
