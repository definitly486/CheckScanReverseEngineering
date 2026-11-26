package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSelectionBinding implements ViewBinding {
    public final TextView btnAll;
    public final ImageView btnCollapse;
    public final Group groupCollapse;
    public final LinearLayout header;
    public final ImageView ivShopLogo;
    private final FrameLayout rootView;
    public final RecyclerView rvProducts;
    public final TextView tvTitle;

    private ItemSelectionBinding(FrameLayout frameLayout, TextView textView, ImageView imageView, Group group, LinearLayout linearLayout, ImageView imageView2, RecyclerView recyclerView, TextView textView2) {
        this.rootView = frameLayout;
        this.btnAll = textView;
        this.btnCollapse = imageView;
        this.groupCollapse = group;
        this.header = linearLayout;
        this.ivShopLogo = imageView2;
        this.rvProducts = recyclerView;
        this.tvTitle = textView2;
    }

    public static ItemSelectionBinding bind(View view) {
        int i = R.id.btn_all;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_all);
        if (textView != null) {
            i = R.id.btn_collapse;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_collapse);
            if (imageView != null) {
                i = R.id.group_collapse;
                Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_collapse);
                if (group != null) {
                    i = R.id.header;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.header);
                    if (linearLayout != null) {
                        i = R.id.iv_shop_logo;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_shop_logo);
                        if (imageView2 != null) {
                            i = R.id.rv_products;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_products);
                            if (recyclerView != null) {
                                i = R.id.tv_title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView2 != null) {
                                    return new ItemSelectionBinding((FrameLayout) view, textView, imageView, group, linearLayout, imageView2, recyclerView, textView2);
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

    public static ItemSelectionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_selection, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemSelectionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
