package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class RecyclerViewProductNearbyRowBinding implements ViewBinding {
    public final TextView productAddedDate;
    private final LinearLayout rootView;
    public final TextView suggestedProductName;
    public final TextView suggestedProductPrice;
    public final TextView suggestedProductShopAddress;

    private RecyclerViewProductNearbyRowBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.productAddedDate = textView;
        this.suggestedProductName = textView2;
        this.suggestedProductPrice = textView3;
        this.suggestedProductShopAddress = textView4;
    }

    public static RecyclerViewProductNearbyRowBinding bind(View view) {
        int i = R.id.product_added_date;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.product_added_date);
        if (textView != null) {
            i = R.id.suggested_product_name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.suggested_product_name);
            if (textView2 != null) {
                i = R.id.suggested_product_price;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.suggested_product_price);
                if (textView3 != null) {
                    i = R.id.suggested_product_shop_address;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.suggested_product_shop_address);
                    if (textView4 != null) {
                        return new RecyclerViewProductNearbyRowBinding((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static RecyclerViewProductNearbyRowBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.recycler_view_product_nearby_row, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static RecyclerViewProductNearbyRowBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
