package com.warefly.checkscan.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvProfilePromocodeBinding implements ViewBinding {
    public final TextView btnActivate;
    public final TextInputEditText etField;
    private final MaterialCardView rootView;
    public final TextInputLayout tilField;
    public final TextView tvTitle;

    private ItemRvProfilePromocodeBinding(MaterialCardView materialCardView, TextView textView, TextInputEditText textInputEditText, TextInputLayout textInputLayout, TextView textView2) {
        this.rootView = materialCardView;
        this.btnActivate = textView;
        this.etField = textInputEditText;
        this.tilField = textInputLayout;
        this.tvTitle = textView2;
    }

    public static ItemRvProfilePromocodeBinding bind(View view) {
        int i = R.id.btn_activate;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_activate);
        if (textView != null) {
            i = R.id.et_field;
            TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_field);
            if (textInputEditText != null) {
                i = R.id.til_field;
                TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_field);
                if (textInputLayout != null) {
                    i = R.id.tv_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView2 != null) {
                        return new ItemRvProfilePromocodeBinding((MaterialCardView) view, textView, textInputEditText, textInputLayout, textView2);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvProfilePromocodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_profile_promocode, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvProfilePromocodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
