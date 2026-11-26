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
public final class ItemButtonOfferBinding implements ViewBinding {
    public final TextView btnOrderPromocode;
    private final ConstraintLayout rootView;

    private ItemButtonOfferBinding(ConstraintLayout constraintLayout, TextView textView) {
        this.rootView = constraintLayout;
        this.btnOrderPromocode = textView;
    }

    public static ItemButtonOfferBinding bind(View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_order_promocode);
        if (textView != null) {
            return new ItemButtonOfferBinding((ConstraintLayout) view, textView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.btn_order_promocode)));
        return null;
    }

    public static ItemButtonOfferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_button_offer, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemButtonOfferBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
