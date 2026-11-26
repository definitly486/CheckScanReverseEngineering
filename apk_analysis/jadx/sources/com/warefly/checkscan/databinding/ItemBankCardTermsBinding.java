package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemBankCardTermsBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final TextView tvCardTermText;
    public final TextView tvCardTermTitle;

    private ItemBankCardTermsBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.tvCardTermText = textView;
        this.tvCardTermTitle = textView2;
    }

    public static ItemBankCardTermsBinding bind(View view) {
        int i = R.id.tv_card_term_text;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_term_text);
        if (textView != null) {
            i = R.id.tv_card_term_title;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_card_term_title);
            if (textView2 != null) {
                return new ItemBankCardTermsBinding((ConstraintLayout) view, textView, textView2);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemBankCardTermsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_bank_card_terms, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemBankCardTermsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
