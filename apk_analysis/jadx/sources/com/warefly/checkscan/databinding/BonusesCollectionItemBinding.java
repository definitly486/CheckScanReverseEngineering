package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusesCollectionItemBinding implements ViewBinding {
    public final Barrier barrier;
    public final TextView btnCheckMore;
    public final ImageView ivLogo;
    private final MaterialCardView rootView;
    public final RecyclerView rvShopCollection;
    public final TextView tvTitle;
    public final View viewTitleBackground;

    private BonusesCollectionItemBinding(MaterialCardView materialCardView, Barrier barrier, TextView textView, ImageView imageView, RecyclerView recyclerView, TextView textView2, View view) {
        this.rootView = materialCardView;
        this.barrier = barrier;
        this.btnCheckMore = textView;
        this.ivLogo = imageView;
        this.rvShopCollection = recyclerView;
        this.tvTitle = textView2;
        this.viewTitleBackground = view;
    }

    public static BonusesCollectionItemBinding bind(View view) {
        int i = R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier);
        if (barrier != null) {
            i = R.id.btn_check_more;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_check_more);
            if (textView != null) {
                i = R.id.iv_logo;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                if (imageView != null) {
                    i = R.id.rv_shop_collection;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_shop_collection);
                    if (recyclerView != null) {
                        i = R.id.tv_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView2 != null) {
                            i = R.id.view_title_background;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.view_title_background);
                            if (viewFindChildViewById != null) {
                                return new BonusesCollectionItemBinding((MaterialCardView) view, barrier, textView, imageView, recyclerView, textView2, viewFindChildViewById);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static BonusesCollectionItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.bonuses_collection_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static BonusesCollectionItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
