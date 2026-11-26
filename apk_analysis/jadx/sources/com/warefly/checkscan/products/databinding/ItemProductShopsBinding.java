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
public final class ItemProductShopsBinding implements ViewBinding {
    public final TextView btnCollapse;
    private final LinearLayout rootView;
    public final RecyclerView rvShops;
    public final TextView tvTitle;

    private ItemProductShopsBinding(LinearLayout linearLayout, TextView textView, RecyclerView recyclerView, TextView textView2) {
        this.rootView = linearLayout;
        this.btnCollapse = textView;
        this.rvShops = recyclerView;
        this.tvTitle = textView2;
    }

    public static ItemProductShopsBinding bind(View view) {
        int i = R.id.btn_collapse;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_collapse);
        if (textView != null) {
            i = R.id.rv_shops;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_shops);
            if (recyclerView != null) {
                i = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView2 != null) {
                    return new ItemProductShopsBinding((LinearLayout) view, textView, recyclerView, textView2);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemProductShopsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_product_shops, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemProductShopsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
