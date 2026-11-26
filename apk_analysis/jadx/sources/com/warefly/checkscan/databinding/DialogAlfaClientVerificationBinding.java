package com.warefly.checkscan.databinding;

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
public final class DialogAlfaClientVerificationBinding implements ViewBinding {
    public final ImageView btnClose;
    public final TextView btnPrimary;
    public final TextView btnSecondary;
    public final Guideline guide;
    public final ImageView ivBanner;
    private final ConstraintLayout rootView;
    public final TextView tvTitle;

    private DialogAlfaClientVerificationBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, Guideline guideline, ImageView imageView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.btnPrimary = textView;
        this.btnSecondary = textView2;
        this.guide = guideline;
        this.ivBanner = imageView2;
        this.tvTitle = textView3;
    }

    public static DialogAlfaClientVerificationBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.btn_primary;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_primary);
            if (textView != null) {
                i = R.id.btn_secondary;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_secondary);
                if (textView2 != null) {
                    i = R.id.guide;
                    Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.guide);
                    if (guideline != null) {
                        i = R.id.iv_banner;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                        if (imageView2 != null) {
                            i = R.id.tv_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView3 != null) {
                                return new DialogAlfaClientVerificationBinding((ConstraintLayout) view, imageView, textView, textView2, guideline, imageView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogAlfaClientVerificationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_alfa_client_verification, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogAlfaClientVerificationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
