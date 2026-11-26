package com.warefly.checkscan.insuranceShowcase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemInsuranceShowcaseDescriptionBinding implements ViewBinding {
    public final ImageView ivArrow;
    public final ImageView ivHelp;
    private final MaterialCardView rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ItemInsuranceShowcaseDescriptionBinding(MaterialCardView materialCardView, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2) {
        this.rootView = materialCardView;
        this.ivArrow = imageView;
        this.ivHelp = imageView2;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static ItemInsuranceShowcaseDescriptionBinding bind(View view) {
        int i = R.id.iv_arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_arrow);
        if (imageView != null) {
            i = R.id.iv_help;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_help);
            if (imageView2 != null) {
                i = R.id.tv_description;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                if (textView != null) {
                    i = R.id.tv_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView2 != null) {
                        return new ItemInsuranceShowcaseDescriptionBinding((MaterialCardView) view, imageView, imageView2, textView, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemInsuranceShowcaseDescriptionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_insurance_showcase_description, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemInsuranceShowcaseDescriptionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
