package com.warefly.checkscan.databinding;

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
public final class BalanceBankCardsLayoutBinding implements ViewBinding {
    private final MaterialCardView rootView;
    public final RecyclerView rvUserCards;
    public final TextView tvHeaderUserCards;

    private BalanceBankCardsLayoutBinding(MaterialCardView materialCardView, RecyclerView recyclerView, TextView textView) {
        this.rootView = materialCardView;
        this.rvUserCards = recyclerView;
        this.tvHeaderUserCards = textView;
    }

    public static BalanceBankCardsLayoutBinding bind(View view) {
        int i = R.id.rv_user_cards;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_user_cards);
        if (recyclerView != null) {
            i = R.id.tv_header_user_cards;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_header_user_cards);
            if (textView != null) {
                return new BalanceBankCardsLayoutBinding((MaterialCardView) view, recyclerView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static BalanceBankCardsLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.balance_bank_cards_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static BalanceBankCardsLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
