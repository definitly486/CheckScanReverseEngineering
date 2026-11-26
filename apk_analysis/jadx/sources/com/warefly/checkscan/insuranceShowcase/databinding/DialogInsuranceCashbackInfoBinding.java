package com.warefly.checkscan.insuranceShowcase.databinding;

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
public final class DialogInsuranceCashbackInfoBinding implements ViewBinding {
    public final TextView btnOk;
    public final ImageView ivIndicator;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private DialogInsuranceCashbackInfoBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, ImageView imageView2, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnOk = textView;
        this.ivIndicator = imageView;
        this.ivLogo = imageView2;
        this.tvDescription = textView2;
        this.tvTitle = textView3;
    }

    public static DialogInsuranceCashbackInfoBinding bind(View view) {
        int i = R.id.btn_ok;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_ok);
        if (textView != null) {
            i = R.id.iv_indicator;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
            if (imageView != null) {
                i = R.id.iv_logo;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                if (imageView2 != null) {
                    i = R.id.tv_description;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                    if (textView2 != null) {
                        i = R.id.tv_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView3 != null) {
                            return new DialogInsuranceCashbackInfoBinding((ConstraintLayout) view, textView, imageView, imageView2, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogInsuranceCashbackInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_insurance_cashback_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogInsuranceCashbackInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
