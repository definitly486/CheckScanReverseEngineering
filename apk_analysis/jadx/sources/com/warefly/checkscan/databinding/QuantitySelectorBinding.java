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
public final class QuantitySelectorBinding implements ViewBinding {
    public final View btnCheck;
    public final ImageView btnDelete;
    public final ImageView btnMinus;
    public final ImageView btnPlus;
    private final ConstraintLayout rootView;
    public final TextView tvQuantity;
    public final ImageView viewChecked;
    public final View viewUncheckedBackground;

    private QuantitySelectorBinding(ConstraintLayout constraintLayout, View view, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView, ImageView imageView4, View view2) {
        this.rootView = constraintLayout;
        this.btnCheck = view;
        this.btnDelete = imageView;
        this.btnMinus = imageView2;
        this.btnPlus = imageView3;
        this.tvQuantity = textView;
        this.viewChecked = imageView4;
        this.viewUncheckedBackground = view2;
    }

    public static QuantitySelectorBinding bind(View view) {
        int i = R.id.btn_check;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.btn_check);
        if (viewFindChildViewById != null) {
            i = R.id.btn_delete;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_delete);
            if (imageView != null) {
                i = R.id.btn_minus;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_minus);
                if (imageView2 != null) {
                    i = R.id.btn_plus;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_plus);
                    if (imageView3 != null) {
                        i = R.id.tv_quantity;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_quantity);
                        if (textView != null) {
                            i = R.id.view_checked;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.view_checked);
                            if (imageView4 != null) {
                                i = R.id.view_unchecked_background;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_unchecked_background);
                                if (viewFindChildViewById2 != null) {
                                    return new QuantitySelectorBinding((ConstraintLayout) view, viewFindChildViewById, imageView, imageView2, imageView3, textView, imageView4, viewFindChildViewById2);
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

    public static QuantitySelectorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.quantity_selector, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static QuantitySelectorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
