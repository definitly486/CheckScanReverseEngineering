package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvLoanPromoConditionBinding implements ViewBinding {
    private final MaterialCardView rootView;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ItemRvLoanPromoConditionBinding(MaterialCardView materialCardView, TextView textView, TextView textView2) {
        this.rootView = materialCardView;
        this.tvDescription = textView;
        this.tvTitle = textView2;
    }

    public static ItemRvLoanPromoConditionBinding bind(View view) {
        int i = R.id.tv_description;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
        if (textView != null) {
            i = R.id.tv_title;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView2 != null) {
                return new ItemRvLoanPromoConditionBinding((MaterialCardView) view, textView, textView2);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvLoanPromoConditionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_loan_promo_condition, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvLoanPromoConditionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
