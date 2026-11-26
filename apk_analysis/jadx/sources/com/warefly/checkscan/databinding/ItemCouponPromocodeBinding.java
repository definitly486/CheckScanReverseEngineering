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
public final class ItemCouponPromocodeBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView tvPromocode;
    public final TextView tvPromocodeTitle;

    private ItemCouponPromocodeBinding(LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.tvPromocode = textView;
        this.tvPromocodeTitle = textView2;
    }

    public static ItemCouponPromocodeBinding bind(View view) {
        int i = R.id.tv_promocode;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_promocode);
        if (textView != null) {
            i = R.id.tv_promocode_title;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_promocode_title);
            if (textView2 != null) {
                return new ItemCouponPromocodeBinding((LinearLayout) view, textView, textView2);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemCouponPromocodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_coupon_promocode, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemCouponPromocodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
