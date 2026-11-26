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
public final class ItemChequeOperationBinding implements ViewBinding {
    public final Barrier barrierStatus;
    public final ImageView ivIcon;
    private final ConstraintLayout rootView;
    public final TextView tvStatus;
    public final TextView tvSticker;
    public final TextView tvSubtitle;
    public final TextView tvTitle;
    public final TextView tvValue;

    private ItemChequeOperationBinding(ConstraintLayout constraintLayout, Barrier barrier, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.barrierStatus = barrier;
        this.ivIcon = imageView;
        this.tvStatus = textView;
        this.tvSticker = textView2;
        this.tvSubtitle = textView3;
        this.tvTitle = textView4;
        this.tvValue = textView5;
    }

    public static ItemChequeOperationBinding bind(View view) {
        int i = R.id.barrier_status;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_status);
        if (barrier != null) {
            i = R.id.iv_icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
            if (imageView != null) {
                i = R.id.tv_status;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_status);
                if (textView != null) {
                    i = R.id.tv_sticker;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sticker);
                    if (textView2 != null) {
                        i = R.id.tv_subtitle;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                        if (textView3 != null) {
                            i = R.id.tv_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView4 != null) {
                                i = R.id.tv_value;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_value);
                                if (textView5 != null) {
                                    return new ItemChequeOperationBinding((ConstraintLayout) view, barrier, imageView, textView, textView2, textView3, textView4, textView5);
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

    public static ItemChequeOperationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cheque_operation, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemChequeOperationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
