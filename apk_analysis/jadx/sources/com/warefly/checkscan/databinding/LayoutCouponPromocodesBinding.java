package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutCouponPromocodesBinding implements ViewBinding {
    public final ImageView ivIcWithdrawMetro;
    private final CardView rootView;
    public final TextView tvWithdrawShop;

    private LayoutCouponPromocodesBinding(CardView cardView, ImageView imageView, TextView textView) {
        this.rootView = cardView;
        this.ivIcWithdrawMetro = imageView;
        this.tvWithdrawShop = textView;
    }

    public static LayoutCouponPromocodesBinding bind(View view) {
        int i = R.id.iv_ic_withdraw_metro;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_ic_withdraw_metro);
        if (imageView != null) {
            i = R.id.tv_withdraw_shop;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_withdraw_shop);
            if (textView != null) {
                return new LayoutCouponPromocodesBinding((CardView) view, imageView, textView);
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static LayoutCouponPromocodesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_coupon_promocodes, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static LayoutCouponPromocodesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
