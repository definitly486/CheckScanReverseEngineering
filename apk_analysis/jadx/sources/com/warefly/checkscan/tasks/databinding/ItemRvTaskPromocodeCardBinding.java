package com.warefly.checkscan.tasks.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvTaskPromocodeCardBinding implements ViewBinding {
    public final Space bottomSpacer;
    public final ImageView btnArrow;
    public final View fadeBackground;
    public final ImageView ivLogo;
    private final MaterialCardView rootView;
    public final RecyclerView rvBadges;
    public final TextView tvSubtitle;
    public final TextView tvTitle;

    private ItemRvTaskPromocodeCardBinding(MaterialCardView materialCardView, Space space, ImageView imageView, View view, ImageView imageView2, RecyclerView recyclerView, TextView textView, TextView textView2) {
        this.rootView = materialCardView;
        this.bottomSpacer = space;
        this.btnArrow = imageView;
        this.fadeBackground = view;
        this.ivLogo = imageView2;
        this.rvBadges = recyclerView;
        this.tvSubtitle = textView;
        this.tvTitle = textView2;
    }

    public static ItemRvTaskPromocodeCardBinding bind(View view) {
        int i = R.id.bottom_spacer;
        Space space = (Space) ViewBindings.findChildViewById(view, R.id.bottom_spacer);
        if (space != null) {
            i = R.id.btn_arrow;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_arrow);
            if (imageView != null) {
                i = R.id.fade_background;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.fade_background);
                if (viewFindChildViewById != null) {
                    i = R.id.iv_logo;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                    if (imageView2 != null) {
                        i = R.id.rv_badges;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_badges);
                        if (recyclerView != null) {
                            i = R.id.tv_subtitle;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                            if (textView != null) {
                                i = R.id.tv_title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView2 != null) {
                                    return new ItemRvTaskPromocodeCardBinding((MaterialCardView) view, space, imageView, viewFindChildViewById, imageView2, recyclerView, textView, textView2);
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

    public static ItemRvTaskPromocodeCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_task_promocode_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvTaskPromocodeCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
