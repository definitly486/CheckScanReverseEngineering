package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ProductsPlaceholderLayoutBinding implements ViewBinding {
    public final ImageView ivPlaceholderImage;
    private final ConstraintLayout rootView;
    public final Guideline topGuideline;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ProductsPlaceholderLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, Guideline guideline, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.ivPlaceholderImage = imageView;
        this.topGuideline = guideline;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static ProductsPlaceholderLayoutBinding bind(View view) {
        int i = R.id.iv_placeholder_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_placeholder_image);
        if (imageView != null) {
            i = R.id.top_guideline;
            Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.top_guideline);
            if (guideline != null) {
                i = R.id.tv_description;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                if (textView != null) {
                    i = R.id.tv_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView2 != null) {
                        return new ProductsPlaceholderLayoutBinding((ConstraintLayout) view, imageView, guideline, textView, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ProductsPlaceholderLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.products_placeholder_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ProductsPlaceholderLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
