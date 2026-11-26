package com.warefly.checkscan.auth.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentCallVerificationBinding implements ViewBinding {
    public final ImageView btnBack;
    public final TextView btnTryEmail;
    public final LoadingButton btnVerify;
    public final ImageView ivCall;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private FragmentCallVerificationBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, LoadingButton loadingButton, ImageView imageView2, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.btnTryEmail = textView;
        this.btnVerify = loadingButton;
        this.ivCall = imageView2;
        this.tvDescription = textView2;
        this.tvTitle = textView3;
    }

    public static FragmentCallVerificationBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_try_email;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_try_email);
            if (textView != null) {
                i = R.id.btn_verify;
                LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_verify);
                if (loadingButton != null) {
                    i = R.id.iv_call;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_call);
                    if (imageView2 != null) {
                        i = R.id.tv_description;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                        if (textView2 != null) {
                            i = R.id.tv_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView3 != null) {
                                return new FragmentCallVerificationBinding((ConstraintLayout) view, imageView, textView, loadingButton, imageView2, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentCallVerificationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_call_verification, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCallVerificationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
