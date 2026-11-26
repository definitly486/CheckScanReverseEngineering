package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvBalanceGroupOperationBinding implements ViewBinding {
    public final Barrier barrierBottom;
    public final Barrier barrierEnd;
    public final ImageView ivExpand;
    public final ImageView ivIcon;
    private final ConstraintLayout rootView;
    public final RecyclerView rvSuboperations;
    public final AppCompatTextView tvExpand;
    public final AppCompatTextView tvStatus;
    public final AppCompatTextView tvTitle;
    public final AppCompatTextView tvValue;

    private ItemRvBalanceGroupOperationBinding(ConstraintLayout constraintLayout, Barrier barrier, Barrier barrier2, ImageView imageView, ImageView imageView2, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.rootView = constraintLayout;
        this.barrierBottom = barrier;
        this.barrierEnd = barrier2;
        this.ivExpand = imageView;
        this.ivIcon = imageView2;
        this.rvSuboperations = recyclerView;
        this.tvExpand = appCompatTextView;
        this.tvStatus = appCompatTextView2;
        this.tvTitle = appCompatTextView3;
        this.tvValue = appCompatTextView4;
    }

    public static ItemRvBalanceGroupOperationBinding bind(View view) {
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
                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_expand);
                            if (appCompatTextView != null) {
                                i = R.id.tv_status;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_status);
                                if (appCompatTextView2 != null) {
                                    i = R.id.tv_title;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                    if (appCompatTextView3 != null) {
                                        i = R.id.tv_value;
                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_value);
                                        if (appCompatTextView4 != null) {
                                            return new ItemRvBalanceGroupOperationBinding((ConstraintLayout) view, barrier, barrier2, imageView, imageView2, recyclerView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
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

    public static ItemRvBalanceGroupOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_balance_group_operation, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBalanceGroupOperationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
