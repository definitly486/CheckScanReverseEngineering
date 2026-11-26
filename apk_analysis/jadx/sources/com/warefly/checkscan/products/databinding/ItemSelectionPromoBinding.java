package com.warefly.checkscan.products.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemSelectionPromoBinding implements ViewBinding {
    public final TextView btnAll;
    public final ImageView btnCollapse;
    public final Group groupCollapse;
    public final ImageView ivBackground;
    public final ImageView ivPromoIcon;
    public final ImageView ivShopLogo;
    private final FrameLayout rootView;
    public final RecyclerView rvProducts;
    public final Barrier titleBarrier;
    public final TextView tvTitle;

    private ItemSelectionPromoBinding(FrameLayout frameLayout, TextView textView, ImageView imageView, Group group, ImageView imageView2, ImageView imageView3, ImageView imageView4, RecyclerView recyclerView, Barrier barrier, TextView textView2) {
        this.rootView = frameLayout;
        this.btnAll = textView;
        this.btnCollapse = imageView;
        this.groupCollapse = group;
        this.ivBackground = imageView2;
        this.ivPromoIcon = imageView3;
        this.ivShopLogo = imageView4;
        this.rvProducts = recyclerView;
        this.titleBarrier = barrier;
        this.tvTitle = textView2;
    }

    public static ItemSelectionPromoBinding bind(View view) {
        int i = R.id.btn_all;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_all);
        if (textView != null) {
            i = R.id.btn_collapse;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_collapse);
            if (imageView != null) {
                i = R.id.group_collapse;
                Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_collapse);
                if (group != null) {
                    i = R.id.iv_background;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_background);
                    if (imageView2 != null) {
                        i = R.id.iv_promo_icon;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_promo_icon);
                        if (imageView3 != null) {
                            i = R.id.iv_shop_logo;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_shop_logo);
                            if (imageView4 != null) {
                                i = R.id.rv_products;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_products);
                                if (recyclerView != null) {
                                    i = R.id.title_barrier;
                                    Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.title_barrier);
                                    if (barrier != null) {
                                        i = R.id.tv_title;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                        if (textView2 != null) {
                                            return new ItemSelectionPromoBinding((FrameLayout) view, textView, imageView, group, imageView2, imageView3, imageView4, recyclerView, barrier, textView2);
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

    public static ItemSelectionPromoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_selection_promo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemSelectionPromoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
