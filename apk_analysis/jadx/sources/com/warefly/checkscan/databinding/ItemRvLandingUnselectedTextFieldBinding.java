package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvLandingUnselectedTextFieldBinding implements ViewBinding {
    public final TextInputEditText etText;
    private final FrameLayout rootView;
    public final TextInputLayout tlText;

    private ItemRvLandingUnselectedTextFieldBinding(FrameLayout frameLayout, TextInputEditText textInputEditText, TextInputLayout textInputLayout) {
        this.rootView = frameLayout;
        this.etText = textInputEditText;
        this.tlText = textInputLayout;
    }

    public static ItemRvLandingUnselectedTextFieldBinding bind(View view) {
        int i = R.id.et_text;
        TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_text);
        if (textInputEditText != null) {
            i = R.id.tl_text;
            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.tl_text);
            if (textInputLayout != null) {
                return new ItemRvLandingUnselectedTextFieldBinding((FrameLayout) view, textInputEditText, textInputLayout);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvLandingUnselectedTextFieldBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_landing_unselected_text_field, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemRvLandingUnselectedTextFieldBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
