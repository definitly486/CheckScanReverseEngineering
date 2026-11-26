package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.imageview.ShapeableImageView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutNewWithdrawBinding implements ViewBinding {
    public final Barrier barrier;
    public final ShapeableImageView ivNewMethod;
    private final MaterialCardView rootView;
    public final RecyclerView rvWithdraw;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private LayoutNewWithdrawBinding(MaterialCardView materialCardView, Barrier barrier, ShapeableImageView shapeableImageView, RecyclerView recyclerView, TextView textView, TextView textView2) {
        this.rootView = materialCardView;
        this.barrier = barrier;
        this.ivNewMethod = shapeableImageView;
        this.rvWithdraw = recyclerView;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static LayoutNewWithdrawBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.iv_new_method;
            ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, R.id.iv_new_method);
            if (shapeableImageView != null) {
                i = R.id.rv_withdraw;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_withdraw);
                if (recyclerView != null) {
                    i = R.id.tv_description;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView != null) {
                        i = R.id.tv_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView2 != null) {
                            return new LayoutNewWithdrawBinding((MaterialCardView) view, barrier, shapeableImageView, recyclerView, textView, textView2);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutNewWithdrawBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_new_withdraw, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static LayoutNewWithdrawBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
