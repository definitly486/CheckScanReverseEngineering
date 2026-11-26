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
public final class LayoutBtnProductsWithCashbackBinding implements ViewBinding {
    public final TextView btnProductsWithCashback;
    public final ImageView ivProductsArrowRight;
    public final ImageView ivProductsWithCashback;
    private final ConstraintLayout rootView;

    private LayoutBtnProductsWithCashbackBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, ImageView imageView2) {
        this.rootView = constraintLayout;
        this.btnProductsWithCashback = textView;
        this.ivProductsArrowRight = imageView;
        this.ivProductsWithCashback = imageView2;
    }

    public static LayoutBtnProductsWithCashbackBinding bind(View view) {
        int i = R.id.btn_products_with_cashback;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_products_with_cashback);
        if (textView != null) {
            i = R.id.iv_products_arrow_right;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_products_arrow_right);
            if (imageView != null) {
                i = R.id.iv_products_with_cashback;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_products_with_cashback);
                if (imageView2 != null) {
                    return new LayoutBtnProductsWithCashbackBinding((ConstraintLayout) view, textView, imageView, imageView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutBtnProductsWithCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_btn_products_with_cashback, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutBtnProductsWithCashbackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
