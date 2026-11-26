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
public final class ProductInfoLayoutBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final TextView tvDatetime;
    public final TextView tvPrice;
    public final TextView tvProductName;
    public final TextView tvShopPlaceAddress;

    private ProductInfoLayoutBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.tvDatetime = textView;
        this.tvPrice = textView2;
        this.tvProductName = textView3;
        this.tvShopPlaceAddress = textView4;
    }

    public static ProductInfoLayoutBinding bind(View view) {
        int i = R.id.tv_datetime;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_datetime);
        if (textView != null) {
            i = R.id.tv_price;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_price);
            if (textView2 != null) {
                i = R.id.tv_product_name;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_product_name);
                if (textView3 != null) {
                    i = R.id.tv_shop_place_address;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_shop_place_address);
                    if (textView4 != null) {
                        return new ProductInfoLayoutBinding((ConstraintLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ProductInfoLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.product_info_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ProductInfoLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
