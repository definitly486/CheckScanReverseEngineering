package com.warefly.checkscan.bankLanding.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class ItemRvBankBenefitsBinding implements ViewBinding {
    private final MaterialCardView rootView;
    public final RecyclerView rvBenefits;
    public final TextView tvTitle;

    private ItemRvBankBenefitsBinding(MaterialCardView materialCardView, RecyclerView recyclerView, TextView textView) {
        this.rootView = materialCardView;
        this.rvBenefits = recyclerView;
        this.tvTitle = textView;
    }

    public static ItemRvBankBenefitsBinding bind(View view) {
        int i = R.id.rv_benefits;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_benefits);
        if (recyclerView != null) {
            i = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView != null) {
                return new ItemRvBankBenefitsBinding((MaterialCardView) view, recyclerView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvBankBenefitsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_bank_benefits, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvBankBenefitsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
