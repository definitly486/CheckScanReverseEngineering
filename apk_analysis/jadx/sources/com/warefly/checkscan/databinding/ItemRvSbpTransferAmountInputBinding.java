package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvSbpTransferAmountInputBinding implements ViewBinding {
    public final TextInputEditText etField;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilField;
    public final TextView tvTitle;

    private ItemRvSbpTransferAmountInputBinding(ConstraintLayout constraintLayout, TextInputEditText textInputEditText, TextInputLayout textInputLayout, TextView textView) {
        this.rootView = constraintLayout;
        this.etField = textInputEditText;
        this.tilField = textInputLayout;
        this.tvTitle = textView;
    }

    public static ItemRvSbpTransferAmountInputBinding bind(View view) {
        int i = R.id.et_field;
        TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_field);
        if (textInputEditText != null) {
            i = R.id.til_field;
            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_field);
            if (textInputLayout != null) {
                i = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView != null) {
                    return new ItemRvSbpTransferAmountInputBinding((ConstraintLayout) view, textInputEditText, textInputLayout, textView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvSbpTransferAmountInputBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_sbp_transfer_amount_input, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvSbpTransferAmountInputBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
