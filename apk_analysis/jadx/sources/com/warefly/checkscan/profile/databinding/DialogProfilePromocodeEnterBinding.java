package com.warefly.checkscan.profile.databinding;

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

/* JADX INFO: loaded from: classes5.dex */
public final class DialogProfilePromocodeEnterBinding implements ViewBinding {
    public final LoadingButton btnOk;
    public final TextInputEditText etField;
    public final ImageView ivIndicator;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilField;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private DialogProfilePromocodeEnterBinding(ConstraintLayout constraintLayout, LoadingButton loadingButton, TextInputEditText textInputEditText, ImageView imageView, TextInputLayout textInputLayout, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.btnOk = loadingButton;
        this.etField = textInputEditText;
        this.ivIndicator = imageView;
        this.tilField = textInputLayout;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static DialogProfilePromocodeEnterBinding bind(View view) {
        int i = R.id.btn_ok;
        LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_ok);
        if (loadingButton != null) {
            i = R.id.et_field;
            TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_field);
            if (textInputEditText != null) {
                i = R.id.iv_indicator;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
                if (imageView != null) {
                    i = R.id.til_field;
                    TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_field);
                    if (textInputLayout != null) {
                        i = R.id.tv_description;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                        if (textView != null) {
                            i = R.id.tv_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView2 != null) {
                                return new DialogProfilePromocodeEnterBinding((ConstraintLayout) view, loadingButton, textInputEditText, imageView, textInputLayout, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogProfilePromocodeEnterBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_profile_promocode_enter, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogProfilePromocodeEnterBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
