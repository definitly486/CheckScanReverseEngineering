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
public final class LayoutBarcodeBinding implements ViewBinding {
    public final ImageView ivBarcode;
    private final ConstraintLayout rootView;
    public final TextView tvBarcode;

    private LayoutBarcodeBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView) {
        this.rootView = constraintLayout;
        this.ivBarcode = imageView;
        this.tvBarcode = textView;
    }

    public static LayoutBarcodeBinding bind(View view) {
        int i = R.id.iv_barcode;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_barcode);
        if (imageView != null) {
            i = R.id.tv_barcode;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_barcode);
            if (textView != null) {
                return new LayoutBarcodeBinding((ConstraintLayout) view, imageView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutBarcodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_barcode, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutBarcodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
