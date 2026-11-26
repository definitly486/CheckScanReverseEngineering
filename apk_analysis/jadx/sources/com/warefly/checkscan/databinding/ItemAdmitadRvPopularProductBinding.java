package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemAdmitadRvPopularProductBinding implements ViewBinding {
    public final TextView btnAdult;
    public final TextView btnCashback;
    public final TextView btnOrder;
    public final ImageView ivProduct;
    public final ImageView ivShop;
    public final FrameLayout layoutProduct;
    private final ConstraintLayout rootView;
    public final TextView tvCostWithDiscount;
    public final TextView tvDiscount;
    public final TextView tvExpiration;
    public final TextView tvOldPrice;
    public final TextView tvProductName;

    private ItemAdmitadRvPopularProductBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, ImageView imageView, ImageView imageView2, FrameLayout frameLayout, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.btnAdult = textView;
        this.btnCashback = textView2;
        this.btnOrder = textView3;
        this.ivProduct = imageView;
        this.ivShop = imageView2;
        this.layoutProduct = frameLayout;
        this.tvCostWithDiscount = textView4;
        this.tvDiscount = textView5;
        this.tvExpiration = textView6;
        this.tvOldPrice = textView7;
        this.tvProductName = textView8;
    }

    public static ItemAdmitadRvPopularProductBinding bind(View view) {
        int i = R.id.btn_adult;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_adult);
        if (textView != null) {
            i = R.id.btn_cashback;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_cashback);
            if (textView2 != null) {
                i = R.id.btn_order;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_order);
                if (textView3 != null) {
                    i = R.id.iv_product;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_product);
                    if (imageView != null) {
                        i = R.id.iv_shop;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_shop);
                        if (imageView2 != null) {
                            i = R.id.layout_product;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.layout_product);
                            if (frameLayout != null) {
                                i = R.id.tv_cost_with_discount;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cost_with_discount);
                                if (textView4 != null) {
                                    i = R.id.tv_discount;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_discount);
                                    if (textView5 != null) {
                                        i = R.id.tv_expiration;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_expiration);
                                        if (textView6 != null) {
                                            i = R.id.tv_old_price;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_old_price);
                                            if (textView7 != null) {
                                                i = R.id.tv_product_name;
                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_product_name);
                                                if (textView8 != null) {
                                                    return new ItemAdmitadRvPopularProductBinding((ConstraintLayout) view, textView, textView2, textView3, imageView, imageView2, frameLayout, textView4, textView5, textView6, textView7, textView8);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemAdmitadRvPopularProductBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_admitad_rv_popular_product, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemAdmitadRvPopularProductBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
