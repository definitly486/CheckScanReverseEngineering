package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSelectionShopBinding implements ViewBinding {
    public final TextView btnAll;
    public final ImageView btnCollapse;
    public final Group groupCollapse;
    public final ImageView ivShopLogo;
    private final MaterialCardView rootView;
    public final RecyclerView rvProducts;
    public final Barrier titleBarrier;
    public final TextView tvTitle;

    private ItemSelectionShopBinding(MaterialCardView materialCardView, TextView textView, ImageView imageView, Group group, ImageView imageView2, RecyclerView recyclerView, Barrier barrier, TextView textView2) {
        this.rootView = materialCardView;
        this.btnAll = textView;
        this.btnCollapse = imageView;
        this.groupCollapse = group;
        this.ivShopLogo = imageView2;
        this.rvProducts = recyclerView;
        this.titleBarrier = barrier;
        this.tvTitle = textView2;
    }

    public static ItemSelectionShopBinding bind(View view) {
        int i = R.id.btn_all;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_all);
        if (textView != null) {
            i = R.id.btn_collapse;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_collapse);
            if (imageView != null) {
                i = R.id.group_collapse;
                Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_collapse);
                if (group != null) {
                    i = R.id.iv_shop_logo;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_shop_logo);
                    if (imageView2 != null) {
                        i = R.id.rv_products;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_products);
                        if (recyclerView != null) {
                            i = R.id.title_barrier;
                            Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.title_barrier);
                            if (barrier != null) {
                                i = R.id.tv_title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView2 != null) {
                                    return new ItemSelectionShopBinding((MaterialCardView) view, textView, imageView, group, imageView2, recyclerView, barrier, textView2);
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

    public static ItemSelectionShopBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_selection_shop, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemSelectionShopBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
