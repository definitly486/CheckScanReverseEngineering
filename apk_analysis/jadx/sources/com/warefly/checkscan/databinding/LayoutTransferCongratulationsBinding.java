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
public final class LayoutTransferCongratulationsBinding implements ViewBinding {
    public final TextView btnCopyCode;
    public final ImageView ivCongratulations;
    private final ConstraintLayout rootView;
    public final TextView tvCongratulation;
    public final TextView tvPromoCodeMetro;

    private LayoutTransferCongratulationsBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnCopyCode = textView;
        this.ivCongratulations = imageView;
        this.tvCongratulation = textView2;
        this.tvPromoCodeMetro = textView3;
    }

    public static LayoutTransferCongratulationsBinding bind(View view) {
        int i = R.id.btn_copy_code;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_copy_code);
        if (textView != null) {
            i = R.id.iv_congratulations;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_congratulations);
            if (imageView != null) {
                i = R.id.tv_congratulation;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_congratulation);
                if (textView2 != null) {
                    i = R.id.tv_promo_code_metro;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_promo_code_metro);
                    if (textView3 != null) {
                        return new LayoutTransferCongratulationsBinding((ConstraintLayout) view, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutTransferCongratulationsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_transfer_congratulations, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutTransferCongratulationsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
