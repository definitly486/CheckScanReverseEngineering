package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogWithdrawalCardsBinding implements ViewBinding {
    public final ImageView ivIndicator;
    private final ConstraintLayout rootView;
    public final RecyclerView rvCards;

    private DialogWithdrawalCardsBinding(ConstraintLayout constraintLayout, ImageView imageView, RecyclerView recyclerView) {
        this.rootView = constraintLayout;
        this.ivIndicator = imageView;
        this.rvCards = recyclerView;
    }

    public static DialogWithdrawalCardsBinding bind(View view) {
        int i = R.id.iv_indicator;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
        if (imageView != null) {
            i = R.id.rv_cards;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_cards);
            if (recyclerView != null) {
                return new DialogWithdrawalCardsBinding((ConstraintLayout) view, imageView, recyclerView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogWithdrawalCardsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_withdrawal_cards, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogWithdrawalCardsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
