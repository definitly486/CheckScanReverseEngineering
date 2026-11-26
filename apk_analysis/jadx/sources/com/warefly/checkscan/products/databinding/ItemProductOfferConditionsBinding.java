package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemProductOfferConditionsBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final RecyclerView rvConditions;
    public final TextView tvTitle;

    private ItemProductOfferConditionsBinding(LinearLayout linearLayout, RecyclerView recyclerView, TextView textView) {
        this.rootView = linearLayout;
        this.rvConditions = recyclerView;
        this.tvTitle = textView;
    }

    public static ItemProductOfferConditionsBinding bind(View view) {
        int i = R.id.rv_conditions;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_conditions);
        if (recyclerView != null) {
            i = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView != null) {
                return new ItemProductOfferConditionsBinding((LinearLayout) view, recyclerView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemProductOfferConditionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_product_offer_conditions, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemProductOfferConditionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
