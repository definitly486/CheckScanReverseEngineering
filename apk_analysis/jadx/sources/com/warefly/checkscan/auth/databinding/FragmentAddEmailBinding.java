package com.warefly.checkscan.auth.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentAddEmailBinding implements ViewBinding {
    public final ImageView btnBack;
    public final LoadingButton btnConfirm;
    public final TextInputEditText etEmail;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilEmail;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private FragmentAddEmailBinding(ConstraintLayout constraintLayout, ImageView imageView, LoadingButton loadingButton, TextInputEditText textInputEditText, TextInputLayout textInputLayout, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.btnConfirm = loadingButton;
        this.etEmail = textInputEditText;
        this.tilEmail = textInputLayout;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static FragmentAddEmailBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_confirm;
            LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_confirm);
            if (loadingButton != null) {
                i = R.id.et_email;
                TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_email);
                if (textInputEditText != null) {
                    i = R.id.til_email;
                    TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_email);
                    if (textInputLayout != null) {
                        i = R.id.tv_description;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                        if (textView != null) {
                            i = R.id.tv_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView2 != null) {
                                return new FragmentAddEmailBinding((ConstraintLayout) view, imageView, loadingButton, textInputEditText, textInputLayout, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentAddEmailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_add_email, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentAddEmailBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
