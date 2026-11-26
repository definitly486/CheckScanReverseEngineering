package com.warefly.checkscan.bankLanding.databinding;

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

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvBankBenefitBinding implements ViewBinding {
    public final ImageView ivBenefit;
    private final ConstraintLayout rootView;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private ItemRvBankBenefitBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.ivBenefit = imageView;
        this.tvSubtitle = textView;
        this.tvTitle = textView2;
    }

    public static ItemRvBankBenefitBinding bind(View view) {
        int i = R.id.iv_benefit;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_benefit);
        if (imageView != null) {
            i = R.id.tv_subtitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
            if (textView != null) {
                i = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView2 != null) {
                    return new ItemRvBankBenefitBinding((ConstraintLayout) view, imageView, textView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBankBenefitBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_bank_benefit, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvBankBenefitBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
