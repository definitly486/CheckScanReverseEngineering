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
public final class PlaceholderProductOfPlaceRowBinding implements ViewBinding {
    public final TextView costOfGoods;
    private final LinearLayout rootView;

    private PlaceholderProductOfPlaceRowBinding(LinearLayout linearLayout, TextView textView) {
        this.rootView = linearLayout;
        this.costOfGoods = textView;
    }

    public static PlaceholderProductOfPlaceRowBinding bind(View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cost_of_goods);
        if (textView != null) {
            return new PlaceholderProductOfPlaceRowBinding((LinearLayout) view, textView);
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.cost_of_goods)));
        return null;
    }

    public static PlaceholderProductOfPlaceRowBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.placeholder_product_of_place_row, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static PlaceholderProductOfPlaceRowBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
