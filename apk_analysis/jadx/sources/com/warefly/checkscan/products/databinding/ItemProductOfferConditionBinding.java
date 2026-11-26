package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemProductOfferConditionBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvCondition;

    private ItemProductOfferConditionBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.tvCondition = textView2;
    }

    public static ItemProductOfferConditionBinding bind(View view) {
        if (view != null) {
            TextView textView = (TextView) view;
            return new ItemProductOfferConditionBinding(textView, textView);
        }
        o2.d("rootView");
        return null;
    }

    public static ItemProductOfferConditionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_product_offer_condition, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemProductOfferConditionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
