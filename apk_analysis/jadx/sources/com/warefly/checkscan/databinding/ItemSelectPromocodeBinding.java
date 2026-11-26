package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSelectPromocodeBinding implements ViewBinding {
    public final ImageView divider;
    public final ImageView ivShop;
    private final ConstraintLayout rootView;
    public final TextView tvCategory;
    public final TextView tvDiscount;
    public final TextView tvExpiration;
    public final TextView tvShopName;
    public final TextView tvSubcategory;

    private ItemSelectPromocodeBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.divider = imageView;
        this.ivShop = imageView2;
        this.tvCategory = textView;
        this.tvDiscount = textView2;
        this.tvExpiration = textView3;
        this.tvShopName = textView4;
        this.tvSubcategory = textView5;
    }

    public static ItemSelectPromocodeBinding bind(View view) {
        int i = R.id.divider;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.divider);
        if (imageView != null) {
            i = R.id.iv_shop;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_shop);
            if (imageView2 != null) {
                i = R.id.tv_category;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_category);
                if (textView != null) {
                    i = R.id.tv_discount;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_discount);
                    if (textView2 != null) {
                        i = R.id.tv_expiration;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_expiration);
                        if (textView3 != null) {
                            i = R.id.tv_shop_name;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_shop_name);
                            if (textView4 != null) {
                                i = R.id.tv_subcategory;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subcategory);
                                if (textView5 != null) {
                                    return new ItemSelectPromocodeBinding((ConstraintLayout) view, imageView, imageView2, textView, textView2, textView3, textView4, textView5);
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

    public static ItemSelectPromocodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_select_promocode, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemSelectPromocodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
