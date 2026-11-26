package com.warefly.checkscan.personalform.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.maskededittext.MaskedInputEditText;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemPersonalDataFormTextFieldBinding implements ViewBinding {
    public final MaskedInputEditText etField;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilField;
    public final TextView tvTitle;

    private ItemPersonalDataFormTextFieldBinding(ConstraintLayout constraintLayout, MaskedInputEditText maskedInputEditText, TextInputLayout textInputLayout, TextView textView) {
        this.rootView = constraintLayout;
        this.etField = maskedInputEditText;
        this.tilField = textInputLayout;
        this.tvTitle = textView;
    }

    public static ItemPersonalDataFormTextFieldBinding bind(View view) {
        int i = R.id.et_field;
        MaskedInputEditText maskedInputEditText = (MaskedInputEditText) ViewBindings.findChildViewById(view, R.id.et_field);
        if (maskedInputEditText != null) {
            i = R.id.til_field;
            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_field);
            if (textInputLayout != null) {
                i = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView != null) {
                    return new ItemPersonalDataFormTextFieldBinding((ConstraintLayout) view, maskedInputEditText, textInputLayout, textView);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemPersonalDataFormTextFieldBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_personal_data_form_text_field, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemPersonalDataFormTextFieldBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
