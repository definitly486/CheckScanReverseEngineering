package com.warefly.checkscan.databinding;

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
public final class DialogChequePersonalInfoBinding implements ViewBinding {
    public final ImageView btnClose;
    public final LoadingButton btnPost;
    public final TextInputEditText etName;
    public final TextInputEditText etTransferDestination;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilName;
    public final TextInputLayout tilTransferDestination;
    public final TextView tvTitle;

    private DialogChequePersonalInfoBinding(ConstraintLayout constraintLayout, ImageView imageView, LoadingButton loadingButton, TextInputEditText textInputEditText, TextInputEditText textInputEditText2, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, TextView textView) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.btnPost = loadingButton;
        this.etName = textInputEditText;
        this.etTransferDestination = textInputEditText2;
        this.tilName = textInputLayout;
        this.tilTransferDestination = textInputLayout2;
        this.tvTitle = textView;
    }

    public static DialogChequePersonalInfoBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.btn_post;
            LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_post);
            if (loadingButton != null) {
                i = R.id.et_name;
                TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_name);
                if (textInputEditText != null) {
                    i = R.id.et_transfer_destination;
                    TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_transfer_destination);
                    if (textInputEditText2 != null) {
                        i = R.id.til_name;
                        TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_name);
                        if (textInputLayout != null) {
                            i = R.id.til_transfer_destination;
                            TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_transfer_destination);
                            if (textInputLayout2 != null) {
                                i = R.id.tv_title;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView != null) {
                                    return new DialogChequePersonalInfoBinding((ConstraintLayout) view, imageView, loadingButton, textInputEditText, textInputEditText2, textInputLayout, textInputLayout2, textView);
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

    public static DialogChequePersonalInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_cheque_personal_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogChequePersonalInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
